# v040 Step1 split-wave continuous BSM

## 假设与底层证据

v039 Case1 Step1 每个 K tile 通过同步 LDG→STS 搬运 gate/up 两个 128x64 FP16 权重块，主循环由两次 CTA barrier 串起 load、MMA 和覆盖。Step1 mcTracer 约 2.05 ms，占端到端约 68%。本轮检验能否把两路权重都迁移到 continuous BSM，并用 wave 0/1 搬 gate、wave 2/3 搬 up，使四个 wave 都有搬运工作且每线程维持八次 16-byte 请求。

## 追因过程

- 同步 uint4 gate-only two-wave 正确但回退 +4.7261%，说明仅减少 load wave 不成立。
- gate-only continuous two/four-wave 分别回退 +3.8447% / +3.9054%。生成 C++ 证明混用 extern 写 gate shared 与 `T.copy` 写 up shared 会额外插入一次动态 CTA barrier。
- gate/up 都用 four-wave continuous 后，额外 barrier 消失并小幅提升 -0.2186%。
- 将两路分给两组 wave 后相对 four-wave 中间版 7/7 提升，随后在最终修正版相对 v039 的 13 对 AB/BA 中 13/13 提升，中位 -2.61518%、均值 -2.62202%。
- 新增 cache-key flag 时曾漏改 `make_kernel` factory 签名；Case2/3 C++ SHA 检查发现 flags 错位。修复后 Case2/3 C++ 恢复与 v039 字节一致，所有接受证据从零重跑。

最终 submission SHA-256：`ea74ce0311e63bba27ad6464a6875baf1dbd33ef1b768c84c271996d3b26cb8a`。
