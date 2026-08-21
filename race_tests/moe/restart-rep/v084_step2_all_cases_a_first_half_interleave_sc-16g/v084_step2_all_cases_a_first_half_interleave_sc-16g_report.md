# v084 Step2 all-case A-first half interleave 证据报告

## Verdict

- 结论：`accepted_current_best`（相对当前 v083 的 1.2% promotion gate 已通过）。
- 一句话因果：把 v083 已在 Case3 验证的 Step2 `A0 -> B0 -> A1 -> B1` 同步半块调度精确扩展到 Case1/2；Case1/2 的 Step2 trace 分别缩短约 8.95%/8.70%，端到端分别稳定加速约 2.82%/3.09%，Case3 保持逐字节不变。
- 合规性：正常 TileLang；无 async、foreign source、external call、结果缓存或 harness 修改。

## Identity

- Parent：v083（commit `cea43415`）；最初外部 OJ 基线 v059 为 79.33。
- Machine：sc-16g，MetaX C500 25% sGPU。
- Candidate SHA-256：`32e50bbb2b21683765702b920ee78aa2fff865db78fcc8da94d3e3debfa517a2`。
- Generated C++ SHA-256：Case1 `2509cbaf...9448`，Case2 `59f4dae5...7dc`，Case3 `809f0b3b...9b2f`。
- Toolchain：本机 TileLang build，MXMACA 3.7.1.5 / xcore1000 backend。

## Correctness and OJ gate

- OJ source gate：PASS。
- 三个官方 shape 的 generated-code async/foreign-fragment gate：PASS。
- Case1/2 完整 padded output 与独立 FP32 reference：PASS，`rtol=atol=1e-2`。
- Case3 generated C++ 与 v083 逐字节一致；沿用 v083 已通过的完整 padded correctness。

## Benchmark

同进程 device-event、AB/BA 交替、每轮独立 warmup；负值表示候选更快。

| Case | Parent | Protocol | Median change | pstdev | Decision |
|---|---|---|---:|---:|---|
| 1 | v083（与 v59 此 shape 相同） | 5 rounds, warmup 20, repeat 300 | `-2.816%` | `0.0338%` | promote |
| 2 | v083（与 v59 此 shape 相同） | 5 rounds, warmup 20, repeat 300 | `-3.089%` | `0.0278%` | promote |
| 3 | v083 | generated C++ byte identity | `0.000%` by construction | — | retain v083 win |

- Case1 五轮：`-2.823% / -2.826% / -2.737% / -2.816% / -2.783%`。
- Case2 五轮：`-3.088% / -3.114% / -3.146% / -3.064% / -3.089%`。
- v083 的 Case3 五轮中位数相对 v59 为 `-3.395%`，v084 保持相同生成代码。

## mcTracer attribution

三组 AB/BA trace：

| Case | Metric | v083 median | v084 median | Paired median change |
|---|---|---:|---:|---:|
| 1 | Step1 | 1.745152 ms | 1.744384 ms | `-0.044%` |
| 1 | Step2 | 1.020928 ms | 0.934400 ms | `-8.955%` |
| 2 | Step1 | — | — | `+0.452%` |
| 2 | Step2 | 1.705728 ms | 1.559040 ms | `-8.705%` |

- 网格、32768-byte dynamic shared memory、2-wave 静态上限均未变化。
- Step1 变化属于采样噪声；两 shape 的收益都被定位到 Step2。
- 晋级结论以 5 轮 device-event 长测为主，trace 用于阶段归因。

## Lowering and final ISA

| Metric | Case1 v083 | Case1 v084 | Case2 v083 | Case2 v084 |
|---|---:|---:|---:|---:|
| MT / ST regs | 212 / 52 | 206 / 52 | 230 / 52 | 222 / 52 |
| static max waves/PEU | 2 | 2 | 2 | 2 |
| private/spill load/store | 0 / 0 | 0 / 0 | 0 / 0 | 0 / 0 |
| code bytes | 20,656 | 22,576 | 17,448 | 18,160 |
| static instructions | 2,582 | 2,822 | 2,181 | 2,270 |
| MMA | 256 | 256 | 256 | 256 |
| global load sites | 36 | 44 | 36 | 44 |
| global store sites | 32 | 32 | 41 | 41 |
| shared load/store | 64 / 24 | 64 / 16 | 64 / 16 | 64 / 16 |
| barrier / arrive | 4 / 123 | 4 / 128 | 4 / 114 | 4 / 114 |

候选没有减少 MMA 或输出 store；静态代码与 global-load site 反而增加。收益不是少算或跳过 tile，而是 A-first 相邻半块顺序改善同步 global-to-shared request 的发射时序和与 MMA 的有效重叠。寄存器下降是伴随结果，但没有改变 2-wave occupancy 档位。

## Rejected adjacent permutations

- `A0 -> B1 -> A1 -> B0`：Case3 相对 v083 中位 `+0.460%`，虽降至 214 MT regs 仍更慢。
- `A1 -> B1 -> A0 -> B0`：Case3 相对 v083 中位 `+0.401%`，同为 214 MT regs 仍更慢。
- 因此关键不是单纯降低寄存器，而是保持 stage-local 的 `A0/B0`、`A1/B1` 邻接关系。

## Decision

- v084 是正常、非 hack 候选；Case1/2 均稳定超过相对当前 best 的 1.2% 门槛，Case3 不退化，允许更新根 submission 并推进 `dorm`。
- 外部 OJ 尚未提交；这里只声明本地实测与代码同一性，不预测新 OJ 分数。
