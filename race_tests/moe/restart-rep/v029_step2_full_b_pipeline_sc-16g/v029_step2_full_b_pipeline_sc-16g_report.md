# v029_step2_full_b_pipeline_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：rejected
- 一句话因果结论：full-B 64 KiB ping-pong 虽把生成 C++ 的静态 `__syncthreads` 从 9 降到 7，并改善 shared efficiency/VL1 stall，但它让 Step2 MMA duty 从 37.22% 降到 25.13%、mcTracer Step2 退化 16.33%，最终同进程 Case2 退化 5.42%；因此 barrier 数减少没有转化为有效 overlap。

## Identity

- Machine：sc-16g，MetaX C500，25% compute slice，16 GiB quota
- Git 父状态：`dorm@1f4b98b42c772a3a66c3eecd8dcb3c4eb01d1358`
- KMD / MACA / mcProfiler：3.8.30 / 3.7.1.5 / 3.8.1.4（延续同机 v028 identity）
- Parent v028l SHA-256：`385510c606a6392a9aaf3bf62542df652176f7d32649ec46c8dce3d35d12b858`
- Candidate v029o SHA-256：`fe14ee16a485fbd40644b03186b34f29913f8bc70c7b481b2754de71653b3c94`
- Official benchmark SHA-256：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- OJ benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`
- 当前安装 kernel SHA-256 仍为 v028l；v029o 通过显式 source wrapper 编译和运行，没有覆盖当前最佳。

## 1. 上版本遗留问题

v028l 已经用 inverse-swizzle BSM half-B ping-pong 让 Step2 权重搬运跨过 MMA 窗口，并成为当前最佳；但 half-B 结构每个 K pair 仍需四个 CTA 可见性边界。v028l Case2 Step2 约 1.623 ms，仍占两步 kernel 的约三分之一，因此值得验证更粗粒度流水能否减少同步。

## 2. 问题原因分析

### 已验证结论

- full-B 地址和纯 BSM copy 正确：同步 control v029b 通过，48 CTA × 32 K tiles 的 copy-only loop 也精确通过。
- output0-first 与并发消费组合会造成稳定的空间错误：约 11.6%–11.7% 元素 mismatch，v029l 把错误固定为每个 256-column tile 的 `[0, 32]` 共 33 列。
- 交换 accumulator、MMA 顺序、stage base、A copy 时机和增加 consumer fence 都没有让错误迁移；把 producer 改成 output1-first 后 v029n/v029o 立即恢复正确。
- 正确的 v029o 仍明显更慢：配对端到端 +5.418%，Step2 +16.327%。

### 当前推测

output0-first 可能使 BSM 写 32 KiB 上半 stage 与 LDS 读 0 区在同一硬件资源/地址窗口发生未文档化交互；output1-first 改变了并发配对并规避错误。这个解释只有实验与 ISA 顺序支持，证据等级为 `INFERRED`，不能写成 C500 保证。

性能上，64 KiB full-B stage 延长了 producer 到 consumer 的距离并引入两个显式 MACA wait，同时 Step2 MT register 从 208 增至 212。尽管静态最大 waves/PEU 未变，MMA duty 显著下降，说明真正损失更像 operand feed / wait ordering，而不是 VL1/shared 冲突。

### 下一步需要验证的假设

下一轮不应继续只减 barrier 数。若重访 full-B，必须先用更细的 ISA 时间线或可控 producer/consumer 微基准确认 BSM/LDS 并发语义，并要求 MMA duty 与 Step2 trace 同时改善。

## 3. 本版本解决方案

把 Step2 的两个 128×64 half-B stage 扩展为两个完整 256×64 stage，总动态 shared 为 65536 bytes。每次 32 KiB BSM producer 预取完整下一 K tile，使其跨越 output0/output1 两条 accumulator 链；仅对 32-expert 默认 shape 生效。

正确性定位后，最终 v029o 使用 output1-first producer order、单 barrier handle 和 group wait。这个机制在语义上保留 v028l 的 inverse-swizzle、A register ping-pong、双 accumulator、路由权重与输出计算。

## 4. 具体落地策略

- Kernel：`race_tests/moe/custom_fusedmoe.py::moe_forward_tilelang_routed` 的归档候选；当前安装文件未修改。
- 参数：`use_step2_half_b_pingpong` 替换为 `use_step2_full_b_pingpong`，仍仅在 `n_routed_experts == 32` 开启。
- Shared：`(256, 64)` FP16 扩展为 `(512, 64)` FP16，即 32768 → 65536 bytes。
- 数据流：stage1/output1 producer 先发，wait 后发 stage1/output0；同时 refill stage0 的下一 K tile。
- 同步：生成 C++ 静态 `__syncthreads` 9 → 7，显式 `barrier_arrive_and_wait` 0 → 2。
- 归档：17 个 v029 源码变体、屏测日志、正确性探针、最终 patch、TileLang PrimFunc、generated device C++、MetaX ISA 与 resource report 均在本版本四目录内。

## Correctness

- 完整 OJ 命令语义：显式加载候选 source，运行仓库 `oj_benchmark.py` 的 Cases 1,2,3，`warmup=10`、`repeat=100`、`rtol=1e-2`、`atol=1e-2`。
- 三 case 全部 PASS；记录到的 `max_abs` 均为 `0.001953125`。
- 官方 functional：7168/2048/8e 与 3584/1024/4e 两组均 PASS。
- 原始日志：`correctness/v029o_oj_all.log`、`benchmark/oj/v029o_oj_verdict_w10_r100.log`、`benchmark/official/v029o_official.log`。

## 5. Benchmark 对比

### 决策用同进程配对 Case2

同一进程预编译 v028l/v029o，10 轮 AB/BA 交替；每次 warmup 3、repeat 100，使用 device event timing：

| Version | Mean (ms) | Median (ms) | Stddev (ms) | 配对变化 | Wins |
|---|---:|---:|---:|---:|---:|
| v028l current best | 4.818440 | 4.818528 | 0.001915 | baseline | — |
| v029o full-B | 5.080111 | 5.079277 | 0.002426 | +5.418% median / +5.431% mean | 0/10 |

全部 10 轮退化 5.307%–5.564%，远超 v000 约 0.25% 的 OJ 噪声带。原始数据：`benchmark/paired_case2/v028l_vs_v029o_case2.json`。

### 完整 OJ 回归

| Case | Shape | v028l (ms) | v029o (ms) | 说明 |
|---|---|---:|---:|---|
| 1 | 16e, H=2048, I=8192, tokens=2272 | 3.060644 | 3.058690 | 公共路径，差异在噪声内 |
| 2 | 32e, H=7168, I=2048, tokens=4544 | 4.795917 | 5.409759 | v029 特化路径明显退化；以配对数裁决幅度 |
| 3 | 64e, H=7168, I=2048, tokens=9088 | 10.265293 | 10.270585 | 公共路径，差异在噪声内 |

两版均为 `warmup=10/repeat=100`，但来自不同进程/时间窗口，因此 Case2 的 +12.8% 只作回归佐证，正式幅度采用同进程配对的 +5.418%。v000 Case2 为 5.738880 ms；它是旧代码/旧窗口，只说明 v029o 仍优于 restart baseline，不改变其输给当前最佳的结论。

### 官方 benchmark

- Functional：2/2 PASS。
- v029o performance：7168/2048/8e = 80.548066 ms；3584/1024/4e = 25.658865 ms。
- 两个 performance shape 都不触发 32-expert full-B 特化，只作为公共路径门禁；不把它们和 v028l 的跨进程波动解释为候选收益或退化。

## 6. Profile 指标变化

### mcTracer — Case2

| 指标 | v028l | v029o | 变化 |
|---|---:|---:|---:|
| Step2 median | 1.622784 ms | 1.887744 ms | +16.327% |
| Step2 mean | 1.623637 ms | 1.887403 ms | +16.246% |
| Step2 三对 paired | — | +16.327% / +16.461% / +15.948% | 3/3 退化 |
| Device span paired median | — | — | +5.311% |
| Step1 paired median | — | — | +0.372% |

Step1 source未变且样本波动较大（-9.00% 到 +1.96%），不据此声称 Step1 变化。稳定的 Step2 退化与端到端配对退化方向一致。

### mcProfiler targeted — Case2 Step2

| Metric | v028l | v029o | 变化 | 解释 |
|---|---:|---:|---:|---|
| Total Cycles | 17,825,756.75 Kcycles | 18,898,261.12 Kcycles | +6.017% | 与性能退化一致 |
| AP active cycles | 4,022,676,289 | 4,206,511,141 | +4.570% | active 工作窗口增加 |
| AP MMA duty | 37.22% | 25.13% | -12.09 pp / -32.48% relative | 计算管线有效活跃显著下降 |
| Shared access efficiency | 94.55% | 100.00% | +5.764% relative | shared 访问本身改善但不够抵消 MMA feed 退化 |
| VL1 pt0/pt1/pt2/pt3 stall | parent | candidate | -52.57% / -49.79% / -50.79% / -49.01% | VL1 stall 不是最终主导代价 |
| Private read / write instructions | 0 / 0 | 0 / 0 | unchanged | 没有显式 spill 证据 |

candidate 的 Average Wave、MTE duty、global bytes、Achieved/Dispatched waves 和 shared latency 因 mcProfiler 报告缺字段而无效；原始比较 JSON 中的数字解析会误抓错误字符串里的常数，报告明确不使用这些值。修正版摘要见 `profiler/mcprofiler/summary/v029o_vs_v028l_case2_step2_summary.md`。

### mx-smi 与 Roofline

- 没有与 v029o workload 同步的 mx-smi HBM/AP sample；`profiler/mxsmi/UNAVAILABLE.md` 明确记录缺口。
- targeted mcProfiler 没有采 `RoofLine` metric set，不能从本次数据生成 native 或 re-normalized Roofline；`../../moe-roofline/v029_step2_full_b_pipeline_sc-16g/UNAVAILABLE.md` 记录补采命令。
- 因此本版不新增 memory-bound / compute-bound 分类，也不把 VL1 stall 变化换算成带宽结论。

## Lowering and code generation

- 精确 parent/candidate 的 TileLang PrimFunc 都已后补归档；source SHA 与 snapshot 一致。
- Generated device C++：两版静态 MFMA/async copy site 都为 8/4；v028l 为 0 个显式 MACA wait、9 个 `__syncthreads`，v029o 为 2 个显式 wait、7 个 `__syncthreads`。
- Step2 resource：208 MT / 52 ST → 212 MT / 52 ST；静态最大 2 waves/PEU 不变；mcTracer 动态 shared 32768 → 65536 bytes，private memory 为 0。
- 最终 MetaX ISA 已归档，确认 output1-first producer order 和 wait 顺序物化。这里不把 assembly 称为 NVIDIA SASS。

## 7. 实验总结

方案没有成功，版本判定为 `rejected`。它证明了两个重要事实：第一，C500 BSM full-B 并发的 producer 顺序会影响正确性，不能仅凭地址范围和 barrier 语义推断安全；第二，减少静态 barrier 并不等于提高 overlap，必须同时看 Step2 trace、MMA duty 和端到端配对。

v028l 继续保持当前最佳并留在安装的 `custom_fusedmoe.py`。最有价值的下一步不是继续扩大 shared，而是回到 v028l 的 32 KiB half-B 数据流，针对 operand feed / wait 窗口做更小粒度、能让 MMA duty 上升的改动；若再次研究 full-B，先用独立 BSM/LDS 并发微基准建立硬件语义。
