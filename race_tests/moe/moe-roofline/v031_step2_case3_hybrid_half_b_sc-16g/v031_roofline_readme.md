# v031 Case3 Step2 Roofline 说明

- `native/` 保存 mcProfiler 的原生 RoofLine PNG、JSON 与 PDF，未散放到版本根目录。
- mcProfiler 原生物理带宽屋顶为 1843.2 GB/s，`MAX_I=260 FLOP/B`；其 replay 点为 v030 `case_I=727.875`、v031 `745.871`，工具均判为 compute-side。
- 原生 replay 的 `all_ops/all_memacs` 会随 async BSM 指令改变，因此原生 `case_flops` 不能替代真实阶段性能，也不用于接受结论。
- `v031_case3_step2_schedule_roofline.*` 使用相同算法 FLOPs、相同 schedule compulsory-byte 模型和 mcTracer 中位阶段时间重建：AI `81.919 FLOP/B`，v030/v031 分别 `97.092/99.301 TFLOP/s`。
- 自建图同时标注整卡理论 1843.2 GB/s 与 sc-16g 空闲单租户保守实测 1400 GB/s；compute roof 取 25% 调度模型 `479.232 TFLOP/s`。按此 schedule-aware 模型两点都在 HBM-side。该分类与 mcProfiler 原生图不同，原因是 traffic/FLOP 口径不同，不把两种模型混为同一数值体系。
- 接受性能权威是无 profiler 的 AB/BA benchmark 与 mcTracer；Roofline 只用于结构解释。
