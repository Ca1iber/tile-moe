# v59 Step1 长 expert 等面积 single-A（sc-16g）

在 v070 `BM256×BN64 / 4 waves` 长核上关闭双 A fragment，目标是消除 256 registers/thread 与 private-memory 代价。

结果：资源目标实现，long kernel 降到 222 registers/thread、private total 0，并从约 2.081 ms 缩到 1.295 ms；但拆分 Step1 仍为 2.025 ms，相对 v59 的 1.738 ms 回退 16.502%。端到端 `2.779 -> 3.054 ms`，中位回退 9.889%。Step1→Step2 空泡反而更小，Step2仅变化0.286%。

结论：减少 A live state 确实有效，但同步 single-A 丢失的 tile 内 load/MMA 重叠仍使等面积长核不敌两个 v59 CTA。完整证据：`restart-rep/v071_step1_long_isoarea_singlea_sc-16g/`。
