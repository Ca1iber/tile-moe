# v087 Step1 fused full-tile input prefetch 报告

## Verdict

- 本地结论：相对精确归档 v086，三个官方 shape 均稳定超过 `1.2%` promotion gate；v087 成为新的本地性能父版本。
- SOTA/OJ 结论：`inconclusive`。外部 OJ 尚未执行，不能把本地 device-event 延迟换算成 OJ 分数，也不创建同 ID 的 `restart-submission`。
- 唯一机制：在 v086 tile-major A 布局上，把 Step1 每个 K tile 原先分散在 Gate/Up producer 之间的两个带 `actual_rows` 判断的 64-row A 载入，合并为一次 128-row载入；GEMM、MMA、grid、barrier、Step2、prepack 和 up_logits pitch 不变。
- 合规性：纯 TileLang 同步实现，无 async copy、foreign source、external call、Torch 代算或结果缓存。

## 1. 父版本与假设

- Parent：`v086_step1_input_tilemajor_sc-16g`。
- Parent SHA-256：`43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- Candidate SHA-256：`f60fb343837c5c69bb551f69191fc551bff57374a1d11877b1d9c74c730a4662`。
- 机器：MetaX C500 `sc-16g`，25% sGPU，MACA 3.7.1.5 / KMD 3.8.30。

v59 的 row-major 输入上，合并 A 载入曾导致约 5.76% 回退，因为分散顺序承担同步访存延迟隐藏。v086 已把 A 变为连续 `128x64` tile，因此重新检验同一调度变换是一个布局变化驱动的假设，而不是盲目重跑旧方案。

## 2. 实现

父版本的 tail-pruned Step1 以两段循环分别搬运 row `[0,64)` 与 `[64,128)`，两段之间穿插 Gate/Up 权重 producer。v087 对当前 odd tile 和下一轮 even tile，各使用一个 `T.Parallel(128, 64)` 搬运完整实际行区间。非 tail-pruned 路径保持原样。

该变换不减少实际 A 字节数；它减少的是重复的行区间条件、循环状态和由两段 producer 引入的静态指令/寄存器生命周期。

## 3. 正确性与合规门禁

- OJ source gate：PASS。
- 三 Case selected-shape generated-device gate：PASS。
- 完整 padded output：三 Case PASS，调用前输出填 7 后对整个 tensor 与 FP32 reference 做 `rtol=atol=1e-2` 检查。
- 最终 xcore1000 ISA：三 Case 均 `async=0`、`spill=0`、`private_ops=0`。

资源如下：

| Case | prepack MT/ST/waves | Step1 MT/ST/waves | Step2 MT/ST/waves |
|---:|---:|---:|---:|
| 1 | `94/11/5` | `216/42/2` | `204/60/2` |
| 2 | `84/11/5` | `216/42/2` | `222/54/2` |
| 3 | `84/11/5` | `216/42/2` | `222/54/2` |

相对 v086，Step1 从 `218 MT / 54 ST` 降为 `216 MT / 42 ST`；机器码 Case1 `26224→24512 B`，Case2/3 `26376→24640 B`，约减少 `6.5%`。

## 4. Benchmark

同进程 device event、AB/BA 交替；负值表示 candidate 更快。

| Case | rounds | protocol | v086 representative (ms) | v087 representative (ms) | paired median change | pstdev |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 3 | warmup 1000 / repeat 300 | `2.48327` | `2.42012` | `-2.554%` | `0.022%` |
| 2 | 5 | warmup 100 / repeat 100 | `4.28680` | `4.21800` | `-1.587%` | `0.065%` |
| 3 | 3 | warmup 10 / repeat 100 | `8.44614` | `8.29447` | `-1.760%` | `0.052%` |

逐轮变化：Case1 `-2.554/-2.575/-2.521%`；Case2 `-1.592/-1.480/-1.527/-1.587/-1.672%`；Case3 `-1.760/-1.835/-1.709%`。三组均同向且全部超过 1.2%。

## 5. mcTracer 因果分解

Case3 三对 AB/BA 独立 trace：

- prepack 中位约 `0.243 ms`，无实质变化；
- Step1 paired median `-3.490%`；
- Step2 paired median `-0.164%`，视为噪声；
- total GPU timeline paired median `-2.487%`；
- prepack/Step1/Step2 grid、32 KiB dynamic shared 与 waves 档位不变。

收益定位到 Step1，与 ISA 中 Step1 指令体约缩短 6.5%、ST 寄存器 `54→42` 相互印证。它不是来自启动 gap、prepack 或 Step2 偶然变化。

## 6. 决策

v087 满足本地三 Case `>=1.2%` promotion gate，归档为新的 `dorm` 性能 checkpoint。外部 OJ 仍为必需的 SOTA gate；在取得官方结果前，不创建 `restart-submission/v087...`，不声明超过历史 79.33 分。
