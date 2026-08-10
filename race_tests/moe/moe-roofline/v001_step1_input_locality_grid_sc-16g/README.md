# v001_step1_input_locality_grid_sc-16g Roofline

本目录只保存 `v001_step1_input_locality_grid_sc-16g` 的图和可审计数据，不与其他版本混放。

- 决策图：`v001_step1_input_locality_grid_sc-16g_decision_roofline.svg`
- mcProfiler 原生坐标对比图：`v001_step1_input_locality_grid_sc-16g_mcprofiler_native_comparison.svg`
- 工具原生 case3 Step1 图：`mcprofiler_native_v001_case3_step1_sc-16g.png`
- 可审计数据：两个 `*.csv` 与对应 `*_render.json`

## 解释规则

Decision 图使用与 v000 完全相同的静态 schedule-issued FLOPs/bytes 模型，只把 y 轴时间替换为 v001 最终源码的 mcTracer 时间。六点仍位于 HBM-side；这说明瓶颈类别未迁移，也说明单靠该静态 AI 无法呈现缓存命中改善。

mcProfiler-native 对比图只比较 case3 Step1 的工具原生 `case_I/case_flops/case_bandwith`。它显示 `all_ops` 不变、`all_memacs` 降低 21.379%、native AI 提高 27.192%。这与 mx-smi 的 HBM 中位吞吐降低 12.125% 而时间缩短共同支持“少搬数据”的机制。native `case_flops` 不解释为端到端 TFLOP/s。

图中的 479.232 TFLOP/s 计算屋顶是整卡理论峰值乘 25% compute quota 的推断模型；1400 GB/s 是 sc16 工程实测屋顶，1843.2 GB/s 是整卡理论带宽。所有点远低于两种 ridge，因此 memory-bound 分类不依赖 25% compute 模型是否精确。
