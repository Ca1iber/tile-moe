# v029o vs v028l Case2 Step2 mcProfiler 摘要

## 有效对比

| Metric | v028l | v029o | Candidate vs parent |
|---|---:|---:|---:|
| Total Cycles | 17,825,756.75 Kcycles | 18,898,261.12 Kcycles | +6.017% |
| AP active cycles | 4,022,676,289 | 4,206,511,141 | +4.570% |
| AP MMA Duty ratio | 37.22% | 25.13% | -12.09 pp / -32.483% relative |
| Shared memory access efficiency | 94.55% | 100.00% | +5.764% relative |
| VL1 partition stall pt0 | 176,742,548 | 83,833,635 | -52.567% |
| VL1 partition stall pt1 | 166,249,220 | 83,476,827 | -49.788% |
| VL1 partition stall pt2 | 165,558,422 | 81,469,185 | -50.791% |
| VL1 partition stall pt3 | 164,883,633 | 84,077,288 | -49.008% |
| Private read / write instructions | 0 / 0 | 0 / 0 | unchanged |

## 无效或缺失字段

v029o 报告没有返回以下合法值：Average Wave life cycles、AP MTE Duty ratio、Global Memory Read/Write bytes、Achieved/Dispatched waves、shared average latency。原始比较器会从错误字符串（例如 `...VALU_4CYCLES...`、`...128B...`）误抓数字，`v028l_vs_v029o_mcprofiler.json` 中这些派生百分比一律无效，不得用于结论。

## 结论

VL1 stall 和 shared efficiency 的改善没有转化为性能收益。Total Cycles、active cycles、MMA duty 与 mcTracer Step2 一致表明 full-B 流水降低了计算管线有效活跃度；本次 targeted 数据不足以判断 HBM 流量、MTE duty 或动态 occupancy。
