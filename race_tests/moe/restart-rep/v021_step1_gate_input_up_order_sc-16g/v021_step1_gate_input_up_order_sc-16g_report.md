# v021_step1_gate_input_up_order_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted，限定 `experts == 32`
- 一句话因果结论：保留 gate 权重最高 load 优先级，将下一块 A 从 up 权重之后移到 gate 与 up 之间，使 Case2 Step1 MT registers 从 226 降到 214，并将 Step1 mcTracer 中位耗时降低 3.197%；4 对 OJ 全部同向，端到端中位降低 2.909%。

## Identity

- Machine：sc-16g，MetaX C500，25% sGPU，16 GiB VRAM quota
- Parent branch / commit：`dorm` / `c0e631a9e846a5bdeaae9aa8fa86207d8c3f9d5f`
- Parent source SHA-256：`0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad`
- Candidate / installed main SHA-256：`fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45`
- Official benchmark SHA-256：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- OJ benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`
- KMD / MACA / mx-smi：3.8.30 / 3.7.1.5 / 2.3.1
- MXCC：1.0.0 (`d9102a1572`)，xcore1000
- Python / PyTorch：3.12.11 / 2.8.0+metax3.7.1.3

完整环境与 dirty-worktree 审计见 `v021_step1_gate_input_up_order_sc-16g_environment.txt`。未修改或暂存原有 `3rdparty/tvm`、`.db`、v011/v012 遗留文件。

## Correctness

官方 fusedmoe benchmark functional 2/2 PASS；两组 performance 为 80.57136230 ms（8 experts）与 25.62040771 ms（4 experts）。二者不进入 32-expert 新路径，只作公共路径回归。

安装后的项目 OJ（warmup=10、repeat=100）全部通过：

| Case | experts / hidden / intermediate / tokens | v021 | max abs | 状态 |
|---|---|---:|---:|---|
| 1 | 16 / 2048 / 8192 / 2272 | 3.072195 ms | 0.001953125 | PASS |
| 2 | 32 / 7168 / 2048 / 4544 | 5.169480 ms | 0.001953125 | PASS |
| 3 | 64 / 7168 / 2048 / 9088 | 10.336217 ms | 0.001953125 | PASS |

## Benchmark

Case2 使用 4 对独立进程 AB/BA，warmup=10、repeat=100：

| Pair | parent ms | candidate ms | change |
|---:|---:|---:|---:|
| 1 | 5.331259 | 5.171295 | -3.001% |
| 2 | 5.332275 | 5.194977 | -2.575% |
| 3 | 5.332869 | 5.179523 | -2.875% |
| 4 | 5.330242 | 5.173394 | -2.943% |

- parent 中位：5.331767 ms
- candidate 中位：5.176458 ms
- paired 中位变化：`-2.909%`，4/4 同方向
- 原始日志与机器可读 summary：`benchmark/paired_case2/`

## mcTracer

Case2 三对 AB/BA、每份 trace 预热 3 次：

| Pair | Step1 change | Step2 change | device span change |
|---:|---:|---:|---:|
| 1 | -3.210% | -0.576% | -2.294% |
| 2 | -3.197% | +0.329% | -2.051% |
| 3 | -2.430% | -0.185% | -1.726% |

- Step1 中位：3.525120→3.412480 ms，`-3.197%`
- Step2 中位：1.794816→1.795840 ms；代码未变，配对方向混合，视为 replay 噪声
- device span 中位变化：`-2.051%`
- Step1 registers/thread：226→214；Step2 保持 196

## mcProfiler

Case2 Step1 targeted replay 内部一致：achieved/dispatched waves 都是 2,863,304，private read/write 都是 0，共享访问均报告 100% non-conflicting。

- AP MMA duty：24.89→25.05，`+0.643%`
- AP MTE duty：38.27→38.51，`+0.627%`
- average stage latency/instruction：69.23→68.51，`-1.040%`
- global read bytes：`-3.644%`
- total cycles：`+1.961%`
- VLS pipeline stall：`+8.755%`

报告跨 metric 方向混合，且 replay cycles 与 OJ/mcTracer 真实耗时冲突。因此只把 duty/latency 作为“调度利用略改善”的辅助证据，不从 mcProfiler 推导 3% elapsed-time；OJ 与 mcTracer 分别是端到端和分阶段时延权威。

## Lowering、C++ 与 ISA

- Case1 generated C++ parent/candidate 字节相同，SHA-256 `1a50eb0e818191e7cd9b077a5acd0ad88551aec4ac63b844f3e7d8ff670626f3`
- Case3 generated C++ parent/candidate 字节相同，SHA-256 `c80f44d8cb492426128f8b984e7279b4110d66c3adb9e54114e4ca80518c2db8`
- Case2 generated C++ parent/candidate SHA-256：`2a0755c62f768b8d81b0b669dd3616a91846c03508708616ea8206306414f0eb` / `1581836d07665920e062ba291886499c4b31076a62c35629ddbb1523408638f2`

Case2 最终 xcore1000 ISA：

| Step1 静态项 | parent | candidate |
|---|---:|---:|
| MT / ST registers | 226 / 52 | 214 / 52 |
| max waves/PEU | 2 | 2 |
| code bytes | 24800 | 24832 |
| total instructions | 3100 | 3104 |
| `snop` | 363 | 367 |
| MMA | 256 | 256 |
| global load/store | 34 / 16 | 34 / 16 |
| shared load/store | 64 / 16 | 64 / 16 |
| barrier / arrive | 4 / 92 | 4 / 92 |
| private load/store | 0 / 0 | 0 / 0 |
| spill annotations | 0 / 0 | 0 / 0 |

有效工作量、barrier 与 occupancy 上限未变，静态 `snop` 还增加 4 条；因此收益不能归因于更少指令。最直接的底层变化是 MT registers 减少 12 个，说明 gate→A→up 顺序缩短了部分 live range，并改变了动态依赖/issue 时机。

## mx-smi 与 Roofline

- 同步 workload：installed Case2，warmup=10、repeat=2000，5.207505 ms，PASS
- 活跃段：25% sGPU、3986/16000 MiB、连续多次 96% sGPU utilization
- 96% 是 `mx-smi` 的整片利用率快照，不等同于 MMA duty
- Step1 arithmetic intensity：84.828402 FLOP/B
- 1400 GB/s sensitivity roof 下仍位于 HBM 区域
- mcTracer 中位 throughput：102.344673→105.722892 TFLOP/s
- 1400 GB/s roof efficiency：86.178%→89.022%

Roofline 位于 `../../moe-roofline/v021_step1_gate_input_up_order_sc-16g/`。160 TFLOP/s 与 1400 GB/s 都是 25% slice sensitivity 参数，不应表述为厂商保证值。

## Causal interpretation

1. Case1/3 C++ 字节不变，排除非目标路径回退来自本轮源码。
2. Case2 的 MMA、访存、barrier 和 waves/PEU 不变，排除减少工作量或 occupancy 跳档。
3. MT registers 226→214 且无 spill，是最强的底层结构变化；配对 mcTracer 把收益稳定定位到 Step1。
4. mcProfiler duty/latency 小幅同向，但 total cycles/VLS stall 反向，因此不把 replay 计数器包装成单一因果证明。
5. 4/4 OJ 与 3/3 Step1 trace 同向，足以接受该 32-expert 特化。

下一轮优先拆分两个 ping-pong 半块的重排，确认 12 个 MT register 的下降由哪一半 live range 主导，再决定是否存在更小且更稳的调度变体。
