# v136_step1_8rowwaves_sc-16g 实验卡

## Observed evidence

- exact v110 的 Step1 占三例 kernel span 的 62.37%–65.65%。
- v110 Step1 为 226 MT/线程、42 ST/线程、2 static waves/PEU；Case1 fresh MMA duty 为 51.40%。
- v135 已证明仅缩短源码中的 B fragment 无法改变最终寄存器档位，因此本版尝试直接减少每个 wave 的 accumulator 与 A fragment 面积。

## Verified bottleneck

Step1 是端到端主导阶段，且每线程寄存器偏高。不过“寄存器导致的静态 waves 上限”只是候选瓶颈，必须同时核算 B fragment 在 row-wave 间的复用和 CTA 协调成本。

## Current hypothesis

保持 Step1 CTA tile 为 M128×N128，但把 4 个 M32×N128 row-wave 改为 8 个 M16×N128 row-wave，并将 consumer-native A 从 `[4,256,8]` 重排为等元素数的 `[2,512,8]`。这样每线程 accumulator 与 A fragment 减半，可能把 Step1 从 2-wave 资源档提升到更高静态驻留档。

## Proposed mechanism

- Step1：256 threads / 4 row waves → 512 threads / 8 row waves。
- 每个 row wave：M32×N128 → M16×N128。
- native A workspace：4 vectors × 256 threads × 8 elements → 2 vectors × 512 threads × 8 elements，元素数与 global bytes 不变。
- Step2 及 consumer-native up-logits 布局保持 256 threads 不变。
- 不使用 async copy、foreign source、Torch 代算或 benchmark 修改。

## Predicted metric changes

- Step1 MT register 显著下降，static waves/PEU 上升。
- prepack/Step2 不回退。
- 三例端到端至少一例达到 1.2%，其余无实质回退。

## Falsifying result

若资源档改善但三例短 AB/BA 仍稳定回退，则证明减少 accumulator live range 的收益不足以覆盖 B fragment 复用损失与 8-wave CTA 协调成本；本方向拒绝，不运行候选 profiler、OJ 或长测。

## Correctness and resource risks

- M16 row-wave 必须与 native A 的 thread/vector 映射严格一一对应，否则会静默错行。
- row-wave 数翻倍会使每份 shared B fragment 被更多 wave 重复加载。
- CTA barrier 数不变，但每次 barrier 的参与 wave 从 4 增至 8。

## Outcome

Falsifier 触发。三例完整有效行 correctness 均 PASS，OJ source 与三份 generated source 扫描通过；Step1 确实降至 126–128 MT、4 static waves/PEU，但短 AB/BA 分别稳定回退 +3.088%、+9.814%、+8.574%。v136 拒绝。
