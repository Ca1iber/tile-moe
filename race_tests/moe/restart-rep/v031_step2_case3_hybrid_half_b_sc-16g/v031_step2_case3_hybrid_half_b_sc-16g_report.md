# v031_step2_case3_hybrid_half_b_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted
- 一句话因果结论：把 v030 已验证的 hybrid half-B BSM/MMA overlap 扩展到同维度的 64-expert Case3，在不改变 MMA 工作量与 CTA 资源时，使 Step2 稳定缩短 `2.225%`，两组独立端到端配对中位分别提升 `0.724%` 与 `0.739%`。

## Identity

- Machine：sc-16g，MetaX C500，25% compute quota，16000 MiB VRAM quota，best-effort 10 ms timeslice；mx-smi 2.3.1，KMD 3.8.30，MACA 3.7.1.5，BIOS 1.33.5.0。
- Git：branch `dorm`，父 commit `afce712a48fc5f1b41f58fdde2a3640e20164bac`。
- Parent/current previous best：`v030_step2_hybrid_half_b_pipeline_sc-16g`；restart baseline：`v000_minibs_baseline_sc-16g`。
- Candidate：`race_tests/moe/restart-submission/v031_step2_case3_hybrid_half_b_sc-16g/submission.py`。
- Submission SHA-256：`dc4200fb77f99cf576dcacc17d9c2c9cf08aaae1d3edbfb4876b599a38668528`。
- OJ import gate：PASS；仅使用 `torch`、`tilelang` 和允许的 TileLang import form，无 `tvm/tir/typing`。

## Correctness

- 精确 archived submission 的 OJ Case1/2/3 均 PASS，`rtol=1e-2, atol=1e-2`。
- 三例 max abs 均为 `0.001953125`，padding max 均为 `0.0`。
- 官方 fusedmoe adapter 两组 functional config 均 PASS。

## Benchmark

### 精确 OJ submission

Warmup 20 / repeat 100，device Event 平均：

| 版本 | Case1 (ms) | Case2 (ms) | Case3 (ms) |
|---|---:|---:|---:|
| v000 restart baseline 中位 | 3.121774 | 5.738880 | 11.211986 |
| v030 exact OJ | 3.189120 | 5.027561 | 10.947650 |
| v031 exact OJ | 3.189432 | 5.035945 | 10.875625 |
| v031 相对 v030 | +0.010% | +0.167% | **-0.658%** |
| v031 相对 v000 | +2.167% | **-12.249%** | **-3.000%** |

- Case1/2 源码路径与 v030 完全相同；单次绝对差异处于进程/切片噪声，不能解释为回退。
- Case3 是本版唯一新增 dispatch，exact OJ 方向与 paired verdict 一致。

### Case3 AB/BA verdict

- 第一组最终 submission 7 轮：6/7 获胜，paired median `-0.7237%`；第一轮 candidate 有一次 `+1.99%` outlier，原始值完整保留。
- 第二组独立复现 7 轮：7/7 获胜，v030/v031 median `10.950579/10.870490 ms`；paired median `-0.7388%`，范围 `-0.8303%~-0.6356%`，paired pstdev `0.0578` 个百分点。
- 初筛组亦为 7/7 获胜、中位约 `-0.751%`；接受结论不依赖单次最快值。

### 官方 adapter 回归

- Functional：两项 PASS。
- Performance 独立进程：`87.026201 ms`（7168/2048/8e）与 `32.358347 ms`（3584/1024/4e）。两项都不触发 64-expert 特化，仅用于 fallback 回归。

## Profile

### mcTracer Case3

三组独立进程 AB/BA：

| 阶段 | v030 median (ms) | v031 median (ms) | paired median 变化 |
|---|---:|---:|---:|
| Step1 | 7.237376 | 7.241984 | +0.0248% |
| Step2 | 3.715840 | 3.633152 | **-2.2253%** |

- Step2 三组变化均为负：`-2.3618% / -2.2253% / -1.7207%`。
- 两版 grid 均为 Step1 `16x96`、Step2 `28x96`；Step2 资源均为 234 registers/thread、32768 B dynamic shared、0 private/thread。
- Step1 不变且变化为噪声，端到端提升可因果归因于 Step2。

### mcProfiler Case3 Step2 targeted

| 稳定方向指标 | v030 | v031 | 变化 |
|---|---:|---:|---:|
| VL1 stall pt0 | 416,721,059 | 396,654,132 | -4.82% |
| VL1 stall pt1 | 412,286,432 | 380,109,393 | -7.80% |
| VL1 stall pt2 | 412,324,247 | 387,484,533 | -6.02% |
| VL1 stall pt3 | 413,650,758 | 383,417,989 | -7.31% |
| WSM stall | 284,171,053 | 248,796,283 | -12.45% |
| VLS pipeline stall | 3,068,944,965 | 3,035,734,375 | -1.08% |
| Global read bytes replay proxy | 39,851,517,408 | 39,430,113,088 | -1.06% |
| Shared non-conflict efficiency | 100% | 100% | 不变 |
| Private read/write instructions | 0 / 0 | 0 / 0 | 无 spill |

- mcProfiler multi-batch v030 replay 的 wave/aggregate 字段内部不一致：一次 wave life 为 0 且 achieved=2x dispatched；重试 wave life 恢复但 dispatched=0，AP duty 被跨批稀释。因此 Total Cycles、wave/occupancy 和 AP absolute aggregate 已 quarantine，不参与时延与 occupancy 结论。
- 四区 VL1 stall 在两次 v030 replay 中高度一致，而 v031 四区均下降；该方向与 mcTracer Step2 改善一致。
- elapsed-time 权威仍是 clean paired benchmark 与 mcTracer，不是 profiler replay。

### mx-smi

- profile/benchmark 前空闲快照：整卡 0%、当前 slice 0%；sGPU minor 021 / id 2，25% compute，16000 MiB VRAM；负载时 XCORE 1125 MHz、MC 1800 MHz。
- 最终 archived submission Case3 W10/R2000：`10.867313 ms`，correctness PASS。
- 13 个 steady HBM 样本中位/均值/范围：`798.304 / 798.617 / 783.914~807.065 GB/s`，约为 1400 GB/s 空闲单租户 STREAM 工程屋顶的 57.02%。
- 稳态样本中 104/104 AP 均约 96%~98% 活跃，说明 25% compute 是调度 quota，不是仅暴露 26 AP。该 HBM 值是本 workload 观测，不是 slice 保证上限。

## Roofline

- mcProfiler 原生：v030/v031 `case_I=727.875/745.871`，均高于工具 `MAX_I=260`，按原生口径为 compute-side；原始 PNG/JSON/PDF 统一放在 `moe-roofline/.../native/v030|v031/`。
- 原生 replay 的 all_ops/all_memacs 随 async BSM 改变，因此原生 case_flops 不作为真实 FLOP/s 或接受依据。
- schedule-aware 重建：Case3 Step2 算法 FLOPs `360,777,252,864`，CTA schedule compulsory bytes `4,404,055,552`，AI `81.919 FLOP/B`；用 mcTracer 中位时间得到 v030/v031 `97.092/99.301 TFLOP/s`。
- 以 25% compute 调度模型 `479.232 TFLOP/s`，搭配 1400/1843.2 GB/s roof 时，两点均为 HBM-side。原生与重建分类不同源于 traffic/FLOP 口径不同，已在 Roofline README 中显式区分。

## Lowering / generated C++ / ISA / resources

- 唯一 TileLang 源码 diff：在既有 `7168x2048, num_experts>=32` 分支内，把 `use_step2_half_b_pingpong = (num_experts == 32)` 改为 `True`。
- Generated C++ v030/v031：22,955 / 26,728 bytes；MMA static sites 均为 8；v030 async sites 0，v031 为 4；v031 pipeline 顺序出现 B1 async copy、B0 MMA、wait/sync、B1 MMA。
- 最终 xcore1000 MetaX ISA：两版 MMA 静态匹配数均为 512；v031 新增 BSM/WAIT 控制，MMA 工作量不变。
- Step2 两版资源完全一致：234 MT、52 ST、0 stack/static shared、32768 B dynamic shared、static max 2 waves/PEU；private memory/instructions 均为 0。

## Causal interpretation

- 预测的 Step2 时间、四区 VL1 stall 与 WSM stall 均下降；端到端两组独立 paired verdict 同方向。
- MMA 数、grid、寄存器、shared、occupancy 和 spill 不变，排除少算、降低精度或用更多 CTA 资源换速度。
- Step2 配对中位 `-2.225%`，占两 kernel 时间约三分之一，对应端到端约 `-0.74%`，量级自洽。
- 去显式 async wait 和缩 token 槽的探针虽正确，但仅约 `-0.04%` 噪声，说明 token wait/局部槽不是当前主要瓶颈；本版有效机制是把已验证 overlap 覆盖到 Case3。
- 下一步优先检查 Case1 Step2 的 8192-K 结构能否采用不同粒度的 hybrid overlap，或继续从 Case3 B0 无法安全 async 的 barrier/address 语义入手；不能把 Case2/3 的 dispatch 机械扩大到不同维度。
