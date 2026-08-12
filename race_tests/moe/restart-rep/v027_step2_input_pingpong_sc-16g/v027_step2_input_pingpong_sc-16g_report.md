# v027_step2_input_pingpong_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted
- 一句话因果结论：Step2 寄存器 A ping-pong 让下一块 `up_logits` 的 global vector loads 与当前 MMA 区间重叠，在不降低 2-wave occupancy、无 private spill 的条件下，稳定缩短 Step2。

## Identity

- Machine：sc-16g，MetaX C500，25% sGPU，16 GiB quota
- Git：branch `dorm`，父 commit `7d4f97663e5405c268b09e8a5e2cbcf4bca27adb`
- Parent / candidate SHA-256：`8679b644...` / `601c1dfd...`
- OJ / official benchmark SHA-256：`1165d148...` / `adfe36d8...`
- KMD `3.8.30`，MACA `3.7.1.5`，PyTorch `2.8.0+metax3.7.1.3`，mcProfiler `/opt/mcProfiler-ubuntu18.04`，mcTracer `/opt/maca-3.7.1/bin/mcTracer`

## Correctness

- 源码级三 Case：max abs 均为 `0.001953125`，全部 PASS。
- 四实例平衡脚本：所有实例 `torch.assert_close(rtol=1e-2, atol=1e-2)` PASS。
- 正式 `oj_benchmark.py --cases 1,2,3 --warmup 20 --repeat 100`：三 Case PASS。
- 正式 `fusedmoe_benchmark.py`：两组 functional config 均 PASS。

## Benchmark

| Case | 对称父/子协议 | Balanced median | Improved rounds |
|---|---|---:|---:|
| 1 | v027g vs v027 final | -0.3731% | 8/8 |
| 2 rep1 | v024 vs v027f | -1.0733% | 8/8 |
| 2 rep2 | v024 vs v027f | -1.1069% | 8/8 |
| 3 | v027f vs v027g | -0.5971% | 8/8 |

- 正式 OJ 单进程绝对值：Case1 `3.05998 ms`，Case2 `5.26688 ms`，Case3 `10.26947 ms`。绝对值受切片/同进程状态影响，接受裁决使用同窗口 balanced ratio。
- 长跑 Case2（warmup 100, repeat 1000）：`4.91270 ms`，PASS。
- 官方 fusedmoe：functional PASS；performance `80.4940 ms`（7168/2048/8e）和 `25.5106 ms`（3584/1024/4e）。该 benchmark 包含路由、排序和 scatter，只作回归门禁。

## Profile

### mcTracer Case2

- v024 Step2：median `1.793536 ms`。
- v027 Step2：median `1.742592 ms`。
- 三个 AB/BA pairs 的 Step2 变化：`-3.0545%`、`-2.2327%`、`-2.8682%`，中位数 `-2.8682%`。
- Step1 未修改但跨进程抖动明显；不使用 device span 作为本版本因果依据。
- Step2 registers/thread：196→228；dynamic shared 32768 B 不变；private/thread 0；grid 28×48 不变。

### mcProfiler Case2 Step2 targeted

| Metric | v024 | v027 | 解释 |
|---|---:|---:|---|
| Average wave life cycles | 4926.39 | 4852.41 | -1.50% |
| AP active cycles | 4,180,292,256 | 4,136,025,534 | -1.06% |
| AP MMA duty | 25.28% | 25.56% | 小幅提高 |
| AP MTE duty | 38.81% | 39.24% | 小幅提高 |
| WG average latency | 67.23 | 66.18 | 降低 |
| VL1 stall pt0/1/2/3 | 100.3/102.2/98.2/102.9M | 92.3/93.1/91.5/94.0M | 四分区均下降 |
| Private read/write instructions | 0 / 0 | 0 / 0 | 无 spill |

- targeted `Total Cycles` 与 global bytes 是多轮 replay 聚合计数，父子采集窗口不同，不能替代单次 runtime。

### mx-smi / Roofline

- `mx-smi` 确认 C500、25% compute slice、16 GiB quota、KMD/MACA 身份。默认命令约 2 秒采样且短 Kernel 循环仍显示 0%，不用于 Kernel 利用率裁决。
- 原生 RoofLine 父/子分别给出 538.93 / 526.90（工具单位）和不一致的 counted memory traffic；独立 replay 与对称时间方向相反。两份原始图保留作结构快照，不作接受依据。
- 本机制不改变数学 FLOPs/理论必要字节，真正改变的是 load 与 MMA 的时序重叠。

## Lowering and code generation

- TileLang：新增第二个 `make_mma_load_layout(..., matrix="A")` fragment；将 Step2 K loop 改为 even/odd pair loop，B shared buffer仍单缓冲。
- Generated C++：父版 Step2 196 MT/28 ST，候选 228 MT/52 ST；两者均 0 B stack、2 waves。
- Final ISA Case2：MMA 256、LDS128 64、STS128 16 数量不变；LDG128 24→28，barrier 3→4，额外 4 条 LDG 是下一 A tile 的寄存器预取。它们被发射在当前 MMA 之前，而不是 barrier 后。
- 额外指令与寄存器成本存在，但被隐藏的 global-load latency 带来净收益。

## Causal interpretation

- 预测的 Step2 runtime、wave life、VL1 stall 下降以及 MMA/MTE duty 上升均出现。
- 正确性、资源、ISA、mcTracer、mcProfiler 与对称 benchmark 形成一致证据链。
- 收益幅度随 Case 变化：Case2 最大，Case3 次之，Case1 较小；但三组均 8/8 轮改善，因此全部启用。
- 后续最值得探索的是 B shared producer/consumer pipeline；但需要比 `__syncthreadshared` 更轻的真实后端 fence 或双 shared buffer，不能再依赖源码层 `num_stages=2` 自动生成。
