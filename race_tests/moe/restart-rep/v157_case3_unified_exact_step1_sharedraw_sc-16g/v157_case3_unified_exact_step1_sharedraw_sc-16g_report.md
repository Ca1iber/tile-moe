# v157_case3_unified_exact_step1_sharedraw_sc-16g 证据报告

## Verdict

- 运行类型：正式本地 verdict；外部 OJ pending。
- 结论：`local-candidate-external-oj-pending`，不是 accepted。
- 一句话因果结论：在显式复用同一块 32 KiB shared 的前提下，将 Case3 原样 short/long Step1 合成 `16x96` mixed-slot grid，使统一 Step1 约快 2.64%、端到端正式均值快 1.868%；收益来自调度/launch 与少量 AP active 降低，不是 HBM 流量减少。

## Identity

- Machine：MetaX C500 `sc-16g`，sGPU id 3，25% compute，16 GiB。
- Git branch / starting commit：`dorm` / `46736908ef8a845c7ed28d934888d5f01f5c6ead`。
- Parent：v154 source SHA-256 `c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`。
- Incumbent external OJ SOTA：`v148_allcase_silu_degree9_clamp55_sc-16g` / `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840` / display `[83,82,82]` / aggregate `82.33`。
- Candidate：`candidate_submission.py` / `fc627e4e54e74bcd892bfe62c1f5c3ed3d47ed68df23c20fbd80917717924eff`。
- OJ source validation：PASS；TileLang primitive only，async/foreign/builtin sites 0。
- Promoted submission：无。外部 OJ 三 case 尚未提供，禁止创建 `restart-submission/<id>/`。
- KMD `3.8.30`，MACA `3.7.1.5`，mx-smi `2.3.1`；其余环境快照见 `profiler/mxsmi/`。

## Correctness

- 驱动：`run_v110_fullcheck.py`，使用官方三 shape、完整有效输出。
- Case1/2/3：PASS，`rtol=1e-2`、`atol=1e-2`。
- 静态 OJ source validator：PASS。
- Candidate SHA 与 benchmark/codegen/profile 均指向同一精确源文件。

## Benchmark

Case3 正式协议：5 rounds、warmup 5、repeat 20、AB/BA 交替。

| Round | Order | Parent ms | Candidate ms | Change |
|---:|---|---:|---:|---:|
| 1 | AB | 6.882099 | 6.756647 | -1.82288% |
| 2 | BA | 6.883853 | 6.754496 | -1.87914% |
| 3 | AB | 6.882048 | 6.755379 | -1.84056% |
| 4 | BA | 6.887245 | 6.758515 | -1.86911% |
| 5 | AB | 6.882471 | 6.749760 | -1.92825% |

- Mean：`-1.8679876%`
- Median：`-1.8691074%`
- Population stdev：`0.0361759 pp`
- 五轮全部优于 -1.8%，稳定越过 1.2% floor。
- Case1 1x10：parent `2.165248 ms`，candidate `2.157005 ms`，`-0.38070%`。
- Case2 1x10：parent `3.779405 ms`，candidate `3.764608 ms`，`-0.39151%`。
- Side checks 都正确且无回退，但单轮亚门槛数值只视作噪声，不宣称 Case1/2 优化。
- 外部 OJ：pending；因此 SOTA monotonic gate 未证明。

## mcTracer

v154 parent 中位：short Step1 `1.831168 ms` + long Step1 `2.470400 ms` = `4.301568 ms`。

v157c Case3 中位：

| Symbol | Role | Time ms | Grid | Threads | MT regs | Dynamic shared |
|---|---|---:|---|---:|---:|---:|
| kernel_kernel | expert rank | 0.012544 | 1x1 | 64 | 4 | 0 |
| kernel_kernel_1 | short input prepack | 0.136832 | 28x32 | 256 | 18 | 64 KiB |
| kernel_kernel_2 | long input prepack | 0.168320 | 28x32 | 512 | 28 | 24 KiB |
| kernel_kernel_3 | unified exact Step1 | 4.187904 | 16x96 | 256 | 226 | 32 KiB |
| kernel_kernel_4 | unified Step2 | 2.279936 | 28x96 | 256 | 220 | 32 KiB |

- Unified Step1 相对 parent 两 kernel 合计：`-2.64239%`。
- trace kernel-sum：v154 `6.861824 ms`，v157c `6.785536 ms`，`-1.11177%`。不同采集进程下以正式 paired benchmark 为最终 verdict。
- 首版分支 allocation 未显式复用时，统一 Step1 动态 shared 为 48 KiB、时间 `7.391104 ms`，端到端 `+44.23%`；这直接证明 shared 生命周期表达是成败关键。

## mcProfiler

Parent Step1 指标为等价 v152/v154 short `kernel_kernel_2` 与 long `kernel_kernel_4` 的求和或按 waves/AP-active 加权；v154 只改变 Step2，因此 Step1 等价。

| Metric | Parent short+long | v157c unified | Change |
|---|---:|---:|---:|
| Workgroups / waves | 1536 / 6144 | 1536 / 6144 | 0% |
| AP active cycles | 478,482,570 | 473,818,032 | -0.975% |
| MMA duty | 61.36% | 61.96% | +0.60 pp |
| Average wave life | 147,819 | 149,002 | +0.80% |
| Global read bytes | 4,015,484,416 | 4,136,087,968 | +3.00% |
| Global write bytes | 37,225,088 | 37,224,768 | ~0% |
| VLS pipeline stall | 149,512,154 | 151,364,275 | +1.24% |
| WSM stall | 29,921,990 | 29,886,535 | -0.12% |
| VL1 partition stall sum | 150,609,110 | 152,708,663 | +1.39% |
| DNOC read latency | 272.76 | 271.45 | -0.48% |

计数器没有支持“减少流量/访存 stall”的解释：读流量和 VLS/VL1 stall 反而略升。有效信号是同工作量下 AP active 小幅下降、MMA duty 略升，再叠加少一个 launch 和 mixed-grid 调度。

## Lowering and code generation

- 主要 kernel 数：6 → 5。
- Unified Step1：226 MT、46 ST、static max 2 waves/PEU；trace 动态 shared 32 KiB。
- Generated device source：63,753 bytes；MMA sites 13，`__syncthreads` sites 17。
- async memcpy sites 0；barrier async/wait sites 0。
- 数学 MMA 站点与 v154 相同，改变的是 dispatch/分支与 shared 地址表达。

## Roofline / hardware interpretation

- 本候选不减少 FLOP 或理论权重字节，且 profiler 实测 read bytes 增加 3%；不应把收益描述成 Roofline 带宽提升。
- short/long 两种 geometry 合并后没有单一可信的 calibrated slice compute roof；本版本明确记录 Roofline image unavailable，而保留 raw profiler 与 operational timings。
- mx-smi 快照见 `profiler/mxsmi/`；未修改 sGPU、时钟、功耗或调度设置。

## Decision

- v157c 是相对 v154 的本地过门槛候选，允许线性推进 `dorm` 并等待外部 OJ。
- 它不是 external-OJ SOTA，不能创建 submission ledger 条目，也不能使用 `accepted`/`opt(moe)`。
- 若外部 OJ 任一 case 回退或 WA，则归为 rejected，并保持 v148 为唯一 SOTA。
