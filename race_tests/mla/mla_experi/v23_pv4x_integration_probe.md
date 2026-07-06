# v23 PV 4x 接入方式诊断

## 1. 上版本遗留问题

v22 证明了当前 full MLA split kernel 里直接把 PV mapping 从 `2x2` 改成 `4x1/4x2` 会错误：

- `4x1/4x2` 在 case21 上 correctness fail；
- first mismatch 从输出列 256 开始；
- 大约 50% 元素错误。

静态分析后确认直接原因：

- MACA emitter 的 `WARP_SIZE = 64`；
- `pv_block_col_warps = 4` 需要 `64 * 4 = 256` threads；
- 当前 split kernel 写死 `threads=128`；
- 所以只覆盖前两个列 warp，即输出列 `0-255`，输出列 `256-511` 没有正确计算。

v23 要回答的问题是：如果补足 4x PV 需要的执行资源，4x 是否有收益。

## 2. 问题原因分析

PV 4x 的列覆盖逻辑来自 `tilelang/intrinsics/maca_mma_macro_generator.py`：

```python
warp_n = (thread_id // WARP_SIZE) % block_col_warps
col_base = warp_n * warp_col_tiles
```

在 MLA PV 中：

- `dim = 512`
- `pv_block_col_warps = 4`
- `pv_warp_col_tiles = dim // 4 = 128`

因此：

| thread 范围 | warp_n | 输出列 |
|---|---:|---|
| 0-63 | 0 | 0-127 |
| 64-127 | 1 | 128-255 |
| 128-191 | 2 | 256-383 |
| 192-255 | 3 | 384-511 |

原 kernel 只有 128 threads，所以后两个 warp_n 没有实际线程执行。

## 3. 本版本解决方案

本版本试了两个方向。

方法 A：整条 split kernel 改成 256 threads，同时让 QK content 回退到 `T.gemm`。

目的：

- 避免原来手写 QK MMA 的 128-thread layout 和 256-thread launch 冲突；
- 看 full MLA 是否可以直接用 256-thread PV 4x。

方法 B：PV-only 256-thread microkernel。

目的：

- 把 QK、softmax、combine 全部拿掉；
- 只测 `S[16,32] @ V[32,512]`；
- 判断 PV 4x emitter 本体是否正确、是否比 2x 快。

## 4. 具体落地策略

新增文件：

- `race_tests/mla/mla_experi/v23_full256_qkgemm.py`
- `race_tests/mla/mla_experi/v23_pv4x_micro.py`

### 4.1 原始代码位置和原始问题

原始 SOTA 主线在：

```text
race_tests/mla/test_tilelang_mla.py::flashattn::main_split
```

对应 v22 实验脚本在：

```text
race_tests/mla/mla_experi/v22_pv_mapping_sweep.py::flashattn::main_split
```

原始 split kernel launch：

```python
with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=128) as (bid, hid, bz):
```

原始 PV mapping：

```python
pv_block_row_warps = 1
pv_block_col_warps = 2
pv_warp_col_tiles = dim // pv_block_col_warps  # 512 // 2 = 256
```

原始 PV MMA：

```python
for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
```

这版为什么能工作：

- MACA `TensorCoreIntrinEmitter` 的 warp size 是 64；
- `pv_block_col_warps=2` 需要 `64 * 2 = 128` threads；
- split kernel 正好 launch `threads=128`；
- 两个列方向 warp 分别覆盖：
  - `warp_n=0`：输出列 `0-255`
  - `warp_n=1`：输出列 `256-511`

所以 `2x2` 下 128 threads 刚好覆盖完整 `dim=512`。

v22 直接试 `4x1/4x2` 时只改了：

```python
pv_block_col_warps = 4
pv_warp_col_tiles = dim // pv_block_col_warps  # 512 // 4 = 128
```

但 split kernel 仍是：

```python
threads=128
```

这就是原来不行的根因：`pv_block_col_warps=4` 需要 `64 * 4 = 256` threads，但 kernel 只给了 128 threads。

列覆盖关系变成：

| thread 范围 | warp_n | 输出列 | 是否有线程执行 |
|---|---:|---|---|
| 0-63 | 0 | 0-127 | 有 |
| 64-127 | 1 | 128-255 | 有 |
| 128-191 | 2 | 256-383 | 无 |
| 192-255 | 3 | 384-511 | 无 |

所以 v22 smoke 的现象是：

- first mismatch 在 `[0, 0, 256]`；
- 约 50% 元素错误；
- 错误不是随机数值误差，而是后半列没有被正确计算。

### 4.2 方法 A：full MLA 直接升到 256 threads

实验文件：

```text
race_tests/mla/mla_experi/v23_full256_qkgemm.py
```

相对 v22 的第一处关键改动：

```diff
- with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=128) as (bid, hid, bz):
+ with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=256) as (bid, hid, bz):
```

这样做的目的：

- 给 `pv_block_col_warps=4` 补足 256 个线程；
- 理论上让 `warp_n=0/1/2/3` 都有线程执行；
- 解决 v22 中输出列 `256-511` 没有线程覆盖的问题。

但是 full MLA 里不只有 PV，还有 QK content。原始 QK content 是手写 MMA：

```python
qk_block_row_warps = 1
qk_block_col_warps = 2
...
T.clear(acc_s)
for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
    qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
    qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
    qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
```

这套 QK mapping 本身仍然是 128-thread 形态：

- `qk_block_col_warps=2`
- MACA warp size 64
- 需要线程数是 `64 * 1 * 2 = 128`

如果直接把整个 kernel launch 改成 256 threads，QK 手写 MMA 和 PV 4x 在同一个 kernel 中会混用不同 thread layout。为了隔离这个问题，方法 A 额外做了第二处关键改动：把 QK content 回退到 `T.gemm`。

改动如下：

```diff
- T.clear(acc_s)
- for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
-     qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
-     qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
-     qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
+ T.gemm(
+     Q_shared,
+     KV_shared,
+     acc_s,
+     transpose_B=True,
+     policy=T.GemmWarpPolicy.FullCol,
+     clear_accum=True,
+ )
```

并删除/不再使用：

```python
qk_a_local
qk_b_local
acc_s: qk_mma.make_mma_store_layout(acc_s)
```

这样做的原因：

- 让方法 A 只验证 “full MLA 256-thread + PV 4x” 是否可行；
- 不让 QK 手写 MMA 的 128-thread layout 成为干扰项；
- 如果这样仍失败，就说明问题不只是 QK 手写 MMA，而是 full kernel 里 256-thread PV 4x 和其他 fragment/copy/reduce 组合的 lowering 问题。

方法 A 结果：

```text
4x1: FAIL: Check failed: pb->value != 0 (0 vs. 0) : Divide by zero
4x2: FAIL: Check failed: pb->value != 0 (0 vs. 0) : Divide by zero
```

所以方法 A 证明：

- 直接把 full MLA split kernel 升成 256 threads 不成立；
- 即使 QK content 回退到 `T.gemm`，TileLang/MACA lowering 仍然在编译期失败；
- 因此 full kernel 接入 4x 不能靠简单参数替换完成。

当前推测：

- full kernel 中 `acc_s_cast: pv_mma.make_mma_load_layout(...)`、`acc_o: pv_mma.make_mma_store_layout(...)`、`T.copy(S_shared, acc_s_cast)`、online softmax fragment/reduce 混在一个 256-thread kernel 里，可能触发了某个非法 layout factor；
- 具体 divide-by-zero 发生在 TVM const fold 阶段，需要后续看 lowered TIR 或缩小复现。

### 4.3 方法 B：PV-only 256-thread microkernel

实验文件：

```text
race_tests/mla/mla_experi/v23_pv4x_micro.py
```

这不是 full MLA，而是单独抽出 PV：

```text
S: [num_blocks, 16, 32]
V: [num_blocks, 32, 512]
O: [num_blocks, 16, 512]
```

对应数学就是：

```text
O = S @ V
```

核心 kernel：

```python
with T.Kernel(num_blocks, threads=64 * pv_block_col_warps) as bid:
    ...
    T.copy(S[bid, :, :], S_shared)
    T.copy(V[bid, :, :], V_shared)
    T.copy(S_shared, acc_s_cast)
    T.fill(acc_o, 0)
    for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
        pv_mma.ldmatrix_b(pv_b_local, V_shared, ki)
        pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
    T.copy(acc_o, O_shared)
    T.copy(O_shared, O[bid, :, :])
```

这里最重要的改动是 threads 绑定和 PV mapping 一致：

| mapping | threads | 为什么 |
|---|---:|---|
| `2x2` | 128 | `64 * 2`，覆盖 2 个列方向 warp |
| `4x1` | 256 | `64 * 4`，覆盖 4 个列方向 warp |
| `4x2` | 256 | `64 * 4`，覆盖 4 个列方向 warp |

为什么方法 B 能工作：

- 这个 kernel 只有 PV，没有 QK、online softmax、`scores_max`、`logsum`、combine；
- `acc_s_cast` 是直接从 `S_shared` copy 过来的 PV 输入 fragment；
- `acc_o` 只服务 PV MMA store layout；
- kernel launch threads 和 `pv_block_col_warps` 完全匹配；
- 所以 `warp_n=0/1/2/3` 都有实际线程覆盖完整输出列 `0-511`。

方法 B 证明的不是 full MLA 已经优化成功，而是证明：

- `pv_block_col_warps=4` 的 PV MMA 本体是正确的；
- MACA emitter 在独立 PV kernel 里可以 lower 256-thread 4x；
- `4x2` 相比当前 `2x2` 有真实性能收益。

### 4.4 为什么方法 B 的成功不能直接等价于主线可合并

方法 B 去掉了 full MLA 中最关键的数据依赖：

```text
QK -> online softmax -> acc_s/acc_s_cast -> PV -> logsum/combine
```

真实 full MLA 不能只算一个 `S @ V`，它每个 KV tile 都要：

1. 算 QK content；
2. 算 QK rope；
3. 更新 online row max；
4. 做 exp 和 row sum；
5. 缩放旧的 `acc_o`；
6. 把当前 probability cast 成 PV 输入；
7. 执行 PV MMA；
8. split 版本最后还要保存局部 LSE 和 partial output。

因此把 PV 拆成单独 256-thread kernel 有两个潜在代价：

- 如果真的写出完整 attention probability `P[head, split, kv]`，中间张量非常大，内存流量可能抵消 PV 4x 的收益；
- 如果仍想保持 online softmax 不落地 P，就需要在同一个 kernel 里解决 128-thread QK/softmax 与 256-thread PV 的 layout/线程组织冲突。

所以 v23 的工程结论是：

- `4x2` 是一个值得继续攻的 PV 子方向；
- 但目前还不是可以合入主线的 full MLA 优化；
- 下一步必须研究“如何把 256-thread PV 4x 接回 online softmax 主循环”，而不是继续扫 `pv_block_col_warps/k_pack`。

### 4.5 复现实验命令

方法 A 命令：

```bash
/opt/conda/bin/python race_tests/mla/mla_experi/v23_full256_qkgemm.py \
  --cases 21 \
  --configs 4x1,4x2 \
  --repeats 1 \
  --warmup 100 \
  --output race_tests/mla/mla_experi/v23_full256_qkgemm_smoke.csv \
  --summary-output race_tests/mla/mla_experi/v23_full256_qkgemm_smoke_summary.csv
```

方法 B 稳定版命令：

```bash
/opt/conda/bin/python race_tests/mla/mla_experi/v23_pv4x_micro.py \
  --num-blocks 4096 \
  --configs 2x2,4x1,4x2 \
  --repeats 3 \
  --warmup 500 \
  --output race_tests/mla/mla_experi/v23_pv4x_micro.csv
```

## 5. Benchmark 对比

方法 A full MLA smoke：

| case | mapping | 结果 |
|---:|---|---|
| 21 | `4x1` | FAIL: compile-time divide by zero |
| 21 | `4x2` | FAIL: compile-time divide by zero |

方法 A 结论：

- 即使 QK content 回退到 `T.gemm`，`threads=256 + PV 4x` 的 full split kernel 仍然无法 lower；
- 问题不是单纯的手写 QK MMA 冲突，而是当前 full kernel 中 256-thread fragment/layout 组合不能直接被 TileLang/MACA lowering 接受。

方法 B PV-only smoke，`num_blocks=1024`：

| mapping | latency | TFLOPS | 相对 2x2 |
|---|---:|---:|---:|
| `2x2` | 0.100909 ms | 5.3204 | baseline |
| `4x1` | 0.087485 ms | 6.1367 | +15.34% |
| `4x2` | 0.083775 ms | 6.4085 | +20.45% |

方法 B PV-only 稳定版，`num_blocks=4096`：

| mapping | latency | TFLOPS | 相对 2x2 |
|---|---:|---:|---:|
| `2x2` | 0.337586 ms | 6.3613 | baseline |
| `4x1` | 0.286202 ms | 7.5034 | +17.95% |
| `4x2` | 0.269190 ms | 7.9776 | +25.42% |

## 6. Profile 指标变化

本版本没有采集硬件 counter，只做了 correctness + latency 诊断。

已验证：

| 方向 | correctness | latency 结论 | 解释 |
|---|---|---|---|
| full MLA 256-thread + QK `T.gemm` | 编译失败 | 无数据 | full kernel 不能直接 lower |
| PV-only `4x1` | PASS | 比 `2x2` 快约 18% | 增加列方向 warp 并行度有效 |
| PV-only `4x2` | PASS | 比 `2x2` 快约 25% | 目前 PV-only 最优 |

TODO:

- 如果继续推进，需要看 generated TIR 或 lowering 失败位置，定位 full kernel 里 256-thread fragment/layout 为什么触发 divide-by-zero。
- 需要 profile PV-only `2x2/4x2` 的 register/occupancy/MMA utilization，确认收益来自更高列方向并行度还是更好的 issue pattern。

## 7. 实验总结

结论分两层：

1. `4x` PV 本体是正确且有效的。

PV-only 稳定版中，`4x2` 比 `2x2` 快约 25.42%。这说明 v22 里 `4x*` 失败不是因为数学或 emitter 本体不能算，而是因为 full MLA split kernel 没有给它足够的执行线程。

2. `4x` 不能通过简单 full-kernel 256-thread 接入。

方法 A 已经验证：把 split kernel 直接改成 256 threads，并把 QK content 回退到 `T.gemm`，仍然编译失败。因此下一步不能继续做简单参数替换。

下一步建议：

- 优先研究 full kernel 的 256-thread lowering 失败原因，尤其是 `acc_s_cast` / `acc_o` fragment layout 与 `T.copy` / `T.reduce_*` 混用时是否产生非法 tile factor。
- 另一条可行但重的路线是两阶段 attention：128-thread QK/softmax 先生成概率或中间表示，再由 256-thread PV kernel 做 `P @ V`。但这会额外写出 attention 概率，内存流量很大，预计端到端不一定划算。
- 更实际的中间路线是研究是否能在同一个 128-thread CTA 内用 thread offset 或双 fragment layout 串行覆盖后 256 列，避免真的把整个 split kernel 升到 256 threads。
