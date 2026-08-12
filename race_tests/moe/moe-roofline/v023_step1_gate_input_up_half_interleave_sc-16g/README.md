# v023 Case2 Step1 Roofline（插桩诊断）

本目录只保存 `v023_step1_gate_input_up_half_interleave_sc-16g` 的 Roofline 证据。

- 算法 FLOP 数：360,777,252,864。
- 算术强度：84.828402 FLOP/byte；v022 与 v023 工作量相同。
- Compute roof：160 TFLOP/s。
- `physical_theoretical=1843.2 GB/s`：整卡物理理论参考。
- `sc16_measured_conservative=1400 GB/s`：25% slice 的保守 sensitivity roof，不冒充精确上限。
- 图中时间来自 warmup=10、每窗 20 次 kernel 的 mcTracer median，再对两个 AB/BA pair 取中位。

重要限制：mcTracer 挂载后 v023 Step1 为 3.511936 ms，父版本为 3.288192 ms，方向与无插桩 OJ 长窗的 `-2.232525%` 相反。因此图中点只反映插桩环境的诊断吞吐，已标记 `QUARANTINED`，不能用于 OJ 提交性能裁决。无插桩 OJ 只给 Step1+Step2 合计时间，无法严谨拆出 Step1 Roofline 点，所以没有伪造一个“无插桩 Step1 点”。
