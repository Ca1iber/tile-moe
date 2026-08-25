# v140 MFMA layout flag no-op（16g）

## 1. 上版本遗留问题

v130 对 v110 的 mcProfiler 复测显示 Step1 占端到端约 62–66%，MMA duty 约
51.6–54.7%，因此 shared-to-register operand feed 仍是值得验证的方向。上一版
v139 已否证 `__builtin_mxc_ldg_b128_bsm`：它是 global-to-shared async copy，
不是 `ldmatrix_b` 的同步替代。

## 2. 问题原因分析

已验证：v110 的 inline emitter 最终调用 `T.tvm_mfma(shape, "row", "row", ...)`；
MetaX codegen 会读取这两个布局字符串。当前推测是布局标志或许能选择另一种
操作数供给模式。需要验证的是：改标志是否真的改变 generated device code，
而不是仅改变 TIR 文本。

## 3. 本版本解决方案

只把 MFMA 第二个布局标志从 `row` 改为 `col`，其余 shared layout、fragment
layout、tile、grid、同步和计算顺序全部保持 v110。目标是以最小变更触发布局
相关 MFMA lowering；风险是后端忽略该标志，形成编译期 no-op。

## 4. 具体落地策略

- 父版本：`restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`。
- 变更位置：inline `MinimalMacaMMA.mma()` 的 `T.tvm_mfma` 调用。
- 原子 patch：`"row", "row" -> "row", "col"`。
- 对三个官方 shape 分别捕获完整 generated device source 和 compiler resource usage。
- 先做 codegen identity gate；同码则不进入 AB/BA/profile。

## 5. Benchmark 对比

| 版本 | Case1 | Case2 | Case3 | 相对上版本 | 备注 |
|---|---:|---:|---:|---:|---|
| OJ baseline | 11.251 ms | 18.610 ms | 35.875 ms | baseline | 官方 SPJ |
| v110 | 2.243 ms | 3.954 ms | 7.680 ms | previous | 外部 OJ AC/SOTA |
| v140 | TODO | TODO | TODO | 0% code delta | 三 case 生成码与 v110 字节级一致，故不计时 |

TODO 的含义不是缺跑：v140 没有独立机器码，任何 benchmark 差异都只能是噪声，
不能作为 1.2% 候选证据。

## 6. Profile 指标变化

| 指标 | v110 | v140 | 变化 | 解释 |
|---|---:|---:|---:|---|
| Case1 Step1 MT/ST/waves | 226/42/2 | 226/42/2 | 0 | 同码 |
| Case1 Step2 MT/ST/waves | 202/52/2 | 202/52/2 | 0 | 同码 |
| Case2/3 Step2 MT/ST/waves | 220/52/2 | 220/52/2 | 0 | 同码 |
| MMA sites | 8 | 8 | 0 | 三 case 均相同 |
| sync sites | 9 | 9 | 0 | 三 case 均相同 |

TODO: 无独立 mcProfiler/mcTracer 数据。由于设备代码逐字相同，不应为该 flag
重复采集并归因 profile 指标。

## 7. 实验总结

方案无效，并在 codegen gate 处拒绝。当前 MetaX 后端只检查至少一个 layout
为 `row`，随后仍发同一个 `__builtin_mxc_mma_16x16x16f16`；三个官方 case
的父子生成码哈希和资源完全一致。v140 不进入计时、不创建 submission，v110
保持 SOTA。除非后端新增 layout-dependent MFMA，单改 `row/col` 不再重试。
