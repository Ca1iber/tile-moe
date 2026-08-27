# v110 后续未晋级方向（2026-08-27）

基线为外部 OJ 已确认 AC 的 v110。以下均为未编号探针，不创建版本分支或 submission：

1. padded routed-weight workspace：Case2 正确，3x30 中位变化 `-0.055%`，纯噪声。
2. dynamic-long expert 安全范围假设：生成代码资源由 `222 MT / 42 ST` 改善为 `222 / 36`，Case3 正确但 3x30 中位仅 `-0.033%`。
3. 直接内联精确 SiLU 消费：资源未改善并触发同类静态 race warning，Case1 中位约 `-0.513%`。
4. clamp-4.5 degree-5 SiLU：本地速度上界约 `-2.827%`，但八组压力测试中出现 OJ 容差 mismatch，因数值风险淘汰。

这些结果说明：仅减少静态指令或寄存器计数不足以形成真实性能收益；近似 SiLU 是有效方向，但必须提升多项式精度并将变化限制在 Case1。该线索最终导向 v147 degree-9 候选。
