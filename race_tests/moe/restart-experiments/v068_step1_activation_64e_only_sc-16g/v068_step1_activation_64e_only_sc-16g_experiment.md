# v068_step1_activation_64e_only_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g
- 基线/父版本/当前最佳：v062_step1_epilogue_prune_sc-16g
- Candidate SHA-256：`c68684b68bc117682e0dfe0ae82cea16344690a70026a06aaa6b78ae7ab2f09a`

## 假设卡

- Observed evidence：v066/v067 中 Case3 两次 10/13 正向；Case1 不稳定，Case2 已隔离。
- Verified bottleneck：唯一待验证变量是 64 experts 的 Step1 activation epilogue 表达式。
- Current hypothesis：仅对 64 experts 启用直接写回可保留 Case3 收益，其他 shape 原码不动。
- Proposed mechanism：16/32/64 experts 使用三个编译期独立分支；前两者保留 v062，64 experts 使用 `gate_value` 直接写出。
- Predicted metric changes：Case1/2 codegen byte-identical；Case3 第三次稳定正向。
- Falsifying result：Case3 正式复测回退或胜场不足。
- Correctness/resource risks：独立条件可能扰动 lowering，因此先做 SHA 门禁。

## 实施与结果

- 前两个条件写法会扰动 Case1 codegen，均在 benchmark 前原地修正；最终独立 equality 分支使 Case1/2 与 v062 byte-identical。
- 三 Case 正确性 PASS。
- Case3 第三次正式配对为 3/13、paired 中位回退 0.002038 ms，假设被证伪。
- 结论：rejected；不更新 submission，停止此机制。
- 证据报告：`../../restart-rep/v068_step1_activation_64e_only_sc-16g/v068_step1_activation_64e_only_sc-16g_report.md`
