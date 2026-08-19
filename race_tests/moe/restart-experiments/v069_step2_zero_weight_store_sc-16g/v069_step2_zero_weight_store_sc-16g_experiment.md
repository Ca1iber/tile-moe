# v069_step2_zero_weight_store_sc-16g 实验记录

## 身份与假设

- 状态：rejected；机器：sc-16g。
- 基线/父版本/当前最佳：v062_step1_epilogue_prune_sc-16g。
- 假设：`out_local` 与 invalid routed weight 均为零，可无条件写出并消除 Step2 的两段 per-element `if/else`。
- 预测：padding 仍为零、generated control flow 缩减、三 Case 不回退。
- 证伪：任一 Case screen 明显回退。

## 结果

- 三 Case 正确性 PASS，padding 仍为 0。
- Case2/3 均仅 2/7 胜；Case2 回退约 0.037%，提前拒绝。
- 生成代码缩短但资源不变，说明额外无条件乘法/依赖抵消了分支缩减。
- 结论：rejected；不更新 submission。
- 证据报告：`../../restart-rep/v069_step2_zero_weight_store_sc-16g/v069_step2_zero_weight_store_sc-16g_report.md`
