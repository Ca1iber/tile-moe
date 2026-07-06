# v10 combine 占比 microbench

## 测量方法

- full latency 使用当前正式 dispatch 版本的 `v09_dispatch_full31.csv`。
- combine latency 使用一个 standalone TileLang kernel，逻辑等价于 `main_split` 的第二个 `T.Kernel(heads, batch)`。
- 占比计算为 `combine_only_ms / full_ms`。这不是删掉 combine 后做差分，因此会少量受独立 launch、输入 cache 状态影响，但能直接反映 combine 这段 reduce 的量级。
- benchmark: warmup=200, rep=100, heads=16, dim=512，`num_split` 按当前正式 dispatch 选择。

## 结果

| case | batch | kv_ctx | num_split | full ms | combine ms | combine/full |
|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 64 | 0.306861 | 0.045826 | 14.93% |
| 9 | 2 | 16384 | 32 | 0.316132 | 0.036241 | 11.46% |
| 13 | 4 | 8192 | 64 | 0.277229 | 0.045427 | 16.39% |
| 17 | 8 | 2048 | 32 | 0.127585 | 0.041192 | 32.29% |
| 21 | 8 | 65536 | 64 | 2.668369 | 0.045543 | 1.71% |
| 22 | 16 | 2048 | 32 | 0.166756 | 0.043527 | 26.10% |
| 25 | 16 | 32768 | 32 | 2.691087 | 0.039891 | 1.48% |
| 27 | 32 | 2048 | 32 | 0.277272 | 0.052900 | 19.08% |
| 29 | 32 | 16384 | 16 | 2.691277 | 0.039079 | 1.45% |
| 30 | 32 | 32768 | 16 | 5.259676 | 0.039549 | 0.75% |
| 31 | 32 | 65536 | 16 | 10.402304 | 0.039851 | 0.38% |

## 汇总判断

- 采样 case 的算术平均 combine 占比：11.46%。
- 按 latency 加权后的 combine 占比：1.86%。
- combine 的绝对时间主要随 `batch * heads * num_split * dim` 增长；它不直接随 `kv_ctx` 增长，但 `kv_ctx` 变大时 full attention 主体变重，所以 combine/full 通常下降。
