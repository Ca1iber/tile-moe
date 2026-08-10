# v000_minibs_baseline_sc-16g 证据报告

## Verdict

- 运行类型：verdict baseline
- 结论：accepted-baseline
- 一句话因果结论：当前三组 OJ 都是 Step1 主导的 HBM-side workload；kernel 已占满全部 104 AP，但 schedule 级重复读写使实际 AI 仅约 82–85 FLOP/B，下一轮应优先改善 Step1 权重局部性。

## Identity

- Machine：sc-16g；MetaX C500 sGPU；25% compute quota；16000 MiB VRAM quota；10 ms best-effort timeslice；runtime 可见 104 AP、16341008384 bytes。
- Git branch / commit / status：`moe-minibs@5fabf457e951abcf365fc8fe269016ac9bb22d40`；预存的 `3rdparty/tvm` 修改、数据库及旧实验未被触碰，完整状态见 identity 文件。
- Kernel / benchmark hashes：kernel `301b3af1...e56e09`；official `adfe36d8...c67f`；OJ `1165d148...585c8`。
- KMD / MACA / TileLang / PyTorch / mcProfiler：KMD 3.8.30；MACA 3.7.1.5；TileLang `0.1.9+cuda.git5fabf457`（dev build）；PyTorch `2.8.0+metax3.7.1.3`；mcProfiler 3.8.1.4；mcTracer 3.7.1.5-ef9e10e；mx-smi 2.3.1；Python 3.12.11。

## Correctness

- 权威入口保持未修改。官方 benchmark 三个独立进程共 6/6 functional PASS；OJ 三个独立进程、三个 case 共 9/9 PASS，记录到的最大绝对误差均为 `0.001953125`。
- 命令：`fusedmoe_benchmark.py` 与 `oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100`；原始日志和汇总见 `benchmark/`、`correctness/`。

## Benchmark

- 官方 benchmark 中位数：`h7168_i2048_e8_top4_bs2_seq8192 = 80.951421 ms`；`h3584_i1024_e4_top2_bs8_seq4096 = 26.056882 ms`。
- OJ benchmark 中位数：case1 `3.121774 ms`；case2 `5.738880 ms`；case3 `11.211986 ms`。
- OJ 三次独立进程相对极差分别为 `0.243% / 0.141% / 0.196%`，足以作为 paired-run 基线。官方第二 shape 出现一次 27.107729 ms 离群点，相对极差 4.041%，以后必须使用交替 paired run 判断该 shape。
- 与 v000 / 上一版 / 当前最佳比较：这是 v000 本身，没有性能 delta；当前最佳暂记为 v000。

## Profile

- mcTracer：case1 Step1/Step2 `2.029312/1.078016 ms`（`65.31%/34.69%`），gap `0.026624 ms`；case2 `3.677696/2.057216 ms`（`64.13%/35.87%`），gap `0.028672 ms`；case3 `7.145216/4.060160 ms`（`63.77%/36.23%`），gap `0.025600 ms`。device span 与 OJ 中位数一致到约 0.01 ms 量级。
- mcProfiler native：case1 S1/S2 `906.600/590.248 GB/s`；case2 `901.198/861.539 GB/s`；case3 `1024.290/1001.441 GB/s`。这些是 profiler 的 `case_I/case_flops` 原生坐标，不解释为端到端 TFLOP/s；原始 JSON、PDF、PNG 全部保留。
- mx-smi 同步采样：case3 2000 次长负载中 14 个 active 样本的 HBM 中位数 `1024.212 GB/s`、均值 `1026.351 GB/s`，相对 1400 GB/s sc16 工程屋顶为 `73.158%`；104/104 AP 活跃，稳定样本 AP 中位使用率 97%。首个 25% AP 样本包含负载爬升阶段，因此保留但不单独代表稳态。
- Roofline decision：逐 CTA fp16 A/B load 与 output store 的 schedule 模型给出 AI `81.92–84.83 FLOP/B`；用 mcTracer 时间得到 `87.686–101.590 TFLOP/s` 和 `1070–1215 GB/s` schedule-implied traffic。相对 1400 GB/s 屋顶效率 `76.46–86.81%`，六点全部 HBM-side。25% compute-share 推断屋顶为 479.232 TFLOP/s、ridge 342.3 FLOP/B；即使换成整卡 1916.928 TFLOP/s，分类仍是 HBM-side。

## Lowering and code generation

- TileLang lowering：三个 shape 的 `JITKernel.impl.prim_func` 已用 `PrimFunc.script(show_meta=True)` 归档，均约 61 KB。
- Generated device code：每个 shape 均归档约 22.7 KB MXMACA device C++，包含 6 个 `__builtin_mxc_mma` 静态调用点、6 个 `__syncthreads` 静态点；另归档约 529 KB 的 O3 `mxc-metax-macahca` LLVM IR。
- Assembly / resource usage：MXCC 3.7.1 拒绝 `-S`，安装中无设备 objdump，故后端 ISA 明确标记 unavailable。MXCC/mcTracer 一致显示 Step1 196/198 MT registers、Step2 256 MT registers，二者 `staticMaxWarps/PEU=2`；mcTracer 动态 shared 均 32768 bytes，Step1/Step2 mtreg occupancy 分别 38%/50%，shared occupancy 均 50%。

## Causal interpretation

- 预测指标是否按方向变化：v000 无代码变化；稳定 OJ、阶段分解和三类硬件证据均按预期建立。
- 端到端与分阶段时间是否一致：一致；kernel sum 加约 0.026 ms gap 等于 mcTracer device span，并贴近 OJ 中位数。
- 生成代码是否实际变化：不适用；快照 hash 与运行 kernel 绑定，三 shape schedule 相同，仅编译期 shape 常量不同。
- 是否超出 paired-run 噪声带：无候选 delta；v000 将 OJ 噪声带定为约 0.25%，官方第二 shape 需更严格 paired run。
- 瓶颈是否迁移：不适用；已定位初始瓶颈为 Step1 主导、HBM-side。v001 的首选单变量机制是仅改变 Step1 的 CTA 发射/遍历顺序以提高同一 expert 权重 tile 的缓存复用；证伪条件是 paired OJ 无收益或 Step1 时间/HBM 指标不改善。
