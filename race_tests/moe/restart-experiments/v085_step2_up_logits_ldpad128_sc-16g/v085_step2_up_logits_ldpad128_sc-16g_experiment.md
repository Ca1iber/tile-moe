# v085 experiment: Step2 `up_logits` leading-dimension padding

## Observed evidence

v084 的 `up_logits` FP16 行跨度在 Case1 为 16KB、Cases2/3 为 4KB，均为 2 的幂；物理压紧有效行没有收益，而 Step2 对 load 顺序敏感。

## Hypothesis

Step2 并发读多行时发生周期性 cache/set/bank 映射冲突。只给物理 leading dimension 增加 128 个 FP16 元素（256B），可在不改变逻辑流量、计算和 grid 的情况下打散行起点。

## Prediction and falsifier

- 预测：Step2 trace 明显下降，Step1 基本不变；三 Case 端到端均超过 1.2% 门槛；保持 2-wave、无 spill/async。
- 否证：AB/BA 不稳定、Step2 不改善、512B pitch 扰动仍同样改善，或任一 shape 正确性/合规/资源门禁失败。

## Change

相对 v084 仅两行变化：

- `intermediate_shape = (total_padded, intermediate + 128)`；
- `_workspace(stacked_expert_tokens, intermediate + 128)`。

所有逻辑索引继续使用原始 `intermediate`，新增列从不参与读写。

## Evidence

- 三 Case 完整 padded output correctness：PASS。
- OJ source + 三份 generated-device：PASS。
- 最终 MetaX ISA：2 kernels、256 MMA/kernel、2 waves、无 spill、无 async。
- 端到端中位变化：Case1 -4.315%，Case2 -4.602%，Case3 -4.438%。
- Case3 mcTracer：Step1 -0.547%，Step2 -12.750%。
- Case3 pitch 控制：+64B -3.448%，+256B -4.429%，+384B -2.653%，+512B +0.077%。

## Deviations

未取得外部 OJ 逐 Case 分数；未运行新的 mcProfiler cache/bank counter sweep。只声明本地因果证据，不把推测写成硬件定论。

## Outcome

本地候选成功并作为后续正常优化的父版本；依据当前 SOTA promotion contract，外部 OJ 待定使本版本状态为 `inconclusive`，不创建同 ID submission ledger。

完整报告：`race_tests/moe/restart-rep/v085_step2_up_logits_ldpad128_sc-16g/v085_step2_up_logits_ldpad128_sc-16g_report.md`。
