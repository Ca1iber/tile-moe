# v007_maca_async_half_n_tiles_sc-16g 证据报告

## Verdict

- 运行类型：verdict（10 warmup / 100 repeat）
- 结论：rejected as production；v006 的有效修复检查点。
- 一句话因果结论：half-N tile 把双缓冲 shared 从 64→32 KiB、MT 从 182/202→112/120、staticMaxWarps 从 2→4，因此端到端改善约 29%；剩余主要损失已迁移到 identity shared/async barrier 的 WSM 长等待和翻倍 grid。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm`，父提交 `17894748`；本报告随 v007 checkpoint 提交。
- Kernel / benchmark hashes：kernel `1c244f8da81560017cae6e8395fec1a1663bd7148a55c4e6b5f99b382b4cd19b`；benchmark hashes 见 source hash 文件。
- 工具链：仓库开发构建、MXCC xcore1000、mcTracer、mcProfiler；原始产物均在本目录。

## Correctness

- 官方功能测试 2/2 PASS；OJ Case1/2/3 全部 PASS，`max_abs=0.001953125`。

## Benchmark

- 官方 benchmark：133.731797 / 40.466975 ms；相对 v006 改善 22.92%/19.70%。
- OJ benchmark：5.889628 / 10.210268 / 19.619390 ms；相对 v006 改善 27.42%/28.94%/29.04%。
- 与当前最佳 v004 比较：OJ 仍慢 92.58%/87.51%/84.20%，因此不接受为生产 kernel。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer Case3：Step1 12.887808 ms、Step2 6.718976 ms、gap 0.002816 ms、span 19.609600 ms；grid 为 32x96 / 56x96，v006 的两倍；dynamic shared 均 32768 B，registers/thread 112/120，private 0。
- mcProfiler vs v004：wave life -2.64%/-8.82%，说明单 wave 已不慢；但 waves 恰好翻倍，AP active +89.31%/+80.39%，Total Cycles +43.52%/+22.26%。MMA duty 45.27→23.91% / 40.93→22.69%，MTE duty 5.97→4.82% / 5.03→4.70%。WSM stall +664.99%/+300.33%，成为最显著的新证据。
- 访存侧：VL1 partition stall 约下降 50%/32–35%，并非 VL1 饱和；Step1 global read bytes 比 v004 低 25%，Step2接近持平。剩余空洞更符合 barrier/WSM 与 identity shared feed 问题。
- mx-smi：本版未单独采样。
- Roofline：Case3 两 kernel 的原生 PNG/metric JSON 位于 `../../moe-roofline/v007_maca_async_half_n_tiles_sc-16g/native/`。

## Lowering and code generation

- TileLang lowering：half-N tile 后 emitter 仍生成合法的 16x16x16 MMA；async parity 和 wait 顺序未改变。
- Generated device code：保留 12 个静态 async-copy site、6 个 wait site、8 个 CTA sync site；grid N 方向翻倍，每 block MMA/shared-load 工作减半。
- Assembly / resource usage：Step1 112 MT/30 ST、Step2 120 MT/28 ST，staticMaxWarps/PEU 均为 4、0-byte stack、0 `stp/ldp`、0 spill。静态 MMA 128/128、shared loads 32/32，均为 v006 的一半。

## Causal interpretation

- 预测指标是否按方向变化：shared、register、static occupancy、阶段时间全部按方向变化，证明假设部分成立。
- 端到端与分阶段时间是否一致：一致；OJ Case3 19.619 ms 与 mcTracer span 19.610 ms 对齐。
- 生成代码是否实际变化：是；ISA 中 MMA/shared-load/code size 约减半，grid/waves 翻倍。
- 是否超出 paired-run 噪声带：相对 v006 约 29% 改善，远超噪声。
- 瓶颈是否迁移：从 v006 的 64 KiB/高寄存器压力迁移到翻倍 block 调度与 identity shared/async barrier 的 WSM stall。下一版使用单 staging + 单 swizzled compute buffer，保持 32 KiB 并恢复 swizzled MMA feed。
