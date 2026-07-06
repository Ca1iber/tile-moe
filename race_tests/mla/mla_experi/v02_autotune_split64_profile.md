# v02 autotune split64 profile

## 1. 上版本遗留问题

v01 已确认 split-KV 方向有效，但仍有几个问题没有收敛：

- 原始 `main_split` 不能直接作为主线：`threads=256` 有 MACA layout lowering 问题，`num_stages=2` 会触发动态 shared memory 超限。
- `num_split=8` 虽然比 no-split 明显快，但不是最优；case 1-30 平均相对 no-split 加速约 5.64x。
- split combine 的正确性曾在小 `kv_ctx=2048` case 上失败，表现为大量元素刚超过 `atol=1e-4`。
- 尚不清楚当前最优 split 形态下，主要瓶颈是 GEMM 计算还是 attention plumbing，包括数据搬运、softmax、partial output 写回和 combine。

## 2. 问题原因分析

### 已验证结论

1. 正确性失败来自 `glse` 精度。
   - `glse` 保存每个 split 的 logsumexp，combine 中用它计算 `weight_k = exp2(lse_k - global_lse)`。
   - `glse` 原来用 `fp16` 存，权重误差会广播到整条 512 维 output，导致很多元素出现 `1e-4` 级误差。
   - 将 `glse` 改为 `accum_dtype` 后，split=8 的 1-30 case 全部通过。

2. `num_split` 是当前最大收益参数。
   - 在 `BLOCK_N=32`、`BLOCK_H=16`、`threads=128`、`num_stages=0` 下，采样 case 1/6/11/16/21/26 全部由 `num_split=64` 胜出。
   - split64 进一步把 KV 维并行度打开，尤其改善小 batch 长上下文场景。

3. `BLOCK_N` 的可选空间很窄。
   - `BLOCK_N=16`：MACA lowering 报 `Divide by zero`，不可用。
   - `BLOCK_N=32`：当前最优且稳定。
   - `BLOCK_N=64`：动态 shared memory 约 92KB/96KB，大于设备 64KB 限制，launch 失败。

4. GEMM policy 对 MLA 当前形态基本没有收益。
   - FullCol、FullRow、默认 Square、QK/PV 混合 policy 的采样差异约在噪声范围内。
   - 保留 FullCol。

5. profile ablation 显示 GEMM 不是唯一主瓶颈。
   - 去掉 QK GEMM 后 runtime 只下降约 34%-43%。
   - 剩余 57%-66% 来自 KV/K_pe 搬运、softmax、acc_o scale、Output_partial/global glse 写读、combine kernel 和 split 调度开销。

### 当前推测

- split64 之后 CTA 数已经很高，GEMM 计算被并行摊薄，attention plumbing 成为主要优化方向。
- combine 和 Output_partial 的 global round-trip 后续会越来越显眼，尤其 batch 较大时。

### 下一步需要验证的假设

- 正式接入 split64 后，case31 是否仍能通过且不会 OOM。
- combine kernel 是否可以通过减少 global read/write 或调整 combine threads 降低开销。
- `BLOCK_H` 和 split 策略是否需要按 batch/kv_ctx 分段选择。

## 3. 本版本解决方案

本版本做两类工作：

1. 正确性修复：
   - 将 split combine 使用的 `glse` 从 `fp16` 改为 `accum_dtype(fp32)`。
   - 只提升 logsumexp 权重路径精度，不把 `Output_partial` 改成 fp32，避免额外 global memory 带宽。

2. autotune 与 profile 记录：
   - 扫描 `num_split={4,8,16,32,64}`。
   - 扫描/验证 `BLOCK_N={16,32,64}` 的合法性。
   - 验证 GEMM policy：FullCol、FullRow、Square、QK Row + PV Col、QK Col + PV Row。
   - 记录当前 split64 形态下的 ablation profile。

注意：本 commit 记录实验依据和 `glse fp32` 修复，`main()` 尚未正式切到 `num_split=64`。正式接入应单独提交。

## 4. 具体落地策略

代码路径：

- `race_tests/mla/test_tilelang_mla.py::flashattn`

关键代码改动：

```python
glse = T.alloc_global([batch, heads, num_split], accum_dtype)
```

同时补充了 split kernel 和 combine kernel 中容易混淆位置的注释：

- `bz` 在 split kernel 中表示 split id。
- `bz` 在 combine kernel 中复用为 batch id。
- `Output_partial` 是 split 局部 output，不是最终 output。
- combine 是按 logsumexp 权重做 reduce，不是 concat。

实验配置：

```text
当前最佳临时配置：
BLOCK_N = 32
BLOCK_H = 16
num_split = 64
num_stages = 0
threads = 128
GEMM policy = FullCol
glse dtype = fp32
```

运行环境与命令模式：

```bash
cd /root/tilelang-metax
bash -lc "PYTHONPATH=/root/tilelang-metax PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True /opt/conda/bin/python <script> --json <cases.json>"
```

远端环境需要通过 `bash -lc` 加载 MACA/TileLang 运行环境；直接用 `/opt/conda/bin/python` 调子进程会导致 profiler 路径异常。

## 5. Benchmark 对比

### split64 相对 no-split

使用 case 1-30，split64 全部通过：

```text
Summary: 30/30 passed, 0/30 failed
```

case2 首次全量测到 `0.642ms`，与相邻 case 不符合趋势；单独复跑 3 次稳定在 `0.096-0.097ms`，因此统计使用修正值 `0.096660ms`。原始和修正 CSV 均已保留。

| 范围 | 平均加速 | 最小 | 最大 |
|---|---:|---:|---:|
| case 1-10 | 30.30x | 16.00x | 51.57x |
| case 11-20 | 14.49x | 8.91x | 27.72x |
| case 21-30 | 4.83x | 2.41x | 11.01x |
| case 1-30 | 16.54x | 2.41x | 51.57x |

代表 case：

| case | batch | kv_ctx | no-split | split64 | 加速 |
|---:|---:|---:|---:|---:|---:|
| 1 | 1 | 2048 | 1.175529 ms | 0.056394 ms | 20.84x |
| 2 | 1 | 4096 | 2.317761 ms | 0.096660 ms | 23.98x |
| 6 | 1 | 65536 | 36.735744 ms | 0.712377 ms | 51.57x |
| 11 | 2 | 65536 | 40.551041 ms | 1.462908 ms | 27.72x |
| 16 | 4 | 65536 | 40.574593 ms | 2.209688 ms | 18.36x |
| 21 | 8 | 65536 | 41.053696 ms | 3.727381 ms | 11.01x |
| 26 | 16 | 65536 | 41.351677 ms | 7.415926 ms | 5.58x |
| 30 | 32 | 32768 | 20.816002 ms | 7.553942 ms | 2.76x |

### num_split sweep

采样 case：1、6、11、16、21、26。

| case | split4 | split8 | split16 | split32 | split64 | 最快 |
|---:|---:|---:|---:|---:|---:|---|
| 1 | 0.3603 | 0.2257 | 0.1233 | 0.0896 | 0.0599 | split64 |
| 6 | 10.1925 | 5.1404 | 2.6040 | 1.3425 | 0.7124 | split64 |
| 11 | 10.6920 | 5.5683 | 2.8439 | 1.4690 | 1.4565 | split64 |
| 16 | 10.8181 | 5.6126 | 2.8830 | 2.8406 | 2.2142 | split64 |
| 21 | 10.8733 | 5.7139 | 5.6303 | 4.3374 | 3.7333 | split64 |
| 26 | 11.0584 | 11.1572 | 8.5588 | 7.3924 | 7.3820 | split64 |

### 非法配置

| 配置 | 结果 | 原因 |
|---|---|---|
| `BLOCK_N=16` | fail | MACA lowering 报 `Divide by zero` |
| `BLOCK_N=64` | fail | `dyn_smem_bytes=92160/96256`，设备限制 65536 |
| `num_stages=1` | fail as optimization | 可运行但采样普遍慢于 stage0 |
| `num_stages=2` | fail | 动态 shared memory 超限或 lowering 不稳定 |

## 6. Profile 指标变化

本轮没有采集硬件 counter；采用临时 ablation kernel 做 kernel 时间占比判断。由于直接删除 PV GEMM 会改变 TileLang lowering/schedule，`no_pv` 结果异常变慢，不作为物理占比依据。

可靠对比使用 `full`、`no_qk`、`no_all_gemm`：

| case | full | no_qk | no_all_gemm | QK 估算占比 | 非 QK 剩余 |
|---:|---:|---:|---:|---:|---:|
| 6 | 0.713 ms | 0.471 ms | 0.482 ms | 33.9% | 66.1% |
| 21 | 3.742 ms | 2.143 ms | 2.295 ms | 42.7% | 57.3% |
| 30 | 7.557 ms | 4.304 ms | 4.610 ms | 43.0% | 57.0% |

工程判断：

- GEMM 不是当前唯一主瓶颈。
- split64 下，QK GEMM 大约占 34%-43%。
- 剩余 57%-66% 主要来自数据搬运、softmax、partial output/global lse 写读、combine kernel 和 split 调度开销。
- 下一步 profile 应优先看 combine 和 partial write/read，而不是继续调 GEMM policy。

## 7. 实验总结

本版本有效。

最重要结论：

1. 正确性修复已明确：`glse` 必须用 fp32。
2. `num_split=64` 是当前 `BLOCK_N=32` 下最优采样配置，case 1-30 全部通过。
3. split64 相对 no-split 在 case 1-30 平均加速 16.54x，小 batch 长上下文最高 51.57x。
4. `BLOCK_N=16/64` 都不可用，GEMM policy 没有明显收益。
5. 当前瓶颈已经从单纯 GEMM 转向 attention plumbing，后续应优化 combine 和 partial output/global memory round-trip。

下一步建议：

- 将 split64 正式接入 `main()`，再跑 case 1-31。
- 单独验证 case31 的 OOM/正确性情况。
- 继续 profile combine kernel 和 Output_partial 读写路径。
