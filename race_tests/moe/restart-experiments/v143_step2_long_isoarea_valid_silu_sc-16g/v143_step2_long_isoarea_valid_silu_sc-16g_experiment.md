# v143 实验说明

> **最终状态：external-OJ-WA / rejected。** 外部 OJ 已拒绝该版本；同 shape 下交错排列 short/long expert 可稳定复现错误。根因和动态修复筛选见 `../../restart-deped-trials/20260826_v143_external_oj_wa_root_cause_sc-16g.md`。本文件下方的 locally-qualified 结论仅保留为当时本地固定分布的历史记录，不得作为候选资格或收益证据。

- 机器：sc-16g，C500 25% sGPU。
- 精确父版本：v110 external-OJ-AC，SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 候选 SHA256：`adfd87cde345adeb8b3abe43b1350a13811c2ceae707beffbbf5bedad67c1b78`。
- 改动：Case3 的 184-row expert 使用 `M256 x N128` Step2 CTA，在同一 CTA 内复用 Down 权重处理上下两个 M128 行半块；100-row expert 保留 `M128 x N256`；Step1 SiLU 仅作用于真实行。
- 安全性：TileLang 公共原语；无 async copy、无代码注入、无外部源码、无结果缓存。
- 正确性：三种官方 shape 相对 v110 均 bit-exact（`max_abs=0`）。
- 长测：三 Case 同进程 AB/BA 5轮，warmup=20，repeat=50。
- 结果：Case1/2/3 配对中位延迟变化分别为 `-0.520975% / -0.220410% / -1.281834%`；Case3 五轮全部越过 1.2% 门槛。
- Profile：Case3 三对 AB/BA mcTracer 显示 Step2 总时间中位下降 `3.3413%`、GPU span 下降 `1.3283%`；Step1 汇编静态指令减少 160 条，主要是 `snop`。
- 状态：locally-qualified、external OJ pending。正式 `restart-submission/SOTA.json` 仍指向 v110。
- 累计目标：本跳按 Case3 配对中位下降换算加速比为 `1.0129848x`；从 v110 到 1.05x 目标尚需再连乘 `1.0365407x`。同时记录更严格的三 Case 几何平均累计 `1.0068001x`。
