# v067_step1_activation_shape_specialize_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g
- 基线/父版本/当前最佳：v062_step1_epilogue_prune_sc-16g
- Candidate SHA-256：`c82f99a72cb6282feac2a9a12adac5b695eae6e768ddbc1acaaee310b5b666f2`

## 假设卡

- Observed evidence：v066 的直接写回使 Case1/3 正向、Case2 回退。
- Verified bottleneck：Case2 回退来自该 shape 的 epilogue 代码变化；不是全局调度变化。
- Current hypothesis：用 `num_experts` 编译期特化可保留 Case1/3 机制，同时让 Case2 完全回到 v062。
- Proposed mechanism：32 experts 使用 v062 写回；其余官方 shape 使用直接写回。
- Predicted metric changes：Case2 codegen SHA 与 v062 相同；Case1/3 不回退。
- Falsifying result：Case1/3 任一正式配对回退。
- Correctness/resource risks：静态分支应被 lowering 消除；若没有消除则拒绝。

## 实施与结果

- Case2 codegen 与 v062 byte-identical，静态隔离成功。
- 三 Case 正确性 PASS。
- Case3 10/13 改善，Case2 中性；Case1 5/13 回退，且与 v066 的正向结果共同表明它落在噪声带。
- 结论：rejected；不更新 submission。下一轮只对 64 experts 启用。
- 证据报告：`../../restart-rep/v067_step1_activation_shape_specialize_sc-16g/v067_step1_activation_shape_specialize_sc-16g_report.md`
