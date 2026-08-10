# v002_step2_input_locality_grid_sc-16g Roofline

本目录只保存 `v002_step2_input_locality_grid_sc-16g` 的图与可审计数据。

- 决策图：`v002_step2_input_locality_grid_sc-16g_decision_roofline.svg`
- mcProfiler Step2 原生对比图：`v002_step2_input_locality_grid_sc-16g_mcprofiler_native_comparison.svg`
- v002 工具原生图：`mcprofiler_native_v002_case3_step2_sc-16g.png`
- 数据与渲染参数：两个 `*.csv` 和两个 `*_render.json`

## 解释规则

Decision 图沿用 v000 的静态 schedule-issued FLOPs/bytes，只更新为 v002 mcTracer 时间。六点仍处在 HBM-side；该模型不包含 grid 遍历带来的缓存命中改善，因此用于端到端方向判断，不用于反推实际 HBM bytes。

mcProfiler-native 图比较 v000 与 v002 的 case3 Step2。v001 Step2 的生成代码和 grid 与 v000 相同，因此 v000 是可用的已归档计数器基线。v002 在 `all_ops`、VL1/L2C memacs 不变时把 `all_memacs` 降低 32.117%，native AI 提高 47.312%。v002 点越过工具物理屋顶的 1040 FLOP/B ridge，但 native `case_flops` 不解释为端到端 TFLOP/s；这个变化只作为全局访存压力迁移的相对证据。

479.232 TFLOP/s 是整卡理论峰值乘 25% compute quota 的推断；1400 GB/s 是 sc16 工程实测屋顶，1843.2 GB/s 是物理理论带宽。分类结论需与 mcTracer 和 mx-smi 联合阅读。
