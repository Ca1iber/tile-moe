# v012_step1_wide_cta_async_sc-16g 实验记录

## 身份

- 状态：rejected_as_general_async_solution
- 机器：sc-16g
- 基线版本：v011c_combined_step1_token
- 父提交：`9d7a30ab`，工作树起点为 v011c
- 当前最佳：v004_step2_router_weight_register_reuse_sc-16g
- 归档代表：v012d_v004_step1_async_step2
- v012d SHA-256：`36567e970732917eade4352ece2f91da3d83a673eb320834eea4c862c5ebb226`

## 假设卡

- Observed evidence / 已观测证据：v011c 的 inverse-source BSM 正确且能 overlap，但 Step1/Step2 的 N tile 分别从 v004 的 128/256 降到 64/128，Case3 grid x 从 16/28 翻倍为 32/56。
- Verified bottleneck / 已验证瓶颈：v011c 相对 v004 的主要差距在 Step1（10.172 vs 6.946 ms），说明增加 occupancy 不能抵消 CTA/input/metadata 重复。
- Current hypothesis / 当前假设：一个 CTA 处理两个相邻 64-column half，在同一 K tile 上复用一次 input，可恢复宽 grid，同时保留 32 KiB async shared 约束。
- Proposed mechanism / 拟采用机制：先仅改 Step1，再扩展 Step2；合并 half 间 consumer/producer fence；若 Step1 async 仍负收益，构造同步 Step1 + async Step2 的 hybrid 隔离阶段差异。
- Predicted metric changes / 预测指标变化：grid 恢复 v004；MT register 升高但无 spill；Step1 trace 和 Case3 OJ 显著下降。
- Falsifying result / 证伪条件：错误、spill、occupancy 低于 2，或严格配对仍不能击败 v004。
- Correctness and resource risks / 正确性与资源风险：四个 accumulator fragment 增加 MT 压力；shared buffer 覆盖前必须保留 consumer fence；两个 N half 的地址和 XOR row 需分别正确。

## 实施经过

- v012a：Step1 每 CTA 处理两个 64-N half，Step2 保持 v011c。OJ 3.389/6.135/11.985 ms；Case3 trace Step1 7.407616 ms、Step2 4.542464 ms。
- v012b：同结构扩展到 Step2。OJ 3.178/5.702/11.080 ms。
- v012c：合并 half0 consumer 与 half1 producer fence，并合并 half1 consumer 与下一轮 half0 producer fence。OJ 3.134/5.592/10.922 ms；但两组完成的严格配对中，v004 10.6485 ms、v012c 10.9013 ms，v012c 慢 2.37%。第三组因主机内存竞争被杀，不纳入均值。
- v012d：恢复 v004 同步 Step1，只保留 v012c async Step2。OJ 3.100/5.318/10.510 ms；Case3 trace Step1 6.912512 ms、Step2 3.576064 ms、span 10.491392 ms。它证明 async 仅在 Step2 长/高-grid case 有局部价值；Case1 Step2 则比 v004 约慢 4.8%。
- v012e：在继续检查 v004 ISA 时发现 Step2 256 MT/38 ST 与真实 private spill，于是转向“同步全宽搬运 + split accumulator”。这是新的寄存器压力机制，正式提升为 v013，不参与 v012 async 假设的 verdict。
- 相对计划的偏离：按证据从 Step1-only 扩到 Step2，再构造 hybrid；没有因 v012c 负优化立即放弃，而是通过 trace 定位为 Step1 token 成本与短 Case1 async overhead。
- Source snapshot：`v012_step1_wide_cta_async_sc-16g_custom_fusedmoe.py`（v012d）
- Patch：`v012_step1_wide_cta_async_sc-16g.patch`

## 结果

- 结论：rejected_as_general_async_solution。宽 CTA 修复了 v011 的翻倍 grid，但 explicit BSM/token/fence 仍不能稳定超过 v004；仅 Step2 长 case 的 hybrid 有局部收益。
- 证据报告：`../../restart-rep/v012_step1_wide_cta_async_sc-16g/v012_step1_wide_cta_async_sc-16g_report.md`
