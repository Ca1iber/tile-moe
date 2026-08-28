# v159 hypothesis

Case1 的 expert row 数分布包含 short 与 long 两类。父版本统一使用 `M128N128` 时，long expert 需要更多 M slots，并重复读取相同 Gate/Up 面板。保持总 CTA/wave 数不变，将 long slot 改为 `M192N64`，同时与 short slot 合成一个 mixed grid，应减少 long 路径 padded MMA 和重复 B operand 流量，而不引入额外 launch。

门禁：三 Case 完整正确；OJ 静态合规；正式 Case1 5x50 AB/BA 均值至少快 1.2%；外部 OJ 前不得进入 submission ledger。

