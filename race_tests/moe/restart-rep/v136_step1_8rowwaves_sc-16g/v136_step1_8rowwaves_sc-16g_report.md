# v136_step1_8rowwaves_sc-16g 证据报告

## 1. 上版本遗留问题

v130 对 exact v110 的重建 profile 表明，Step1 占三例 kernel span 的 62.37%–65.65%，资源为 226 MT/线程、42 ST/线程、2 static waves/PEU，MMA duty 约 52%–55%。v135 已排除“只缩小源码 B 局部数组”的做法：生成 C++ 数组虽缩小，最终 MT/waves 不变。本版因此测试一个会真实改变 accumulator/A fragment 分摊和后端资源档的拓扑变化。

## 2. 问题原因分析

v110 的 Step1 CTA tile 为 M128×N128，由 4 个 M32×N128 row-wave 完成。每个 wave 持有 Gate、Up 两组 accumulator 和双 A fragment，形成高 MT register；但一个 B fragment load 能在同一 wave 内覆盖两个 M16 micro-row，具有明确的 B operand 复用。

当前假设是：改为 8 个 M16×N128 row-wave可把每线程 accumulator 与 A fragment 减半，提高静态 waves/PEU，并可能改善 latency hiding。风险是每个 M16 wave 都要独立执行 B fragment 的 shared→register load，使 B operand load 数相对 4-wave 拓扑翻倍，同时所有同步点的参与 wave 数也翻倍。

## 3. 本版本解决方案

保持 CTA 数、M128×N128 tile、global 权重 bytes、MMA 数学量和 Step2 不变，仅重映射 Step1：

- `block_row_warps: 4 → 8`；`warp_row_tiles: 32 → 16`；
- `threads: 256 → 512`，仅用于 native-input prepack 与 Step1；
- consumer-native A 物理布局从 `[4,256,8]` 改为等元素数的 `[2,512,8]`；
- Step2 和 consumer-native up-logits 仍使用原 256-thread `[4,256,8]` 布局；
- tail-wave 行谓词按 `step1_row_warps` 泛化为每 wave 16 行。

## 4. Correctness 与合规

- 三个官方 case 的完整有效行 correctness 均 PASS，`rtol=1e-2, atol=1e-2`。
- OJ source validator PASS；三份 generated device source PASS。
- generated code 中 `memcpy_async_sites=0`、`barrier_wait_sites=0`；没有 async copy 或 foreign injection。
- Case2 lowering 出现一次针对 consumer-native up-logits 的静态 race warning，但相同数学输出在完整 correctness 中通过；本候选无论如何已因稳定性能回退被拒绝，不具 submission 资格。

## 5. Codegen/resource 对比

| Case | kernel | v110 MT / static waves | v136 MT / static waves | 结果 |
|---:|---|---:|---:|---|
| 1 | prepack | 70 / 未作为目标 | 40 / 8 | 降低 |
| 1 | Step1 | 226 / 2 | 128 / 4 | 资源目标达成 |
| 1 | Step2 | 202 / 2 | 202 / 2 | 不变 |
| 2 | prepack | 78 / 未作为目标 | 40 / 8 | 降低 |
| 2 | Step1 | 226 / 2 | 126 / 4 | 资源目标达成 |
| 2 | Step2 | 220 / 2 | 220 / 2 | 不变 |
| 3 | prepack | 78 / 未作为目标 | 40 / 8 | 降低 |
| 3 | Step1 | 226 / 2 | 126 / 4 | 资源目标达成 |
| 3 | Step2 | 220 / 2 | 220 / 2 | 不变 |

注：resource tool 的 `staticMaxWarps/PEU` 是编译资源上限，不等价于端到端有效 occupancy 或吞吐。v136 正是一个反例。

## 6. 三 case 短 AB/BA

环境：MetaX C500 `sc-16g`，KMD 3.8.30，MACA 3.7.1.5；同进程 device-event AB/BA，2 rounds，warmup 5，repeat 30。正值表示候选更慢。因为三例均为远高于 1.2% 的稳定回退，本轮按 early-reject 规则不再执行长测。

| Case | v110 parent 中位 ms | v136 candidate 中位 ms | paired 中位变化 | 决策 |
|---:|---:|---:|---:|:---|
| 1 | 2.177574 | 2.244817 | +3.087955% | REJECT |
| 2 | 3.901986 | 4.284915 | +9.813769% | REJECT |
| 3 | 7.552896 | 8.200469 | +8.573844% | REJECT |

外部 OJ SOTA 仍为 v110：score ratios `[0.833778, 0.824765, 0.823671]`，latency `[2.243, 3.954, 7.680] ms`。v136 未提交 OJ，也未创建 `restart-submission`。

## 7. 因果结论

这次实验把“高寄存器是否就是当前主要限制”做成了一个强反证：Step1 MT 从 226 大幅降至 126–128，静态 waves 从 2 提到 4，性能却明显变差。最符合代码结构与 shape 缩放的解释是：

1. v110 的 M32 wave 对同一份 B fragment 有两个 M16 micro-row 的复用；v136 的 M16 wave 失去这层复用，row-wave 数翻倍，因此 shared→register 的 B operand load 动态工作近似翻倍。
2. CTA barrier 站点数仍为 9，但每个同步点由 4 waves 扩为 8 waves，调度与协调代价上升。
3. Case2/3 的 Step1 K tiles 为 112，远多于 Case1 的 32；被重复的 B load/同步路径执行次数更多，因而回退扩大到约 9%，与观测一致。
4. 因此，不能仅凭 MT 或 `staticMaxWarps/PEU` 判定优化；必须同时保住 operand reuse。对当前 M128×N128 Step1，4 个 M32 row-wave 优于 8 个 M16 row-wave。

## 8. 决策

状态：`rejected_regression`。不移动 SOTA，不创建 submission，不运行 candidate mcProfiler/mcTracer，不做 OJ。后续不要重复 M128 的纯 8-row-wave 拆分；除非出现能跨 row-wave 广播/共享 B fragment 的新原语，否则降低 accumulator 寄存器的收益无法覆盖 B operand 复用损失。
