# v028l vs v027 mcProfiler — OJ Case2 Step2

Both reports use the same targeted metric set and one profiled kernel per replay batch.
A negative change means the candidate reduced the counter; for duty ratios it is a relative change, not percentage points.

| Metric | v027 | v028l | Relative change |
|---|---:|---:|---:|
| CE Statistics/Average Wave life cycles | 4,854.13 | 4,869.19 | +0.310% |
| GPU Throughput Statistics/AP MMA Duty ratio | 26.08% | 25.86% | -0.844% |
| GPU Throughput Statistics/AP MTE Duty ratio | 40.06% | 39.75% | -0.774% |
| GPU Throughput Statistics/AP active cycles | 4,052,073,145.0 | 4,086,674,625.0 | +0.854% |
| GPU Throughput Statistics/L2C Duty ratio | 0.14% | 0.15% | +7.143% |
| GPU Throughput Statistics/VLS Duty ratio | 0.0% | 0.0% | n/a |
| ISU Statistics/ISU stall cycles layout/valu_stall | 0.0 | 0.0 | n/a |
| ISU Statistics/ISU stall cycles layout/vls_pipeline_stall | 1189889414.0 | 1096505184.0 | -7.848% |
| ISU Statistics/ISU stall cycles layout/vls_wdata_stall | 95719708.0 | 95719708.0 | +0.000% |
| ISU Statistics/ISU stall cycles layout/wsm_stall | 136912764.0 | 101944876.0 | -25.540% |
| Memory Statistics/Global Memory Read bytes | 19,119,424,640.0byte | 19,375,002,624.0byte | +1.337% |
| Memory Statistics/Global Memory Write bytes | 6,102,580,288.0byte | 6,102,633,088.0byte | +0.001% |
| Memory Statistics/Private Read Instructions | 0 | 0 | n/a |
| Memory Statistics/Private Write Instructions | 0 | 0 | n/a |
| Memory Statistics/VL1 partition stall cycles layout/pt0 | 99989663.0 | 90028093.0 | -9.963% |
| Memory Statistics/VL1 partition stall cycles layout/pt1 | 101584186.0 | 89322516.0 | -12.070% |
| Memory Statistics/VL1 partition stall cycles layout/pt2 | 99372874.0 | 87952324.0 | -11.493% |
| Memory Statistics/VL1 partition stall cycles layout/pt3 | 102435815.0 | 90994804.0 | -11.169% |
| Occupancy/Achieved waves | 2,863,304.0 | 2,863,304.0 | +0.000% |
| Occupancy/Dispatched waves | 2,863,304.0 | 2,863,304.0 | +0.000% |
| Summary/Total Cycles | 8,150,687.96(Kcycles) | 8,075,607.86(Kcycles) | -0.921% |
| Workgroup Memory/average latency of all stages per instruction | 65.95 | 66.06 | +0.167% |
| Workgroup Memory/shared memory access efficiency | 100.0% | 100.0% | +0.000% |
