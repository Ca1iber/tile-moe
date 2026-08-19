# v066_step1_activation_direct_store_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g
- 基线/父版本/当前最佳：v062_step1_epilogue_prune_sc-16g
- Candidate SHA-256：`d83efaa4168dcb2d7e969c965a431911db46d01df19e500beb9fec985258ae15`

## 假设卡

- Observed evidence：v062 已用 `actual_rows` 跳过 padding epilogue，但先把激活结果写回 `gate_local`，随后再次读取。
- Verified bottleneck：Case1 仍主要受 Step1 支配，epilogue 是可缩减的非 MMA 工作。
- Current hypothesis：消除 gate fragment 写回可缩短 epilogue 依赖链或降低 store-register 压力。
- Proposed mechanism：保存标量 `gate_value`，在最终 `up_logits` 写出表达式中直接完成 SiLU 和乘法。
- Predicted metric changes：generated code 改变；ST registers 不增；三 Case 不回退。
- Falsifying result：任一 Case 正式配对出现稳定回退，或资源占用增加。
- Correctness/resource risks：表达式重排可能改变 fp16 舍入；更长单条表达式也可能增加寄存器或依赖链。

## 实施与结果

- 实际改动：移除 `gate_local[i,j] = ...` 写回，直接计算最终值。
- 正确性：三 Case PASS，最大误差与 v062 门限一致。
- 资源：Case1 Step1 ST registers 54 -> 52，MT registers 222 不变。
- 正式结果：Case1/3 微幅改善；Case2 仅 5/13 胜且配对中位回退 0.001764 ms。
- 结论：rejected；不更新 submission。下一步做 compile-time shape specialization。
- 证据报告：`../../restart-rep/v066_step1_activation_direct_store_sc-16g/v066_step1_activation_direct_store_sc-16g_report.md`
