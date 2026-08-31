# v204 Case1 M192xN160 Step2 归档报告

## 1. 上版本遗留问题

v203 已把 Case2/3 的物理 expert rank builder 并行化，并由用户确认外部 OJ 总分达到 84；但 Case1 的长 expert Step2 仍沿用 M192xN128 的两半片映射。对 hidden=2048 的每个长 expert，该路径需要 16 个 CTA，存在可见的 CTA、权重装载和调度冗余。

本轮是封盘后的材料整理，不再展开新优化。目标是把桌面 `mate.txt` 定义为 v204，确认它与队友机器上的实际编译源一致，补齐三 case codegen、mcProfiler、mcTracer、外部 OJ 与 Git 证据。

## 2. 原因分析

Case1 含 8 个短 expert 与 8 个长 expert。短 expert 原路径每个 expert 用 8 个 Step2 CTA；长 expert 因 192 行和 N128 半片映射，每个 expert 用 16 个 CTA。因此旧 Case1 Step2 共 `8*8 + 8*16 = 192` 个 CTA。

长 expert 的有效行上界就是 192，M 维无需再拆；N 维从 128 扩为 160 后，仅需 `ceil(2048/160)=13` 个 panel。新总数为 `8*8 + 8*13 = 168`，比旧映射减少 24 个 CTA，即 12.5%。这正是 v204 的主要结构性收益来源。

## 3. v204 方案

v204 为 Case1 长 expert 建立独立的 M192xN160 Step2 路径：

- `case1_long_step2_mma` 使用 `warp_row_tiles=48`、`warp_col_tiles=160`；
- 长 expert 在一个 CTA 内覆盖完整 192 行，不再按两个 128-row block 映射不同 N 半片；
- N 维采用 13 个 panel，最后一块通过 `output_col + j < hidden` 做边界保护；
- 短 expert、Step1、Case2/3 路径保持原语义；
- 只使用 TileLang primitives，不含异步拷贝、源码注入、MXMACA builtin、跨调用缓存或 warmup 预处理。

队友源文件内部名仍为 v197，但这只是其本地编号。桌面 `mate.txt` 的 CRLF 原始 SHA 为 `c2cf5f1f…66d10`；转换为仓库 LF 后 SHA 为 `d76d6b4e…47b5`，与 `mate` 机器实际编译和 profile 的源逐字节一致。本文统一将其登记为 v204。

## 4. 实现与编译证据

与 v203 源相比，v204 是另一条队友演进线，结构 diff 为 318 insertions / 141 deletions；完整 patch 已归档，不能把它描述成 v203 上的一行参数修改。

exact v204 在 `mate` 的 TileLang `0.1.10+cuda.gitf549117c` 上成功生成三 case 产物：

| Case | `.maca` bytes | `.mcbin` bytes | kernels | MT registers | private memory |
|---:|---:|---:|---:|:--|:--|
| 1 | 141,697 | 485,032 | 5 | `[4,18,28,226,220]` | 全 0 |
| 2 | 136,197 | 397,504 | 3 | `[92,226,220]` | 全 0 |
| 3 | 136,201 | 399,008 | 3 | `[92,226,220]` | 全 0 |

队友完整 codegen 日志记录的 v204/v197 三 case 总耗时分别为 40.8 s、40.5 s、41.0 s；其中设备编译阶段日志可见约 12 s。`sc-16g-2` 上的 TileLang 0.1.9 在单核 IR 构造中出现长时间高内存压力，未进入设备编译；同一 canonical source 在 `mate` 0.1.10 正常编译，故不能把 0.1.9 的现象归因于 v204 不可编译。

## 5. Benchmark 与外部 OJ

性能权威采用用户提供的外部 OJ 结果：v204 全 case AC，总 display score 为 84.33；用户明确说明相对 v203 的 84，Case1 被推到 85 以上。因此 display vector 记为 `[85,84,84]`。用户没有提供本次三 case 的原始 latency 和 score ratio 行，归档中相应字段保持 `null`，不反推伪造。

| Version | Case1 | Case2 | Case3 | Aggregate | Authority |
|:--|--:|--:|--:|--:|:--|
| registry SOTA v166 | 84 | 83 | 83 | 83.33 | raw external SPJ previously archived |
| v203 | 84 | 84 | 84 | 84.00 | user-provided summary |
| **v204** | **85** | **84** | **84** | **84.33** | user-provided external OJ summary, AC |

v204 对当前 registry SOTA 三个 case 均不回退，且 Case1/2/3 分别提高 1/1/1 个 display point，因此按 display-score monotonic gate 晋级并封盘。

## 6. Profile 结果

所有下表计数均来自 `mate`，不是 `sc-16g-2`。mcProfiler 版本 3.8.1.4；Step1/Step2 各保留两次 replay，指令数在 replay 间完全一致。

| Case / stage | MMA duty | Global read | L2 hit | Instructions |
|:--|--:|--:|--:|--:|
| C1 Step1 | 62.39% | 1.093 GB | 46.37% | 54,367,744 |
| C1 Step2 | 55.11% | 590.7 MB | 40.97% | 26,744,192 |
| C2 Step1 | 62.28% | 2.028 GB | 43.43% | 81,551,584 |
| C2 Step2 | 51.99% | 978.9 MB | 47.71% | 51,581,488 |
| C3 Step1 | 62.01% | 4.209 GB | 41.36% | 163,103,168 |
| C3 Step2 | 52.89% | 1.977 GB | 47.26% | 103,162,976 |

Case1 另外包含 rank、short-input 和 prepack 三个非 MMA kernel；其全局读分别约 5.6 KB、4.20 MB 和 6.04 MB，均不是主耗时。

mcTracer 的最后稳态调用给出：

| Case | Metadata kernels | Step1 | Step2 | Intra-call launch gaps | Device span |
|---:|--:|--:|--:|--:|--:|
| 1 | 46.85 µs | 1,181.44 µs | 713.22 µs | 31.49 µs | 1,972.99 µs |
| 2 | 125.18 µs | 2,041.60 µs | 1,161.47 µs | 34.30 µs | 3,362.56 µs |
| 3 | 511.74 µs | 5,787.39 µs | 3,677.95 µs | 39.42 µs | 10,016.51 µs |

Case1 的 Step1/Step2 占 kernel sum 的 60.85%/36.74%，launch gap 仅占 device span 约 1.6%，因此本版本收益不是消除 CPU/GPU 空泡，而是减少 Step2 长 expert CTA。Case3 tracer 绝对时长明显慢于外部 OJ，可能受采样时段或 profiler 环境影响；只用于阶段占比与空泡判断，不能替代 OJ 计分。

## 7. 总结与封盘决策

v204 的证据闭环完整：源身份对齐、静态 OJ validator PASS、外部 OJ AC 84.33、三 case codegen 成功、所有 kernel 无 private-memory spill、mcProfiler 与 mcTracer 原始文件齐全。它通过 Case1 长 expert M192xN160 将 Step2 CTA 从 192 降到 168，最终把 Case1 推到 85 display point，并成为新的全局 SOTA。

本版本已经进入材料准备与封盘状态：更新 `restart-submission/SOTA.json`、归档 submission/profile/codegen/report 并同步 GitHub；不再基于 v204 开展新的优化试验。
