# v086 Step1 input tile-major prepack 报告

## Verdict

- 本地结论：相对精确归档 v085，三个官方 shape 均稳定超过 `1.2%` promotion gate；v086 成为新的本地性能父版本。
- SOTA/OJ 结论：`inconclusive`。外部 OJ 尚未执行，不能把本地 device-event 延迟换算成 OJ 分数，也不创建同 ID 的 `restart-submission`。
- 机制：每次 `run_kernel` 先用一个同步 TileLang kernel，把本次输入从 row-major 重排为 `[row_block, k_tile, row_in_block, k_in_tile]`。Step1 每个 `128x64` A tile 因而成为连续 16 KiB；同一 row block 的 16 个 N-panel CTA 仍读取同一物理 tile。
- 合规性：只缓存空 workspace 的分配，不缓存输入或输出；每次调用都重新 prepack。本版本无 async copy、foreign source、external call、Torch 代算或结果缓存。

## 1. 父版本与假设

- Parent：`v085_step2_up_logits_ldpad128_sc-16g`。
- Parent SHA-256：`6d4aa3a6f428d023adf6b681ea3a4429e5fd563d84f4fdd12fb85a8aab5be3d5`。
- Candidate SHA-256：`43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- 机器：MetaX C500 `sc-16g`，25% sGPU，MACA 3.7.1.5 / KMD 3.8.30。

旧的 input `+256B` row pitch prepack 会让 Case3 Step1 回退约 18.5%，说明简单扰动行跨度会破坏跨 CTA reuse。本实验改变的是更强的物理单位：按照 Step1 真正消费的 `128x64` tile 连续存放，同时保持 row-block 内 16 个 N CTA 的共享地址完全一致。

## 2. 实现

新增输入 workspace：

```text
[num_blocks_m, hidden / 64, 128, 64] FP16
```

prepack kernel 仍按每 CTA `128x256` 元素搬运，只把 256 列拆成四个连续 K tile 写入目标布局。Step1 的 Gate/Up producer 顺序、`actual_rows`、MMA、barrier、CTA grid 与 Step2 全部保持不变；v085 的 `up_logits +128 FP16 columns` pitch 也保留。

## 3. 正确性与合规门禁

- OJ source gate：PASS。
- 三 Case selected-shape generated-device gate：PASS。
- 完整 padded output：三 Case PASS，调用前输出填 7 后对整个 tensor 与 FP32 reference 做 `rtol=atol=1e-2` 检查。
- 最终 xcore1000 ISA：三个 kernel 均 `private_memory_size=0`，未出现 async/memcpy_async/wait_group。

资源如下：

| Case | prepack MT/ST/waves | Step1 MT/ST/waves | Step2 MT/ST/waves |
|---:|---:|---:|---:|
| 1 | `94/11/5` | `218/54/2` | `204/60/2` |
| 2 | `84/11/5` | `218/54/2` | `222/54/2` |
| 3 | `84/11/5` | `218/54/2` | `222/54/2` |

## 4. Benchmark

同进程 device event、AB/BA 交替；负值表示 candidate 更快。Case1 使用 warmup 1000 / repeat 300，Case2 使用 100 / 100，Case3 使用 20 / 100。

| Case | rounds | v085 median (ms) | v086 median (ms) | paired median change | pstdev |
|---:|---:|---:|---:|---:|---:|
| 1 | 3 | `2.588887` | `2.485489` | `-4.016%` | `0.135%` |
| 2 | 5 | `4.377838` | `4.287237` | `-2.052%` | `0.059%` |
| 3 | 5 | `8.558032` | `8.437760` | `-1.405%` | `0.141%` |

Case3 五轮为 `-1.440/-1.420/-1.063/-1.405/-1.384%`；中位和均值 `-1.342%` 均超过 1.2% 门槛，只有一轮落入门槛内但仍同向改善。Case1/2 的余量更大。

## 5. mcTracer 因果分解

Case3 两对 AB/BA 独立 trace：

- prepack：中位 `0.242944 ms`；prepack→Step1 gap `0.028032 ms`；
- Step1：`5.886464 -> 5.543168 ms`，paired median `-5.825%`；
- Step2：`2.651136 -> 2.658432 ms`，paired median `+0.275%`，视为 trace 噪声；
- Step1/2 grid、32 KiB dynamic shared 与寄存器保持父版本档位。

因此 clean benchmark 的端到端收益来自 Step1 A tile 地址连续化；约 0.27ms 的 prepack+gap 成本被约 0.34ms 的 Step1 中位缩短覆盖。两对 tracer 的 total-GPU median 仅 `-0.901%`，样本少且第二对抖动明显，不替代 13 轮 clean AB/BA 裁决。

## 6. 决策

v086 满足本地三 Case `>=1.2%` promotion gate，归档为新的 `dorm` 性能 checkpoint。外部 OJ 仍为必需的 SOTA gate；在取得官方结果前，不创建 `restart-submission/v086...`，不声明超过历史 79.33 分。
