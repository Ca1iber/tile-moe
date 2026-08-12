# v028_step2_half_b_pipeline_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted
- 一句话因果结论：inverse-swizzle BSM half-B ping-pong 让 Step2 权重 global-to-shared 搬运越过 MMA 窗口，显著降低 WSM/VLS/VL1 stall，在不改变 MMA 数、wave 数或正确性的前提下将 OJ Case2 总时延稳定降低约 2.34%。

## Identity

- Machine：sc-16g，MetaX C500，25% compute slice，16 GiB quota
- Git：`dorm@603baf6aae841f58928d1ce3eea6e8526bcf31c5`（实验父状态）
- KMD / MACA：3.8.30 / 3.7.1.5
- Parent SHA-256：`601c1dfdad7baa3cbf99ca39421ef4e9d9ae532e64e22bde60f14b600d01d144`
- Candidate SHA-256：`385510c606a6392a9aaf3bf62542df652176f7d32649ec46c8dce3d35d12b858`
- OJ benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`
- Official benchmark SHA-256：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`

## Correctness

- OJ reference：三 case 均使用 `rtol=1e-2, atol=1e-2`，全部 PASS，`max_abs=0.001953125`。
- 最终 OJ 日志：`benchmark/final_oj/v028l_oj_all.log`。
- Case2 异步竞态压力：连续 20 次执行，每次同步后与 reference 比较，20/20 PASS，所有轮次 `max_abs=0.001953125`。
- 压力日志：`benchmark/stress_correctness/v028l_case2_20_runs.log`。
- 官方 functional：7168/2048/8e 与 3584/1024/4e 两组均 PASS。

## Benchmark

### 决策用配对测试

同一进程内预编译三版，12 轮使用六种轮转顺序，每次 warmup 3、repeat 100：

| Version | Median (ms) | Mean (ms) | Stddev (ms) | vs v027 median paired | Wins |
|---|---:|---:|---:|---:|---:|
| v027 parent | 4.921545 | 4.921220 | 0.001217 | baseline | — |
| v028k double wait | 4.807711 | 4.807526 | 0.001477 | -2.302% | 12/12 |
| v028l sync only | 4.806798 | 4.806853 | 0.000823 | -2.335% | 12/12 |

v028l 对 v028k 的中位变化仅 -0.009%，6/12 胜，属于噪声内；选择 v028l 的依据是同步结构更简单、ISA 静态 barrier 更少。原始数据：`benchmark/v027_v028k_v028l_case2/summary.json`。

### 最终 OJ 门禁

| Case | Shape | 100-repeat (ms) | Correctness |
|---|---|---:|---|
| 1 | 16e, H=2048, I=8192, tokens=2272 | 3.060644 | PASS |
| 2 | 32e, H=7168, I=2048, tokens=4544 | 4.795917 | PASS |
| 3 | 64e, H=7168, I=2048, tokens=9088 | 10.265293 | PASS |

只对 32-expert 默认 shape 开启特化，因此 Case1/Case3 是公共路径回归门禁，不拿独立运行数值裁决小差异。

### 官方 benchmark

- Functional：2/2 PASS。
- Performance：7168/2048/8e = 79.893999 ms；3584/1024/4e = 25.220115 ms。
- 两个 performance shape 不触发 32-expert 特化，用于验证公共路径与 schedule 选择未回归。

## Profile

### mcTracer

最终 v028l 的 3 对 AB/BA 样本中，Step2 从 v027 中位 1.736960 ms 降至 1.629184 ms；三对相对变化为 -6.659%、-6.500%、-6.049%，配对中位 -6.500%，3/3 改善。Step1 源码未变但跨次波动较大（配对变化 -1.40% 到 +3.53%），因此不使用 mcTracer device span 裁决端到端小差异。有效 trace 保存在 `profiler/mctracer/v028l_case2_paired_retry1/`；失败的第一次尝试因并行版本查询造成目标进程被 OOM kill，保存在 `v028l_case2_paired/`，不参与统计。

### mcProfiler targeted — Case2 Step2

| Metric | v027 | v028l | Relative change |
|---|---:|---:|---:|
| Total Cycles | 8,150,687.96 Kcycles | 8,075,607.86 Kcycles | -0.921% |
| WSM stall | 136,912,764 | 101,944,876 | -25.540% |
| VLS pipeline stall | 1,189,889,414 | 1,096,505,184 | -7.848% |
| VL1 pt0/pt1/pt2/pt3 stall | baseline | -9.96% / -12.07% / -11.49% / -11.17% | down |
| Average wave life | 4,854.13 | 4,869.19 | +0.310% |
| Achieved / dispatched waves | 2,863,304 | 2,863,304 | unchanged |
| Shared access efficiency | 100% | 100% | unchanged |
| Private read / write | 0 / 0 | 0 / 0 | no spill |
| AP MMA duty | 26.08% | 25.86% | -0.844% relative |
| AP MTE duty | 40.06% | 39.75% | -0.774% relative |

Duty ratio 的轻微下降不推翻收益：candidate 更早结束，active-cycle 分母与 replay 计数也变化；稳定性能结论由事件计时和 mcTracer 给出。完整差分：`profiler/mcprofiler/analysis/v028l_vs_v027_case2_step2.md`。

### Roofline

- v027 native：case_flops 526.900，case_I 769.800，case_bandwidth 684.463 GB/s。
- v028l native：case_flops 541.333，case_I 740.426，case_bandwidth 731.110 GB/s。
- profiler ridge：MAX_I=260；两版 `case_I > 260`，工具均归为 compute-side。
- 这次优化不改变数学 FLOPs；counted bytes 略增而时长下降。核心作用是 overlap 和 stall reduction，不是改变算法算术强度。
- 图按版本归档在 `../../moe-roofline/v028_step2_half_b_pipeline_sc-16g/native_parent_v027/` 与 `native_candidate_v028l/`。

## Lowering and code generation

- Generated C++：v028l 有 4 个 `memcpy_async<16>` 静态站点、0 个显式 `barrier_arrive_and_wait`、9 个 `__syncthreads` 静态站点。
- Step2 ISA 静态比较：

| Counter | v027 | v028k | v028l |
|---|---:|---:|---:|
| MMA | 256 | 256 | 256 |
| `ldg_b128 ... bsm` | 0 | 16 | 16 |
| `sts_b128` | 16 | 4 | 4 |
| `lds_b128` | 64 | 64 | 64 |
| `barrier` | 4 | 9 | 5 |

- ISA 顺序显示 BSM loads 先发出，随后执行当前 stage 的 MMA，消费前由 CTA sync 中的 `bsmcnt(0)` 收口，证明后端没有重新串行化。
- Resource：Step1 212 MT / 52 ST；Step2 208 MT / 52 ST；均 2 waves/PEU、0 stack frame。v027 Step2 为 228 MT / 52 ST。
- 直接 async 写软件 swizzled destination 会错，因为 BSM destination 通过标量 `md` 表达；inverse-swizzle source group 将物理写入线性化，最小 128×64 round-trip 精确 PASS。

## Causal interpretation

- 预测方向成立：Step2 trace、Total Cycles、WSM/VLS/VL1 stall 均下降；MMA 数与 wave 数不变。
- 端到端与分阶段一致：Step2 约占总 kernel 时间三分之一，Step2 约 -6.5% 对应端到端约 -2.34%。
- 生成代码实际变化：global-to-register + shared-store 路径转为 BSM global-to-shared，且跨 MMA 窗口存活。
- 收益显著超出配对噪声：12/12 轮改善，parent/candidate stddev 分别约 0.00122/0.00082 ms。
- 当前剩余瓶颈：仍有 CTA 可见性 barrier，occupancy 仍为 2 waves/PEU；下一步可研究更轻的正确 shared fence 或 producer/consumer 映射，但不能删除 CTA 同步。
