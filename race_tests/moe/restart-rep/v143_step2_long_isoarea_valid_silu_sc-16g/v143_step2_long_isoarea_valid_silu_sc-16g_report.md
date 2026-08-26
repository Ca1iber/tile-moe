# v143 Case3 长 expert 等面积 Step2 报告（sc-16g）

## 结论

v143 是从精确 v110 出发的首个累计目标有效跳。Case3 五轮 AB/BA 均超过 1.2%，配对中位延迟下降 `1.281834%`，对应加速比 `1.0129848x`；Case1/2 也分别下降 `0.520975% / 0.220410%`。三种官方 shape bit-exact，三 Case 生成代码合规检查通过。

该版本尚无外部 OJ 结果，因此只归档为 locally-qualified candidate，不创建 `restart-submission`，正式全局 SOTA 仍是 v110。

## Benchmark

协议：同进程 device-event AB/BA 5轮，warmup=20，repeat=50。

| Case | 五轮配对变化 | 中位下降 | 换算加速比 |
|---:|---|---:|---:|
| 1 | -0.521%, -0.665%, -0.402%, -0.567%, -0.459% | 0.520975% | 1.005237x |
| 2 | -0.037%, -0.220%, -0.270%, -0.264%, -0.157% | 0.220410% | 1.002209x |
| 3 | -1.304%, -1.270%, -1.303%, -1.282%, -1.275% | 1.281834% | 1.012985x |

Case3 每轮均越过 1.2% 门槛，其他 Case 没有回退。三 Case 配对中位加速比几何平均为 `1.006800x`，独立中位延迟和加速比为 `1.008800x`；两种总体口径都保留，避免把 Case3 定向收益误报为全局同幅收益。

## Profile 与因果链

三对 AB/BA mcTracer 的中位变化为：prepack `+0.310%`（噪声）、Step1 `-0.4551%`、Step2 总时间 `-3.3413%`、GPU span `-1.3283%`。v143 的 short→long Step2 kernel gap 只有 `2.816 us`，不是 CPU launch 空泡。

ISA 显示 Step1 静态指令 `3081 -> 2921`，160 条减少全部体现在 `snop 363 -> 203`，核心 LDG/STG/MMA 数不变。long Step2 将两个 M128 行半块放进一个 M256 CTA，Down tile 只加载一次；它使用 222 个 MT 寄存器、28 个 ST 寄存器、16 KiB dynamic shared，保持 2 waves/PEU且无 spill。

mcProfiler perfcount 可以运行，但本次 short/long kernel selector 没有可靠命中不同 kernel，故不使用对应 counter 作结论；原始文本与限制说明均归档。

## 累计目标账本

用户规则为：每个晋级 hop 相对直接父版本至少提升 1.2%，有效 hop 的加速比连乘达到 `1.05x`。v110→v143 的目标 Case3 hop 为 `1.0129848x`，尚需再连乘 `1.0365407x`。更严格按三 Case 几何平均，当前为 `1.0068001x`，尚需 `1.0429082x`。后续只让越过 1.2% 的候选成为下一父版本。
