# v008_async_stage_to_swizzle_sc-16g 证据报告

## Verdict

- 运行类型：verdict + alternating paired Case3
- 结论：rejected as production；保留为 async-compatible swizzle bridge 检查点。
- 一句话因果结论：identity staging→swizzled compute 在 32 KiB 内恢复了低冲突 MMA feed，WSM stall 下降约 80%，但每 K tile 的 shared transform、三次 CTA sync 和 half-N 翻倍 grid 仍使 paired Case3 比 v004 慢 56.36%。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm`，父提交 `8adc616d`；本报告随 v008 checkpoint 提交。
- Kernel / benchmark hashes：kernel `90a384c320da9b911a4dbd4f17125031147a2307337ffcab7c7e3d831218e94e`；其余见 source hash 文件。
- 工具链：仓库开发构建、MXCC xcore1000、mcTracer、mcProfiler；远端 fingerprint/重连不改变实验源码。

## Correctness

- 官方功能测试 2/2 PASS；OJ Case1/2/3 均 PASS，`max_abs=0.001953125`。paired run 后 source hash 与预留 `/tmp/v008_current.py` 完全一致。

## Benchmark

- 官方 benchmark：107.239678 / 33.100706 ms，相对 v007 改善 19.81%/18.20%。
- OJ verdict：4.115031 / 7.908106 / 16.504924 ms，相对 v007 改善 30.13%/22.55%/15.88%。另一个 screen run 为 4.179/8.081/14.255 ms，但不用于生产判定。
- Paired Case3：交替顺序 v004/v008/v004/v008，v004 10.663076/10.644235 ms，v008 16.636584/16.679219 ms；均值差 +56.36%。该 paired 结论优先于抖动的 standalone 样本。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer Case3：Step1 11.823104 ms、Step2 4.809984 ms、device span 16.660992 ms；相对 v007 阶段改善 8.26%/28.41%。dynamic shared 32768 B，registers/thread 116/126，private 0，grid 不变。
- mcProfiler vs v007：WSM stall 367.49M→63.74M / 157.66M→32.74M；平均指令阶段延迟 966.88→80.93 / 885.87→82.48；MMA duty 23.91→27.07% / 22.69→31.45%，证明 swizzled compute feed 生效。Step2 Total Cycles 已只比 v004 高 1.72%，wave life 比 v004 低 34.82%。
- 剩余代价：Step1 VLS pipeline stall 比 v004 高 105.60%，Step2 高 48.77%；Step1 同时搬 gate/up 并做两份 transform，因此改善明显小于 Step2。两 kernel waves 仍为 v004 的 2 倍。
- mx-smi：paired 前空闲快照为 GPU/sGPU util 0%、P0、36C，无可见进程；仍存在 14–16 ms 进程间抖动，因此采用 paired 结论。
- Roofline：Case3 原生 PNG/metric JSON 位于 `../../moe-roofline/v008_async_stage_to_swizzle_sc-16g/native/`。

## Lowering and code generation

- TileLang lowering：显式 `T.serial` 保持 source order；identity staging 和 swizzled compute 都有独立 layout annotation。
- Generated device code：async 写线性 staging；shared transform 为 `uint4` load/store，destination 地址含原 swizzle XOR/permutation；随后发射 next `memcpy_async<16>` 并从 swizzled compute 加载 MMA operand。每 kernel 循环静态可见 3 个 `__syncthreads()`。
- Assembly / resource usage：Step1 116 MT/28 ST，Step2 126 MT/28 ST，staticMaxWarps/PEU 4、0 stack、0 spill。ISA 新增 shared store 4/4；shared load 20/20；barrier 5/4；arrive 31/46。

## Causal interpretation

- 预测指标是否按方向变化：shared/register/occupancy 保持，WSM stall、latency、MMA duty 和 runtime 均按预测改善，假设成立。
- 端到端与分阶段时间是否一致：同一机器存在较大进程间抖动；mcTracer span 16.661 ms 与 paired v008 16.658 ms 均值高度一致，因此采用 paired 数字。
- 生成代码是否实际变化：是；C++/ISA 都出现 shared-to-shared 128-bit transform 和 swizzled MMA loads。
- 是否超出 paired-run 噪声带：相对 v007 改善远大于单次噪声；但相对 v004 的 +56.36% paired 退化同样确定。
- 瓶颈是否迁移：WSM stall 基本修复，剩余迁移到 Step1 双 transform 的 VLS pipeline cost、每 K 三次 CTA sync 与翻倍 grid。下一版先验证 sync 最小化。
