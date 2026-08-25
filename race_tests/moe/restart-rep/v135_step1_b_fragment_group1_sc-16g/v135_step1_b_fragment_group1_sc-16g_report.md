# v135_step1_b_fragment_group1_sc-16g 证据报告

## 1. 上版本遗留问题

v130 对 exact v110 的重建 profile 表明，Step1 占三例 kernel span 的 62.37%–65.65%，只有 2 waves/PEU，MMA duty 约 52%–55%。v131–v134 已排除纯索引线性化、native workspace K-pitch、Case1 控制谓词组合和硬件 3D grid 算术；尚未闭环的是 v130 提出的 B-fragment 活跃区间方向。

## 2. 问题原因分析

已验证事实：v110 的 Step1 每线程分配 `weight_local[64]` FP16，先加载完整 8 列 B microtile，再进行 Gate/Up MMA；编译资源为 226 MT、42 ST、2 waves/PEU。fresh perfcount 的 Case1 Step1 为 MMA duty 51.40%、VLS-pipeline stall 62,973,375、DNOC read latency 280.03，与 v130 的 51.57%、63,641,829、279.50 同属一个运行区间。

当前假设：若逐列复用 B fragment，可能降低寄存器活跃量并改善 operand feed。风险是后端 unroll 后重新扩张 live range，或者逐列 `LDS→MMA` 降低 load latency hiding。

## 3. 本版本解决方案

仅重构 Step1 B operand：新增逐组 `ldmatrix_b_group` 与 `mma_group`。正式 screen 使用 `group_cols=1`；Gate 的 8 列处理完后再处理 Up 的 8 列，保留 A、Gate、Up 的 global producer 顺序、barrier 数和所有数学运算。Step2 完全不变。

## 4. 具体落地策略

- 候选：`restart-experiments/v135_step1_b_fragment_group1_sc-16g/candidate_submission.py`。
- `weight_local`：64 FP16 → 8 FP16（生成 C++ 可见）。
- `group_cols=2/4` 只做 Case1 codegen/resource screen，均导致 Step1 MT 226 → 242，因此未进入 benchmark。
- `group_cols=1` 三例 codegen 均保持 Step1 226 MT/42 ST/2 waves；prepack 与 Step2 资源不变。
- 无 async copy、foreign source、Torch 代算或 benchmark 改动；source 与三例 generated-code OJ 扫描均通过。

## 5. Benchmark 对比

环境：MetaX C500 `sc-16g`，KMD 3.8.30，MACA 3.7.1.5；同进程 device-event AB/BA，3 rounds，warmup 20，repeat 50；负值表示候选更快。三例完整有效行 correctness 均 PASS，`rtol=1e-2, atol=1e-2`。

| Case | v110 parent 中位 ms | v135 candidate 中位 ms | paired 中位变化 | 1.2% gate |
|---:|---:|---:|---:|:---|
| 1 | 2.184146 | 2.179046 | -0.263483% | FAIL |
| 2 | 3.897789 | 3.893530 | -0.102795% | FAIL |
| 3 | 7.564544 | 7.564995 | +0.012184% | FAIL |

外部 OJ baseline/SOTA 仍为 v110：score ratios `[0.833778, 0.824765, 0.823671]`，latency `[2.243, 3.954, 7.680] ms`。v135 未进入 OJ。

## 6. Profile 指标变化

| 指标 | v110 旧基线 | v110 fresh 复测 | v135 | 解释 |
|---|---:|---:|---:|---|
| Case1 Step1 MMA duty | 51.57% | 51.40% | 未采集 | exact v110 环境稳定 |
| VLS-pipeline stall | 63,641,829 | 62,973,375 | 未采集 | 差约 1.05%，同一量级 |
| DNOC read latency | 279.50 | 280.03 | 未采集 | 环境无明显漂移 |
| global read bytes | 1,585,469,600 | 1,589,762,208 | 未采集 | 差约 0.27% |
| Step1 MT / waves | 226 / 2 | 226 / 2 | 226 / 2 | 目标资源档没有改善 |

候选未达到 1.2% 门槛，按项目规则不运行 candidate mcProfiler/mcTracer。fresh baseline 原始数据已归档；不同 metric batch 的 `Total Cycles` 不作横向比较。

## 7. 实验总结

结论：`rejected_below_1p2_gate`。源码层面的 B fragment 确实从 64 缩到 8 个 FP16，但后端最终 MT 与 waves 不变，三例端到端收益均不具候选价值。`group_cols=2/4` 还会增至 242 MT。该结果证明当前后端不会把这一源码缩短转化为可用 occupancy 或显著 operand-feed 收益；后续不再 sweep B-fragment column group size，应转向能改变真实 global request 并发、CTA reuse 或算法流量的不同机制。
