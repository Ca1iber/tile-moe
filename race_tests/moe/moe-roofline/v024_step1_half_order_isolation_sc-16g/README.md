# v024 Case2 Step1 Roofline（插桩诊断）

本目录只保存 `v024_step1_half_order_isolation_sc-16g` 的 Roofline 证据。

- 算法 FLOP 数：360,777,252,864。
- 算术强度：84.828402 FLOP/byte；v023 与 v024 工作量相同。
- Compute roof：160 TFLOP/s。
- `physical_theoretical=1843.2 GB/s`：整卡物理理论参考。
- `sc16_measured_conservative=1400 GB/s`：25% slice 的保守 sensitivity roof，不冒充精确上限。
- 图中时间来自四组 AB/BA 单次 mcTracer 的各版本 Step1 median：v023 3.374464 ms，v024 3.449344 ms。

重要限制：mcTracer 的四个配对变化方向混合，中位 `-1.0531%`、均值 `+0.7218%`，且图中聚合中位表现为 v024 更慢；这与未插桩同进程长窗 4/4 提升、中位 `-1.8934%` 不一致。因此两点都标记为 `QUARANTINED`，只描述插桩环境中的诊断吞吐，不能用于 OJ 裁决。

无插桩 OJ 只提供 Step1+Step2 合计时间，无法严谨拆出 Step1 Roofline 点，本版本不伪造该数据。
