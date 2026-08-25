# v130_v110_rebaseline_sc-16g 证据报告

## Verdict

- 运行类型：`baseline reprofile`，不是新 candidate。
- 结论：`completed_baseline_profile`；冻结并重新验证 external-OJ SOTA v110，未改 kernel，不触发 1.2% candidate gate，也不创建 `restart-submission/v130_*`。
- 一句话因果结论：v110 的主要时间在 Step1（62.37%–65.65%）；kernel 间隙仅 2.816 us。Step1 同时呈现 226 MT/线程、2 waves/PEU、约 52%–55% MMA duty、wall-time corrected 70%–82% measured-HBM-roof utilization，因此下一轮应优化 Step1 内部的真实流量或保持既有 producer 顺序的延迟重叠，而不是继续做 kernel 融合。

## Identity

- Machine：MetaX C500 `sc-16g`，25% compute sGPU，16 GiB。
- Git：branch `dorm`；采集起点 `3455457af4487003c88e2a97b3c662ff6cef141d`。
- Frozen source：`restart-experiments/v130_v110_rebaseline_sc-16g/v130_v110_rebaseline_sc-16g_custom_fusedmoe.py`。
- Frozen source SHA-256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`，与 accepted v110 submission byte-identical。
- Incumbent OJ SOTA：`v110_case1_unpredicated_native_up_logits_sc-16g`；OJ score ratios `[0.833778, 0.824765, 0.823671]`，latency `[2.243, 3.954, 7.680] ms`，display `[83, 82, 82]`。
- 工具链：KMD 3.8.30，MACA 3.7.1.5，TileLang `0.1.9+cuda.git3455457a`，PyTorch `2.8.0+metax3.7.1.3`，mcProfiler 3.8.1.4，mcTracer 3.7.1.5-ef9e10e。
- OJ source allowlist validation：PASS。

## Correctness and local noise floor

- 三个官方 shape 均做完整 padded correctness，`rtol=1e-2, atol=1e-2`，全部 PASS。
- 同一 frozen source 对自身做 5-round AB/BA，`warmup=20, repeat=50`，用于估计本次容器的配对噪声，不作为性能提升：

| Case | parent median ms | candidate median ms | paired median | paired pstdev |
|---:|---:|---:|---:|---:|
| 1 | 2.182441 | 2.182661 | +0.118627% | 0.152395% |
| 2 | 3.901281 | 3.896535 | -0.128697% | 0.074422% |
| 3 | 7.550485 | 7.550725 | -0.012821% | 0.032431% |

结果表明约 0.1% 量级仍属于噪声；后续 candidate 继续执行用户规定的至少 1.2% 晋级门槛。

## mcTracer

| Case | prepack ms | Step1 ms | Step2 ms | Step1 share | Step2 share | prepack→Step1 gap | Step1→Step2 gap | kernel span ms |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | 0.020736 | 1.417728 | 0.721152 | 65.65% | 33.39% | 0.029696 ms | 0.002816 ms | 2.192128 |
| 2 | 0.128256 | 2.419712 | 1.303808 | 62.82% | 33.85% | 0.029184 ms | 0.002816 ms | 3.883776 |
| 3 | 0.247040 | 4.697088 | 2.586368 | 62.37% | 34.35% | 0.032512 ms | 0.002816 ms | 7.565824 |

- Step1→Step2 gap 仅占 kernel span 的约 0.04%–0.13%，不是当前主要损失。
- prepack 占 span 约 0.95%、3.30%、3.27%；Cases 2/3 的 64-KiB tile-major bridge 有成本，但 v128 已证明直接去掉会因访问不合并而回退约 0.8%。
- CTA 资源：Step1 固定 256 threads、32 KiB dynamic shared、226 MT/线程、42 ST/线程、2 waves/PEU；Step2 为 202 MT（Case1）或 220 MT（Cases2/3），同为 2 waves/PEU。

## mcProfiler and Roofline

以下 native TFLOP/s、GB/s 仅保留为工具原始归一化，不把它误当成 sc-16g 的真实吞吐：

| Case | Stage | native TFLOP/s | native GB/s | MTE duty | MMA duty | VL1 hit | L2 hit | Dnoc latency | VLS-pipe share* |
|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | Step1 | 1035.874 | 1138.368 | 10.38% | 51.57% | 87.46% | 28.33% | 279.50 | 83.52% |
| 1 | Step2 | 1206.074 | 850.671 | 9.51% | 62.19% | 87.25% | 50.34% | 269.92 | 69.26% |
| 2 | Step1 | 1037.075 | 958.177 | 6.08% | 53.80% | 87.45% | 40.36% | 274.36 | 83.85% |
| 2 | Step2 | 976.781 | 983.392 | 5.43% | 48.59% | 86.46% | 41.72% | 281.62 | 77.13% |
| 3 | Step1 | 1088.172 | 1117.553 | 6.19% | 54.73% | 87.45% | 31.81% | 272.00 | 84.46% |
| 3 | Step2 | 988.811 | 1074.177 | 5.49% | 48.73% | 86.46% | 36.10% | 280.17 | 77.37% |

`*` VLS-pipe share 是四类已上报 stall 内部占比，不是 wall-clock stall 百分比。

用同一 kernel 的 counted FLOPs/global bytes 除以 fresh mcTracer wall time 后：

| Case | Stage | corrected TFLOP/s | corrected GB/s | counted AI | measured 1400 GB/s roof use | 479.232 TF sensitivity use |
|---:|:---|---:|---:|---:|---:|---:|
| 1 | Step1 | 121.858 | 1144.574 | 106.466 | 81.76% | 25.43% |
| 1 | Step2 | 143.620 | 865.798 | 165.882 | 61.84% | 29.97% |
| 2 | Step1 | 124.664 | 984.443 | 126.634 | 70.32% | 26.01% |
| 2 | Step2 | 115.698 | 995.567 | 116.213 | 71.11% | 24.14% |
| 3 | Step1 | 128.442 | 1127.431 | 113.924 | 80.53% | 26.80% |
| 3 | Step2 | 116.649 | 1083.072 | 107.702 | 77.36% | 24.34% |

- 所有点均低于 25%-compute sensitivity ridge（约 342 FLOP/B），但 479.232 TFLOP/s 是敏感性模型，不是已实测硬上限。
- corrected HBM 利用率没有跑满 1400 GB/s roof，说明不是“HBM 已满所以只能减 FLOPs”；更准确的描述是：工作集的 counted AI 偏低，同时有限 waves、依赖链和请求发出时序使有效带宽没有完全兑现。
- Case3 Step2 的一次全量 report 在报告生成阶段失败；11 个缺失指标与 8 个 core 指标分别重新进行 per-kernel supplement，汇总只合并成功的 kernel JSON，不使用失败 aggregate 数值。

## Lowering, generated code and ISA

- 三 Case 均重新 lower 并保存 generated device C++、resource JSON、embedded BC、ELF、text section 与 `.metax.s`。
- 每个 Step1/Step2 均有 256 个 MMA 静态点和 4 个 barrier；未出现 async copy。
- Step1 ISA：约 3081–3082 条指令，28 LDG、16 STG、64 LDS、16 STS、256 MMA、约 363–364 `snop`。
- Step2 ISA：Case1 2698 条、444 `snop`；Cases2/3 2308 条、387 `snop`；均有 38 LDG、64 LDS、16 STS、256 MMA。
- Cases2/3 指令类别计数相同；Case-specific code/debug identity 仍分别保留，避免以源码相似代替机器码证据。

## Causal interpretation

1. **已验证的主阶段是 Step1。** 它稳定占 62%–66% span；哪怕 Step2 完全消除也不能解释现有主瓶颈，而 2.816 us 的跨 kernel gap 更不足以支持融合优先级。
2. **Step1 不是“已达到 MMA 峰值”。** MMA duty 约 52%–55%，corrected compute 只到敏感性线的约 25%–27%。
3. **也不能简单称为 HBM 饱和。** Step1 corrected bandwidth 为 measured roof 的 70%–82%；真实问题更像是低 AI 下，226 MT/2-wave 并发与 producer/consumer 时序共同限制了持续请求和计算重叠。
4. **静态减指令不等于加速。** 历史 v087 合并 input prefetch 大幅减静态指令却回退约 5.76%；v091 的收益则主要来自 A 请求更早发出，ISA 只少 4 条 `snop`。因此必须保留已验证的动态重叠顺序。
5. **寄存器是风险信号，不是单独结论。** 226 MT 只允许 2 waves/PEU，但尚未测得 3-wave 的确切寄存器阈值；不能为了追 occupancy 直接缩 tile，因其会复制 input 或 weight 流量。

## Next hypothesis card

- Observed evidence：Step1 62%–66%；226 MT、2 waves；MMA duty 52%–55%；corrected HBM 70%–82%；VLS-pipeline 为已上报 stall 主项。
- Verified bottleneck：Step1 内部的 global producer latency/有效重叠，而非 launch gap；现有 A-first / split-A 顺序具有实测价值。
- Current hypothesis：在不改变已验证的 A 与 Gate/Up producer 相对顺序、不增加 global bytes 的前提下，缩短 Step1 `weight_local` 与地址临时量的 live range，可能减少 `snop`/VLS pipeline stall；若资源恰好跨过 wave 门槛还会增加并发，但这只是待验证的次级收益。
- Proposed single mechanism：先做 **Step1 B-fragment live-range narrowing**——把 Gate/Up 两次 `ldmatrix_b → mma` 的局部变量作用域与索引计算收紧，保持 `A → Gate0 → Gate1 → Up0 → Up1`（或该 shape 已验证的 split-A 顺序）、tile、global copy 次数和 barrier 数完全不变。
- Predicted changes：Step1 MT 不增，最好下降；MMA/LDG/barrier 静态计数不变；`snop` 或 VLS-pipeline stall 下降；Step1 tracer time 至少下降并推动端到端 AB/BA ≥1.2%。
- Falsification：MT 不降且 Step1 time 未改善，或任何 case AB/BA 中位提升不足 1.2%，立即归入 `restart-deped-trials`，不产生 submission/分支。
- Risks：TileLang lowering 可能重新扩张 live range；过度收紧会破坏 Gate/Up 之间的 latency overlap。必须先检查 generated C++/ISA 与 resource，再做三 Case full correctness。

## Evidence paths

- 原始 mcTracer：`profiler/mctracer/case{1,2,3}/`
- 原始 mcProfiler：`profiler/mcprofiler/raw/case{1,2,3}/step{1,2}/`（含 Case3 Step2 supplements）
- 汇总：`profiler/v130_v110_profile_summary.{md,json}`
- codegen/ISA：`codegen/`
- Roofline：`../../moe-roofline/v130_v110_rebaseline_sc-16g/`
- correctness/ABBA：`correctness/` 与 `benchmark/`

