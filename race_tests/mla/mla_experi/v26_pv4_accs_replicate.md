# v26 PV4 兼容与 acc_s layout 修复

## 1. 上版本遗留问题

v23 已经证明 PV-only microkernel 中 `pv_block_col_warps=4` 是正确且更快的：

- PV-only 2x2：4096 blocks 下约 `0.337586 ms`
- PV-only 4x2：4096 blocks 下约 `0.269190 ms`
- PV-only 提升约 `25.42%`

但直接把 PV4 合进完整 `main_split` 会出现 correctness fail，典型现象是输出后半列从 `col >= 256` 开始出现 `NaN`，并且 mismatch 约 75%。这说明 PV4 单独成立，但完整 MLA split kernel 内存在 layout / thread-domain 冲突。

这次是一个大版本更新，原因不是单纯改了一个参数，而是把 split kernel 的执行模型从 `128 threads / PV2` 推进到了 `256 threads / PV4`。这个变化同时影响：

- QK content MMA 的 score fragment layout；
- RoPE QK 的计算方式；
- online softmax 对 `acc_s` 的 `reduce_max / exp / reduce_sum`；
- `acc_s -> S_shared -> acc_s_cast` 的跨 layout 中转；
- PV MMA 的列方向线程覆盖；
- `acc_o` 的 store layout 和最终写回。

所以本版本的核心价值有两层：

1. 性能上，PV4 合入后长 ctx case 明显提速。
2. 工程上，找到了 256-thread split kernel 和 128-thread QK score fragment 之间的真正兼容方式。

## 2. 问题原因分析

本轮做了几个隔离实验：

| 实验 | 结果 | 结论 |
|---|---|---|
| PV4 + 常数 `acc_s_cast` | PASS | PV4 accumulator、store、combine 本身可用 |
| PV4 + `S_shared -> acc_s_cast` 常数桥 | PASS | PV A-fragment load layout 可用 |
| PV4 + `acc_s -> S_shared -> acc_s_cast` 常数桥 | PASS | QK score fragment 导出到 shared 的桥本身可用 |
| `threads=256 + PV2` | FAIL | 只把 CTA 线程数扩到 256 就会破坏原 128-thread score fragment 语义 |
| `threads=256 + PV2 + acc_s.replicate(2)` | PASS | 根因是 `acc_s` layout 没有显式覆盖 256-thread CTA |
| `threads=256 + PV4 + acc_s.replicate(2)` | PASS | PV4 full MLA 兼容成立 |

已验证结论：

- 原 QK score fragment `acc_s` 的 layout 来自 `qk_mma.make_mma_store_layout(acc_s)`，其自然线程域是 128 threads。
- split kernel 改成 256 threads 后，如果不扩展 `acc_s` layout，后 128 threads 会以不被 layout inference 正确认知的方式参与后续 `reduce_max / exp / reduce_sum / copy`。
- `acc_s.replicate(2)` 让 QK score fragment 的 thread layout 显式覆盖完整 256-thread CTA，消除了 correctness 问题。

当前推测：

- 之前 `col >= 256` 出 NaN，并不是 PV4 store layout 本身错误，而是上游 `acc_s` / softmax 状态在 256-thread CTA 中已经被破坏，PV4 后半列更容易暴露这个错误。

## 2.1 完整排查过程

### 第一步：确认 PV4 本身是否正确

最开始的现象是：PV-only microkernel 里 `pv_block_col_warps=4` 可以 PASS，并且比 `2x2` 快；但是完整 MLA split kernel 中一合入就 fail。因此首先要区分：

- 是 PV4 MMA mapping 本身错；
- 还是 PV4 放进完整 kernel 后和其他阶段冲突。

为此做了常数 S 的 PV4 full-kernel 隔离实验：

```text
跳过 QK / softmax
直接令 acc_s_cast = 1
PV4 做 P @ V
reference 改成 KV cache 均值
```

结果 PASS。这个实验说明：

- PV4 的 `pv_mma.ldmatrix_b(...)` 和 `pv_mma.mma(...)` 可以在完整 split kernel 里工作；
- `acc_o -> O_shared -> Output_partial -> combine` 路径没有根本错误；
- 后半列 `col >= 256` 的 NaN 不是 PV4 store layout 天生写不到。

### 第二步：确认 shared bridge 是否正确

接着测试：

```text
S_shared = 1
T.copy(S_shared, acc_s_cast)
PV4
```

结果 PASS。这说明 `S_shared -> acc_s_cast` 这个 bridge 没问题，PV4 的 A-fragment load layout 是可用的。

再进一步测试：

```text
acc_s = 1
T.copy(acc_s, S_shared)
T.copy(S_shared, acc_s_cast)
PV4
```

结果也 PASS。这说明 QK score fragment 导出到 shared 的桥本身也不是根因。也就是说，不是 `T.copy(acc_s, S_shared)` 或 `T.copy(S_shared, acc_s_cast)` 这种中转写法导致错误。

### 第三步：排除 RoPE 手写 MMA

为了在 256-thread kernel 里避免 `T.gemm(Q_pe_shared, K_pe_shared, ...)` 的不确定性，候选版本把 RoPE QK 也改成了手写 `qk_pe_mma`。这一步本身可能引入新错误，所以专门做了隔离：

```text
threads=128
PV2
QK content 手写
QK RoPE 手写
```

结果 PASS。这说明 `qk_pe_mma` 的数学结果是对的，RoPE 手写不是 correctness fail 的根因。

### 第四步：确认 256 threads 本身是否破坏原路径

之后做了关键实验：

```text
threads=256
PV 仍然保持 2x
QK content 手写
QK RoPE 手写
不启用 PV4
```

结果 FAIL，mismatch 约 50%。

这个实验非常关键，因为它说明：

- 即使不启用 PV4；
- 只要把 split kernel 从 128 threads 改成 256 threads；
- 原来的 `acc_s` / softmax 路径就已经不正确。

因此前面看到的 PV4 后半列 NaN，只是 256-thread CTA 破坏 score fragment 后被 PV4 放大暴露，并不是 PV4 独立错误。

### 第五步：验证 `acc_s.replicate(2)`

观察 TileLang 的 `Fragment` API 后，发现 fragment layout 支持：

```python
replicate(...)
```

于是做了最小修复实验：

```python
acc_s: qk_mma.make_mma_store_layout(acc_s).replicate(2)
```

并保持：

```text
threads=256
PV2
```

结果 PASS。

这个结果直接定位根因：`acc_s` 的自然 layout 是 128-thread 的 QK MMA store layout，放在 256-thread CTA 里需要显式复制线程域。否则后 128 个线程在后续 `reduce_max / exp / reduce_sum / copy` 中参与了一个没有被正确 layout 描述的 fragment。

最后把同样修法放回：

```text
threads=256
PV4
qk_pe_mma
acc_s.replicate(2)
```

结果最小 case PASS，采样 case PASS，全量 31 case PASS。

## 2.2 中途遇到的问题和解决方式

### 问题 1：PV4 直接合入后后半列 NaN

现象：

```text
First mismatch at index [0, 0, 256]
lhs = nan
```

最初判断：

- `col=256` 正好是 `dim=512` 的后半段起点；
- PV4 需要 `64 * 4 = 256 threads`；
- 原 kernel 只有 `threads=128`，确实只够覆盖前半列。

解决尝试：

- 把 split kernel 从 `threads=128` 改成 `threads=256`。

结果：

- 可以解决线程覆盖问题，但引入新的 correctness fail。

结论：

- `threads=256` 是 PV4 的必要条件，但不是充分条件。

### 问题 2：完整 kernel 里 `T.gemm` 和手写 MMA 混用风险

原始 split 路径里：

```python
T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)
```

QK content 已经是手写 MMA，但 RoPE QK 仍然是 `T.gemm`。在 256-thread + PV4 的结构里，这会让一个 kernel 同时包含：

- 手写 QK content MMA；
- TileLang 自动 `T.gemm` RoPE；
- 手写 PV4 MMA。

这个组合很难判断 layout 交互，因此本版本把 RoPE QK 也改成 `qk_pe_mma`。

验证：

- `threads=128 + PV2 + qk_pe_mma` PASS。

结论：

- RoPE 手写是安全改动，减少了后续问题定位的不确定性。

### 问题 3：尝试用 guard 把前 128 线程和后 128 线程隔离

尝试过：

```python
if T.get_thread_binding() < 128:
    QK + softmax
T.sync_threads()
PV4
```

也尝试过：

- QK 分支后加 `T.sync_threads()`；
- softmax 结果写到 `S_shared`；
- `scores_scale / logsum` 写到 shared，再让 256 threads 读 shared；
- 第一轮跳过 `acc_o *= scores_scale`，避免 `0 * uninit -> NaN`。

结果：

- 仍然 FAIL，典型还是 `col >= 256` NaN 或 mismatch。

原因分析：

- 这个方向把问题当成 CUDA 层面的 warp 分工问题来处理，但 TileLang 的核心约束是 fragment layout。
- 即使 runtime guard 看起来让后 128 threads 不参与 QK，layout inference 仍然需要一个完整、一致的 fragment 线程域。
- 只靠 `if tx < 128` 无法改变 `acc_s` 的 layout 描述。

结论：

- 不能靠 runtime guard 修 fragment layout 问题。
- 必须在 layout 层面修，也就是 `replicate(2)`。

### 问题 4：尝试把 softmax 放到 shared 上

另一个思路是：

```text
QK MMA -> acc_s
T.copy(acc_s, S_shared)
在 S_shared 上做 reduce_max / exp / reduce_sum
T.copy(S_shared, acc_s_cast)
PV4
```

结果：

```text
LayoutInference: no available layout found
```

原因分析：

- 这个写法虽然在 CUDA 思维里清晰，但 TileLang 对 shared 上二维 softmax 的 layout 推导不一定能接受。
- 它会增加 shared 上的读写和 reduce 推导复杂度，并且不一定比 fragment softmax 更快。

结论：

- shared-softmax 不是当前最小可行修法。
- 保留 fragment softmax，只修 fragment layout，是更稳的路线。

### 问题 5：环境变量导致 reference 程序报错

单独跑 case5 时，曾出现：

```text
TypeError: expected str, bytes or os.PathLike object, not NoneType
```

栈在 `einops -> torch._dynamo -> triton -> metax driver`，不是 kernel 错误。

原因：

- 手动单 case 命令少了 `MACA_PATH=/opt/maca`。
- reference 端导入 torch dynamo / triton 时需要 MACA 环境变量。

解决：

```bash
export MACA_PATH=/opt/maca
export MACA_CLANG_PATH=/opt/maca/mxgpu_llvm/bin
export LD_LIBRARY_PATH=/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib:${LD_LIBRARY_PATH:-}
```

之后同一 case 正常 PASS。

结论：

- 这不是 correctness 问题，是手动 benchmark 命令环境不完整。
- 后续单 case 跑法必须带完整 MACA 环境，或者直接使用 `run.sh`。

## 3. 本版本解决方案

核心改动：

1. split kernel 从 `threads=128` 改为 `threads=256`。
2. PV MMA 从 `pv_block_col_warps=2` 改为 `pv_block_col_warps=4`。
3. RoPE QK 从 `T.gemm(Q_pe_shared, K_pe_shared, ...)` 改成手写 `qk_pe_mma`，避免 256-thread + PV4 混合路径里继续依赖 `T.gemm`。
4. 对 `acc_s` 使用：

```python
acc_s: qk_mma.make_mma_store_layout(acc_s).replicate(2)
```

这个改动是本版本 correctness fix 的关键。

为什么不是只加同步：

- `T.sync_threads()` 只能保证 shared memory producer / consumer 的时序；
- 它不能改变 fragment 的 thread layout；
- 本问题的根因是 `acc_s` 的 fragment layout 只有 128-thread 语义，放进 256-thread CTA 后 layout 不完整；
- 因此同步只能辅助 shared bridge，不能修根因。

为什么不是只用 `if tx < 128`：

- guard 是 runtime 控制流；
- `acc_s` layout 是 compile-time layout inference 的对象；
- 如果 layout 描述没有覆盖完整 CTA，后续 reduce/copy 仍可能在不合法的 layout 假设下生成代码；
- 所以必须用 `.replicate(2)` 在 layout 层明确告诉 TileLang：这个 fragment 在 256-thread CTA 中有两个复制域。

## 4. 具体落地策略

修改文件：

- `race_tests/mla/test_tilelang_mla.py`

修改位置：

- `flashattn(...)::main_split`

具体实现：

- 新增 `qk_pe_mma = TensorCoreIntrinEmitter(...)`，参数与 QK content 的 MMA 一致，但 `chunk=pe_dim`。
- split kernel launch 改为：

```python
with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=256)
```

- PV mapping 改为：

```python
pv_block_col_warps = 4
```

- RoPE QK 改为手写 MMA loop：

```python
for ki in T.serial(0, pe_dim // (qk_micro_size_k * qk_k_pack)):
    qk_pe_mma.ldmatrix_a(qk_pe_a_local, Q_pe_shared, ki)
    qk_pe_mma.ldmatrix_b(qk_pe_b_local, K_pe_shared, ki)
    qk_pe_mma.mma(qk_pe_a_local, qk_pe_b_local, acc_s, ki)
```

- QK score accumulator layout 改为 `.replicate(2)`。
- `acc_s -> S_shared -> acc_s_cast` 之间保留 `T.sync_threads()`，让 shared bridge 更明确。

最终代码路径的数据流：

```text
Q_shared, KV_shared
    -> qk_mma
    -> acc_s(replicate(2))

Q_pe_shared, K_pe_shared
    -> qk_pe_mma
    -> acc_s(replicate(2))

acc_s
    -> online softmax: reduce_max / exp2 / reduce_sum
    -> S_shared
    -> acc_s_cast(PV A fragment)

KV_shared
    -> pv_mma B fragment

acc_s_cast, KV_shared
    -> pv_mma 4x
    -> acc_o
    -> O_shared
    -> Output_partial
    -> combine
    -> Output
```

相对上一个稳定主线，真正改变性能上限的是 PV4；真正保证 correctness 的是 `acc_s.replicate(2)`。

## 5. Benchmark 对比

测试命令：

```bash
cd /root/tilelang-metax
bash race_tests/mla/run.sh
```

测试环境：

- MetaX C500 64G 容器
- `run.sh` 全量 31 cases
- 每 case 使用脚本内 `profiler.assert_allclose` 做 correctness
- benchmark 使用现有 `do_bench(warmup=500)` 口径

全量结果：

| 版本 | 31 case 总延迟 | case21 | case29 | case31 | 结论 |
|---|---:|---:|---:|---:|---|
| v19 | 41.214932 ms | 2.621675 ms | 2.622016 ms | 10.202169 ms | 旧 SOTA 记录 |
| v24 | 41.307723 ms | 2.630414 ms | 2.629866 ms | 10.216221 ms | 当前主线合入前 |
| v26 | 17.915429 ms | 1.098081 ms | 1.095927 ms | 4.185066 ms | PV4 + acc_s.replicate |

相对 v24：

- 全量总延迟：`41.307723 -> 17.915429 ms`
- 加速比：约 `2.31x`
- 延迟下降：约 `56.63%`
- case31：`10.216221 -> 4.185066 ms`，约 `2.44x`

采样验证过程：

在合入主线前，先跑了采样 case：

| case | batch | kv_ctx | 结果 | latency |
|---:|---:|---:|---|---:|
| 1 | 1 | 2048 | PASS | 0.043616 ms |
| 5 | 1 | 32768 | PASS | 0.143212 ms |
| 9 | 2 | 16384 | PASS | 0.137387 ms |
| 13 | 4 | 8192 | PASS | 0.131762 ms |
| 17 | 8 | 2048 | PASS | 0.087966 ms |
| 21 | 8 | 65536 | PASS | 1.096663 ms |
| 25 | 16 | 32768 | PASS | 1.096811 ms |
| 29 | 32 | 16384 | PASS | 1.092226 ms |
| 31 | 32 | 65536 | PASS | 4.183796 ms |

采样全部 PASS 后，才覆盖 `race_tests/mla/test_tilelang_mla.py` 并跑全量 `run.sh`。

全量 correctness：

```text
=== Summary: 31/31 passed, 0/31 failed ===
```

CSV：

```text
race_tests/mla/mla_experi/v26_pv4_accs_replicate_full31.csv
```

## 6. Profile 指标变化

TODO: profile data missing.

本版本只完成了 full correctness 和全量 benchmark。下一步如果继续深入，应重新做 stage breakdown：

- full
- copy_only
- qk_only
- softmax_only / pv_dummyS
- pv_load_only
- pv_no_mma_output

重点确认 PV4 后瓶颈是否从 PV MMA 转移到 QK、softmax 或 combine。

## 7. 实验总结

本版本成功把 PV4 合入完整 MLA split kernel，并通过全量 31 case correctness。

最关键的修复不是简单把 `threads` 提到 256，而是把 QK score fragment `acc_s` 的 layout 显式扩展：

```python
qk_mma.make_mma_store_layout(acc_s).replicate(2)
```

这让原本 128-thread 的 QK/softmax score fragment 在 256-thread CTA 中有合法布局，解决了之前 `col >= 256` NaN 和随机 mismatch。

工程判断：

- PV4 方向应该保留并作为当前主线。
- 当前版本已经是明显优于 v24 的新 SOTA。
- 下一步不应继续猜 mapping，应重新 profile 当前版本，确认 PV4 后的新瓶颈。

## 8. 后续建议

本版本已经完成 PV4 合入，但后续优化应该重新建 profile 基线，因为瓶颈很可能已经迁移。

建议下一步按这个顺序做：

1. 重新跑 stage breakdown，确认 PV4 后 PV MMA 是否仍然是最大项。
2. 对比 v24 和 v26 的 `copy_only / pv_dummyS / pv_no_mma_output`，判断 PV4 后 memory 和 compute 占比变化。
3. 如果 PV 仍是大头，再考虑 PV4 的 `k_pack`、`block_col_warps`、`acc_o` store layout。
4. 如果 QK 或 softmax 占比上升，再回头看 QK content / RoPE QK 的 mapping。
5. 暂时不要继续用 runtime guard 拆线程域，这条路已经证明不是根因修复方式。
