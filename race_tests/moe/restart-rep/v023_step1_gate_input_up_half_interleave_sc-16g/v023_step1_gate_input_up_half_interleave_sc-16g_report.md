# v023 Step1 gate/input/up half interleave 报告

## 结论

`v023_step1_gate_input_up_half_interleave_sc-16g` 接受并安装为当前 `custom_fusedmoe.py`。

本版本只特化 OJ Case2 的 Step1 staging：在 v022 的 `gate-half -> input-half` 基础上，把 up 权重也拆成两个半块，形成 `gate0 -> input0 -> up0 -> gate1 -> input1 -> up1`。Case1、Case3 走原路径。

提交性能裁决以无插桩、fresh-process、AB/BA 配对的 OJ elapsed time 为准：第二轮 4/4 配对均提升，中位变化 `-2.063507%`；2,000-repeat 长窗 2/2 均提升，中位变化 `-2.232525%`。所有样本最大误差均为 `0.001953125`。

mcTracer 和 mcProfiler 对该候选产生与无插桩 OJ 相反的方向，因此其时间/周期只作为“插桩行为诊断”，不替代提交性能结论。该矛盾被完整保留，不做选择性隐藏。

## 改动与假设

- 父版本 v022 已把 gate 和 input 按半块交错，但 up 仍是一个完整 128-row copy。
- v023 把 up 也拆成两个 64-row copy，希望降低每组连续 global-load burst，并改变后端 load/store/wait 排布。
- 算术量、global/shared 指令总数、同步点、寄存器和占用目标不应变化；预期收益来自静态指令的排布，而非减少工作量。

## 权威 benchmark

### Case2 OJ 配对

| 协议 | 父版本中位数 | 候选中位数 | 配对变化 | 正确性 |
|---|---:|---:|---:|---|
| Round 1, 4 pairs, repeat=100 | 5.077333 ms | 4.979562 ms | median `-2.011301%`，3/4 提升；1 个候选热态离群 | PASS |
| Round 2, 4 pairs, repeat=100 | 5.084358 ms | 4.978148 ms | median `-2.063507%`，4/4 提升 | PASS |
| Long, 2 pairs, repeat=2000 | 5.085677 ms | 4.972137 ms | median `-2.232525%`，2/2 提升 | PASS |

Round 2 的四个配对变化分别为 `-2.120534%`、`-2.057412%`、`-2.040194%`、`-2.069601%`。长窗两个配对变化为 `-2.259703%`、`-2.205346%`。

### 官方 benchmark 与全 case 正确性

- 官方 functional：2/2 PASS。
- 官方 performance：80.544512 ms、25.476128 ms；父版本归档值为 80.630835 ms、25.546143 ms。
- 源码态 OJ Case1/2/3：全部 PASS，最大误差均 `0.001953125`。
- 安装态 OJ Case1/2/3：全部 PASS，当前提交入口 SHA256 为 `b250a2ce37a29ac0434b3d34011642ffca10251126895d9fc69a9d07b9770c7d`。
- 安装态 Case2 repeat=2000：5.274644 ms、PASS；同步 mx-smi 命中 6 个 95% sGPU 高负载样本，显存 3986/16000 MiB。该独立绝对值受设备热态影响，仅用于持续运行和入口身份验证。

## TileLang lowering、C++ 与汇编

### 隔离性

- Case1 生成 C++ SHA256：v022 与 v023 均为 `1a50eb0e818191e7cd9b077a5acd0ad88551aec4ac63b844f3e7d8ff670626f3`。
- Case3 生成 C++ SHA256：v022 与 v023 均为 `c80f44d8cb492426128f8b984e7279b4110d66c3adb9e54114e4ca80518c2db8`。
- 因此源码特化没有改变 Case1/3 后端产物。

### Case2 资源

| 项目 | v022 | v023 |
|---|---:|---:|
| Step1 MT / ST | 212 / 52 | 212 / 52 |
| Step2 MT / ST | 196 / 28 | 196 / 28 |
| Step1 静态最大 waves/PEU | 2 | 2 |
| Step1 C++ syncthreads sites | 7 | 7 |
| Step1 static MMA | 256 | 256 |
| Step1 global load/store | 42 / 16 | 42 / 16 |
| Step1 shared load/store | 64 / 16 | 64 / 16 |
| Step1 private load/store | 0 / 0 | 0 / 0 |
| Step1 barrier / arrive | 4 / 92 | 4 / 92 |

v023 没有增加 spill，也没有改变静态访存/MMA 数量。Step1 text 仍为 25,856 bytes、3,232 条静态指令；主要可数差异只有 `mov_b32` 81 -> 82，但汇编寄存器分配与若干 load/store/wait 排序发生较大重排。生成 C++ 保留了源码半块顺序，后端仍会把部分 `ldg_b128` 聚合后再按 `gvmcnt(3..0)` 写 shared，说明 TileLang 源码顺序不能直接等同于设备发射顺序。

## 插桩矛盾与隔离结论

### mcTracer

- 标准 3-pair、warmup=3：Step1 median `+9.842306%`，device span `+6.234364%`。
- warmup=10 的单次 trace 出现双峰：一个候选 Step1 `-4.129725%`，另一个 `+6.899509%`。
- 20-iteration trace window、2 pairs：Step1 median `+6.800751%`，device span `+4.494732%`。

重复窗口证明这不只是首个 trace 样本问题：mcTracer 挂载时，v023 的确倾向变慢。但无插桩 OJ 的 4-pair 复测与 2,000-repeat 长窗稳定变快，因此本版本把 mcTracer 时间标记为 `instrumentation-sensitive / quarantined for submission verdict`。

### mcProfiler

- Total Cycles：`+0.699446%`
- VLS pipeline stall：`+2.178738%`
- average stage latency：`+0.134008%`
- MTE duty：39.26% -> 39.27%
- MMA duty：25.54% -> 25.58%
- Achieved/Dispatched waves：完全相同
- private read/write：均为 0
- 报告的 Global Memory Read bytes：`+9.622978%`

静态 ISA 的 global-load 数、wave 数和算法输入均未变化，因此 `Global Memory Read bytes +9.62%` 不能解释为源码真实增加了同等比例的数据量，更可能包含插桩调度下的重放/计数口径效应。mcProfiler 与 mcTracer 同向揭示“该新 ISA 对插桩环境敏感”，但不构成无插桩提交性能否决。

## Roofline 口径

Case2 Step1 的算法 FLOP 数仍为 360,777,252,864，AI 仍为 84.828402 FLOP/byte，区域分类不变。由于无插桩 OJ 只给两 kernel 合计时间，无法从中严谨拆出 Step1 点；本版本的 Roofline 只绘制 20-iteration mcTracer window 的诊断点，并在图名和 README 中明确标记为 quarantined，不把候选点的下降误报成提交性能下降。

## 后续方向

1. 保留“半块 up”机制，探索半块内部 `gate/input/up` 的不同顺序，检查后端 `ldg/sts/gvmcnt` 排布是否能兼顾无插桩收益与插桩稳定性。
2. 用 ISA 基本块级序列而非仅指令计数比较候选，重点看 global-load outstanding depth、shared-store 聚簇和 wait 距离。
3. 每个候选继续使用 fresh-process AB/BA OJ 配对；mcTracer 只在已过 OJ 屏幕后用于阶段定位，并显式检查是否发生 instrumentation inversion。
