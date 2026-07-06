# v13 swizzle sweep

## 测量目的

在正式优化 PV path 前，先调 `T.use_swizzle` 的 panel/order，确认当前默认 `row10` 是否合适。

## 配置

- 候选：`none`, `row2`, `row4`, `row8`, `row10`, `row16`, `row32`, `col4`, `col8`, `col10`, `col16`。
- sample cases: [5, 9, 17, 21, 22, 25, 27, 29, 31]。
- benchmark: warmup=300, rep=100, heads=16, kv_heads=1, dim=512, pe_dim=64, BLOCK_N=32, BLOCK_H=16，num_split 使用当前正式 dispatch。
- 不跑 correctness；只比较同一源码变体的 runtime。

## 每个 case 最优

| case | batch | kv_ctx | split | row10 ms | best | best ms | speedup |
|---:|---:|---:|---:|---:|---|---:|---:|
| 5 | 1 | 32768 | 64 | 0.330776 | row2 | 0.329777 | 1.0030x |
| 9 | 2 | 16384 | 32 | 0.334721 | row32 | 0.331259 | 1.0105x |
| 17 | 8 | 2048 | 32 | 0.113012 | row8 | 0.110447 | 1.0232x |
| 21 | 8 | 65536 | 64 | 2.875330 | none | 2.799306 | 1.0272x |
| 22 | 16 | 2048 | 32 | 0.177604 | none | 0.172425 | 1.0300x |
| 25 | 16 | 32768 | 32 | 2.899032 | none | 2.830127 | 1.0243x |
| 27 | 32 | 2048 | 32 | 0.295544 | none | 0.289209 | 1.0219x |
| 29 | 32 | 16384 | 16 | 2.692944 | row10 | 2.692944 | 1.0000x |
| 31 | 32 | 65536 | 16 | 10.413910 | none | 10.124346 | 1.0286x |

## 汇总

- 算术平均 best/row10 speedup: 1.0188x。
- 按 sample latency 加权 best/row10 speedup: 1.0230x。
- 如果最优配置分散且加权收益很小，说明 swizzle 不是当前主线优化点；如果某个配置稳定优于 row10，再合入正式 kernel。

## 重点 case 复测

初扫显示 `none` 在多个重点 case 上优于 `row10`，但 case29 有反常波动；因此对重点 case 做 3 次重复测量。

| case | batch | kv_ctx | split | candidate | row10 avg ms | candidate avg ms | speedup |
|---:|---:|---:|---:|---|---:|---:|---:|
| 17 | 8 | 2048 | 32 | row8 | 0.112839 | 0.113596 | 0.9933x |
| 21 | 8 | 65536 | 64 | none | 2.818852 | 2.766301 | 1.0190x |
| 22 | 16 | 2048 | 32 | none | 0.170803 | 0.165227 | 1.0337x |
| 25 | 16 | 32768 | 32 | none | 2.844175 | 2.785619 | 1.0210x |
| 27 | 32 | 2048 | 32 | none | 0.290073 | 0.285702 | 1.0153x |
| 29 | 32 | 16384 | 16 | none | 2.849329 | 2.774114 | 1.0271x |
| 31 | 32 | 65536 | 16 | none | 11.031296 | 10.740025 | 1.0271x |

复测结论：`row8` 在 case17 不稳定，复测略慢；`none` 在 case21/22/25/27/29/31 均优于 row10，重点长 ctx case 的收益约 1.9%-2.7%。下一步将正式移除 split kernel 的 `T.use_swizzle(10)` 并跑全量 31 case。

## 正式 no-swizzle 全量验证

将 `race_tests/mla/test_tilelang_mla.py` 中 split kernel 的 `T.use_swizzle(10)` 移除后，带 `MACA_PATH=/opt/maca-3.5.3` 跑全量 31 case。

- correctness: 31/31 PASS。
- v09 dispatch sum latency: 42.442481 ms。
- v13 no-swizzle sum latency: 41.514956 ms。
- 按总 latency 加权 speedup: 1.0223x。
- per-case 算术平均 speedup: 1.0108x。

| case | batch | kv_ctx | v09 ms | v13 no-swizzle ms | speedup |
|---:|---:|---:|---:|---:|---:|
| 21 | 8 | 65536 | 2.668369 | 2.630407 | 1.0144x |
| 25 | 16 | 32768 | 2.691087 | 2.618859 | 1.0276x |
| 27 | 32 | 2048 | 0.277272 | 0.277480 | 0.9993x |
| 29 | 32 | 16384 | 2.691277 | 2.618020 | 1.0280x |
| 30 | 32 | 32768 | 5.259676 | 5.117359 | 1.0278x |
| 31 | 32 | 65536 | 10.402304 | 10.140728 | 1.0258x |

结论：no-swizzle 在全量 correctness 通过，并在总 latency 上优于 v09；当前可以保留这个正式改动。

## no-swizzle 全量复跑

用户希望再次确认 no-swizzle 全量结果，因此重新带 `MACA_PATH=/opt/maca-3.5.3` 跑 31 case。

- correctness: 31/31 PASS。
- v09 dispatch sum latency: 42.442481 ms。
- v13 no-swizzle rerun sum latency: 41.462043 ms。
- 相对 v09 speedup: 1.0236x。
- 复跑 CSV: `race_tests/mla/mla_experi/v13_noswizzle_full31_rerun.csv`。
- 复跑对比 CSV: `race_tests/mla/mla_experi/v13_noswizzle_rerun_vs_v09.csv`。

| case | batch | kv_ctx | v09 ms | rerun ms | speedup |
|---:|---:|---:|---:|---:|---:|
| 21 | 8 | 65536 | 2.668369 | 2.613383 | 1.0210x |
| 25 | 16 | 32768 | 2.691087 | 2.615879 | 1.0288x |
| 29 | 32 | 16384 | 2.691277 | 2.614108 | 1.0295x |
| 30 | 32 | 32768 | 5.259676 | 5.118289 | 1.0276x |
| 31 | 32 | 65536 | 10.402304 | 10.136662 | 1.0262x |
