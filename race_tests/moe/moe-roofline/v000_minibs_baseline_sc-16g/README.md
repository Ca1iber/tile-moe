# v000_minibs_baseline_sc-16g Roofline

本目录只保存 `v000_minibs_baseline_sc-16g` 的 Roofline 产物，不与其他版本混放。

- 主决策图：`v000_minibs_baseline_sc-16g_decision_roofline.svg`
- mcProfiler 原生坐标图：`v000_minibs_baseline_sc-16g_mcprofiler_native_roofline.svg`
- 六张工具原生 PNG：`native/`
- 可审计数据：`*_decision_points.csv`、`*_mcprofiler_native_points.csv` 与两个 `*_render.json`

## 解释规则

Decision 图的 y 轴是静态 issued GEMM FLOPs 除以 mcTracer kernel 时间；x 轴是逐 CTA fp16 A/B load 与 output store 构成的 schedule-implied uncached AI。它用于判断当前 schedule 的优化方向。六点 AI 为 81.92–84.83 FLOP/B，均位于 HBM 侧。

图中计算屋顶 479.232 TFLOP/s 是“1916.928 TFLOP/s 整卡 FP16 MMA 理论峰值 × 25% compute quota”的推断模型，不是直接测量值；带宽同时画出 1843.2 GB/s 整卡理论屋顶与 1400 GB/s sc16 工程实测屋顶。因为六点远低于两个 ridge，memory-bound 分类不依赖 25% compute 模型是否精确。

mcProfiler-native 图严格保留工具的 `case_I/case_flops/case_bandwith` 坐标，只用于计数器的版本间相对比较，不把 `case_flops` 当成真实端到端 TFLOP/s。
