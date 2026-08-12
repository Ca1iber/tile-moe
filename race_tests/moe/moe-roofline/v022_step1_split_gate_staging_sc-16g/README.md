# v022 Case2 Step1 Roofline

本目录只保存 `v022_step1_split_gate_staging_sc-16g` 的 Roofline，不与其他版本图片混放。

- 点的时间来自三组配对 mcTracer 的 Step1 median。
- FLOP 数为 360,777,252,864，AI 为 84.828402 FLOP/byte；父版本和候选工作量相同。
- Compute roof 使用 160 TFLOP/s。
- `physical_theoretical=1843.2 GB/s` 是整卡物理理论带宽参考。
- `sc16_measured_conservative=1400 GB/s` 是 25% slice 的保守 sensitivity roof，不冒充精确硬件上限。

v022 从 105.739 提升到 109.315 TFLOP/s，但 AI 与区域分类不变。结合 mcProfiler，收益来源是更短 load burst、更早 shared staging 和 VLS stall 降低，而不是减少 global bytes。
