# v083 Step2 Case3 A-first half interleave 证据报告

## Verdict

- 结论：`accepted_current_best`（本地 1.2% promotion gate 已通过）。
- 一句话因果：把 Case3 Step2 的同步 producer 顺序从完整 B 后完整 A，改为每半块 `A -> B`，在工作量和网格不变的前提下把 Step2 trace 缩短约 9.45%，端到端稳定加速约 3.40%。
- 合规性：正常 TileLang；无 async、foreign source、external call、结果缓存或 harness 修改。

## Identity

- Baseline：v059，外部历史 OJ 79.33。
- Machine：sc-16g，MetaX C500 25% sGPU。
- Candidate SHA-256：`bde129953767a9e9efde2b39cd8c23b4adc9038c709c2519f76bf2ff9291acea`。
- Case3 generated C++ SHA-256：`809f0b3b90b3461fcf1f33de8850f2bf69286d04bc5adbe8440ab1d97edc9b2f`。
- Toolchain：本机 TileLang build，MXMACA 3.7.1.5 / xcore1000 backend。

## Correctness and OJ gate

- OJ source gate：PASS。
- 三个官方 shape 的 generated-code async/foreign-fragment gate：PASS。
- Case1/2/3 完整 padded output 与独立 FP32 reference：全部 PASS，`rtol=atol=1e-2`。
- Case1/2 generated C++ 与 v59 逐字节一致，排除非目标 shape 隐藏变化。

## Benchmark

同进程 device-event、AB/BA 交替、每轮独立 warmup；负值表示候选更快。

| Case | Protocol | Median change | Interpretation |
|---|---|---:|---|
| 1 | 3 rounds, warmup 10, repeat 200 | `-0.015%` | byte-identical，噪声 |
| 2 | 3 rounds, warmup 10, repeat 200 | `-0.008%` | byte-identical，噪声 |
| 3 | 5 rounds, warmup 20, repeat 300 | `-3.395%` | 稳定越过 1.2% gate |

Case3 五轮变化为 `-3.394% / -3.418% / -3.400% / -3.393% / -3.395%`，均值 `-3.400%`，总体标准差 `0.0094%`。

## mcTracer attribution

三组 AB/BA trace：

| Metric | v59 median | v083 median | Paired median change |
|---|---:|---:|---:|
| Step1 | 5.904128 ms | 5.911296 ms | `+0.277%` |
| Step2 | 3.343104 ms | 3.027712 ms | `-9.448%` |

- Step1 grid 始终 `16 x 96`；Step2 grid 始终 `28 x 96`。
- 两阶段 dynamic shared memory 均为 32768 bytes。
- v083 只改变 Step2，trace 与源码修改阶段一致；Step1 小幅变化不解释端到端收益。
- tracer 中 launch gap 存在采集顺序波动，因此晋级结论以 device-event 5 轮长测为主，trace 只用于阶段归因。

## Lowering and final ISA

| Case3 Step2 | v59 | v083 |
|---|---:|---:|
| MT / ST regs | 230 / 52 | 222 / 52 |
| static max waves/PEU | 2 | 2 |
| private load/store | 0 / 0 | 0 / 0 |
| spill annotations | 0 / 0 | 0 / 0 |
| code bytes | 17,448 | 18,160 |
| static instructions | 2,181 | 2,270 |
| MMA | 256 | 256 |
| global load sites | 36 | 44 |
| global store sites | 41 | 41 |
| shared load/store | 64 / 16 | 64 / 16 |
| barrier / arrive | 4 / 114 | 4 / 114 |

候选静态代码和 global-load site 反而更多，但寄存器下降、运行更快。可排除“少算”与“减少真实 tile 工作量”；有效机制是同步 copy 的 request issue order 改善了延迟重叠和后端调度。

## Decision

- v083 是正常非 hack 候选，稳定超过 promotion gate，允许更新 submission 与 `dorm`。
- 外部 OJ 尚未提交；报告只声明本地实测提升，不预测或伪造 OJ 分数。
