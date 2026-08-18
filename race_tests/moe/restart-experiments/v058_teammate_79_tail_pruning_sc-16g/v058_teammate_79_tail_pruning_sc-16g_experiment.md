# v058_teammate_79_tail_pruning_sc-16g 实验记录

## 身份

- 状态：inconclusive（本地胜出，缺外部 OJ per-case promotion evidence）
- 机器：sc-16g
- 基线/父版本：v027 / `0d02ed217409347548c9298d14fc9b19b0844e11`
- Candidate SHA-256：`d728a71570e3d67afdf21588783a5e29f1042d8eba644d41ee55d0389cd4b462`

## 假设卡

- Observed evidence：official distribution 的 expert sizes 为 100/184，128-row tile 导致 26.04% row slots 为 padding。
- Verified bottleneck：v027 的 Step1/Step2 都为大 GEMM 阶段；Case3 尤其受冗余 row work 影响。
- Current hypothesis：按 MMA warp 的 32-row 粒度屏蔽无效尾行，比继续完整执行 128-row tile 更快。
- Proposed mechanism：只搬运 `i < actual_rows` 的输入；当 warp 的 row base 不小于 `actual_rows` 时跳过该 warp 的 MMA。
- Predicted metric changes：Step1/Step2 duration、Memory Instructions、L2C Read Instructions 下降；grid/waves 不变。
- Falsifying result：任一官方形状 correctness 失败，或 paired timing 无显著改善，或生成代码出现 async/foreign marker。
- Correctness/resource risks：条件 MMA 可能造成线程分歧、未初始化 fragment、寄存器增长或同步错误。

## 实施与结果

- 评测 teammate `79.txt` 原样源码（保留 CRLF 并用 `.gitattributes -text` 固化字节身份）。
- 三个官方形状 correctness PASS；paired speedup `1.110x / 1.077x / 1.185x`。
- mcTracer 和 mcProfiler 指标按预测变化，生成 C++/ISA 禁用 marker 0 命中。
- Verdict：local accepted / OJ promotion inconclusive；不创建 `restart-submission`。
- 详细证据：`../../restart-rep/v058_teammate_79_tail_pruning_sc-16g/v058_teammate_79_tail_pruning_sc-16g_report.md`
