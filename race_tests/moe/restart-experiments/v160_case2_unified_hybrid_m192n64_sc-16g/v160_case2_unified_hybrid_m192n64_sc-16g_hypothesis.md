# v160 hypothesis

Case2 与 Case1 具有同类 short/long expert row 分布。把 v159 mixed `M128N128/M192N64` Step1 扩展到 Case2，在不增加 CTA/waves 的前提下，应减少 long expert 的 padded MMA、Gate/Up 重复面板读取和 shared operand 流量。

门禁：三 Case 完整正确；OJ 静态合规；正式 Case2 5x50 AB/BA 均值至少快 1.2%；外部 OJ 前不得进入 submission ledger。

