# v013 Step2 Roofline artifacts

- `native/`：v004 与 v013 Case3 Step2 的 mcProfiler 原生 PNG，保留工具的物理整卡模型。
- `*_mcprofiler_points.csv`：两版 per-kernel 原生 AI、TFLOP/s 和 transaction proxy bandwidth。
- `*_paired_roofline.svg`：使用 1916.928 TFLOP/s FP16 MMA roof，同时绘制 1843.2 GB/s 物理理论带宽与 1400 GB/s sc-16g 保守实测带宽。
- `*_paired_roofline_render.json`：绘图参数、ridge 和点位的机器可读记录。
- `failure_20260811.md`：节点异常时无法采集 v013 Roofline 的历史记录；恢复后的成功结果没有删除该失败溯源。

分类：物理带宽口径下 v004 AI=1083.426，略在 compute side；v013 AI=1035.984，位于 memory side 且紧贴 1040 FLOP/B ridge。1400 GB/s 口径下两者均在 memory side。
