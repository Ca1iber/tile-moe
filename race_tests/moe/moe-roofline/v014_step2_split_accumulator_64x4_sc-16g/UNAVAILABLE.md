# v014 Roofline unavailable

- 状态：not collected for rejected screen。
- 原因：clean OJ 与三对 mcTracer 已证明 v014 没有单次 latency 改善；两轮 targeted mcProfiler 进一步显示 wave life、global read、VL1 stall 和 shared latency均无改善。候选未晋级 full verdict，因此没有运行额外 RoofLine replay。
- 不复用 v013 的 native PNG/坐标冒充 v014。v013 的已知分类仅作为父版本背景：物理 ridge 附近；按 sc-16g 1400 GB/s 保守实测 roof 为 memory-side。
- 若后续机制改变实际 bytes/work并晋级 verdict，应重新采集 candidate-specific RoofLine，再按物理 1843.2 GB/s 与 sc-16g 1400 GB/s 双 roof 解释。
