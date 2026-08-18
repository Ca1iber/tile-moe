# v059_teammate_79_33_case1_grid_sc-16g 实验记录

## 身份

- 状态：inconclusive（本地优于 v058，缺外部 OJ promotion evidence）
- 机器：sc-16g
- 候选来源：Windows Desktop `79.33.txt`
- Candidate SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- Source parent：v058 teammate `79.txt`

## 假设卡

- Observed evidence：v058 Case1 的 Step2 约 1.12 ms，且 expert/CTA 顺序交错。
- Verified bottleneck：v058 已消除大部分 tail-row work，Case1 剩余收益主要在 Step2。
- Current hypothesis：按 expert 聚合 Case1 Step2 CTAs 可改善 cache/locality 与调度顺序。
- Proposed mechanism：仅在 exact Case1 shape 下启用 non-aliasing one-element local CTA coordinates 和 grouped mapping。
- Predicted metric changes：Case1 Step2 降低，Step1/Case2/Case3 不变；grid/waves 不变。
- Falsifying result：correctness 失败，Step1 显著变化，或 Step2/端到端收益不超过噪声。
- Risks：CTA mapping alias、越界、隐藏样例中相同 total 但不同 expert distribution。

## 结果

- 三个独立参考形状 PASS；Case1 相对 v058 `1.03413x`。
- mcTracer：Step1 `-0.16%`，Step2 `-7.71%`；符合预测。
- Case2/3 与 v058 持平；生成代码无 async/foreign marker。
- Verdict：local winner / OJ promotion inconclusive。
