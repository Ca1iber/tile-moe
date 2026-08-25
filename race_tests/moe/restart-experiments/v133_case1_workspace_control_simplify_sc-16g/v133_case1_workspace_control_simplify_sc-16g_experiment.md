# v133_case1_workspace_control_simplify_sc-16g 实验记录

## 身份

- 状态：rejected_below_1p2_gate
- 机器：sc-16g
- 基线版本：external-OJ-AC v110
- 父版本：`v110_case1_unpredicated_native_up_logits_sc-16g`
- 当前 OJ SOTA：v110 / `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e` / `[0.833778,0.824765,0.823671]`
- Kernel 路径及 SHA-256：`restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py` / `439a2b80...509e`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：相对 exact v110，v113 仅取消 Case1 Step1 native workspace 写谓词，中位约 `-0.624%`；v124 仅证明 Case1 Step2 `by` 有界，中位约 `-0.587%`。两者分别作用于 Step1/Step2，均通过正确性但单项低于 1.2%。
- Verified bottleneck / 已验证瓶颈：Case1 Step1/Step2 分别约占 65.65%/33.39%；native workspace 是两阶段 producer/consumer 边界。v110 已验证 Case1 Step2 无谓词 native 读取有效，说明 padding workspace 值对有效输出无语义影响。
- Current hypothesis / 当前假设：两个独立 stage 的冗余控制成本可近似相加，组合可能达到约 1.2%，且不会改变逻辑 global bytes、MMA 或 barrier。
- Proposed mechanism / 拟采用机制：仅 Case1 复用已有 `use_unpredicated_native_reads` 编译期标志，让 Step1 native `up_logits` 写回同样无 row predicate；同时只对 expert-grouped Step2 添加 `0 <= by < step2_col_tiles` 的 `T.assume`。Cases2/3 应 byte-identical。
- Predicted metric changes / 预测指标变化：Case1 Step1/Step2 generated code 均变化，资源档不恶化；Case1 端到端严格 AB/BA 至少 `-1.2%`，Cases2/3 generated code byte-identical。
- Falsifying result / 证伪条件：OJ/source 或完整正确性失败、资源恶化、Cases2/3 机器码变化，或 Case1 严格配对中位不足 `-1.2%`，立即 reject。
- Correctness and resource risks / 正确性与资源风险：padding 行可能写入未定义数值，但 Case1 Step2 只需有效行且最终 store 对 invalid rows 置零；静态 race checker 可能无法证明 native 映射 injective，需保留 warning 并以完整输出及外部 OJ 为门禁。

## 实施经过

- 实际改动：仅 Case1 同时启用 Step1 native `up_logits` 无 row predicate 写回，并为 expert-grouped Step2 增加 `0 <= by < step2_col_tiles` 的编译期 `T.assume`。
- 相对计划的偏离：无。Cases2/3 generated C++ 与 v110 字节级一致；Case1 静态 race checker 如预期提示无谓词 workspace 写回，但完整有效行正确性通过。
- Source snapshot：`v133_case1_workspace_control_simplify_sc-16g_custom_fusedmoe.py`
- Patch：`v133_case1_workspace_control_simplify_sc-16g.patch`
- Candidate submission：`candidate_submission.py` / `df71cd0f34a21bf9a5dd7ed725c8c184606ad875d7d2f051b8417b247d05d8be`；未创建 `restart-submission/`。

## 结果

- 结论：rejected。Case1 五轮严格 AB/BA 中位加速 `0.793638%`、均值 `0.823805%`、总体标准差 `0.113785%`，方向稳定但未达到 `1.2%` 候选门槛。说明两个历史小收益存在重叠，不能线性叠加。
- 证据报告：`../../restart-rep/v133_case1_workspace_control_simplify_sc-16g/v133_case1_workspace_control_simplify_sc-16g_report.md`
