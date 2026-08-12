# v014 synchronized mx-smi sampling unavailable

- 状态：snapshot available; synchronized long-workload sampling not run。
- 原因：v014 在 clean paired OJ 与 mcTracer 中均未获得超噪声 latency 收益，未晋级 full verdict。没有可归因的性能变化时，追加 HBM/AP 长负载无法证明该机制有效。
- 本目录保存关闭时的只读设备快照；不把 v013 的 1060.849 GB/s 稳态中位数复制成 v014 测量。
