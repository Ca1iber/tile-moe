# v001_step1_input_locality_grid_sc-16g 证据报告

## Verdict

- 运行类型：verdict candidate
- 结论：accepted；成为当前最佳。
- 一句话因果结论：只改变 OJ-specialized Step1 的 CTA grid 遍历，把相同 routed-row input 的 N tiles 聚到快速 x 维，在计算量和资源不变时将 case3 Step1 外层访存计数降低 21.379%，使三个 OJ case 稳定快约 1.9%–2.3%，且官方路径不退化。

## Identity

- Machine：sc-16g；MetaX C500 sGPU；25% compute quota；16000 MiB VRAM quota；runtime 可见 104 AP。
- Git branch / parent：`moe-minibs@2de8d3d2d2a3df20092f904ca386eaa4b789fbf7`；本报告关闭时 kernel 尚为待提交 diff。预存的 TVM 修改、数据库及旧实验未触碰。
- Kernel / benchmark hashes：kernel `7523054b...fbd`；official `adfe36d8...c67f`；OJ `1165d148...585c8`。两 benchmark 与 v000 完全相同。
- KMD / MACA / TileLang / PyTorch / mcProfiler：同 v000 环境，即 KMD 3.8.30；MACA 3.7.1.5；TileLang `0.1.9+cuda.git5fabf457`；PyTorch `2.8.0+metax3.7.1.3`；mcProfiler 3.8.1.4；mcTracer 3.7.1.5-ef9e10e；mx-smi 2.3.1；Python 3.12.11。

## Correctness

- 官方 benchmark 三个独立进程共 6/6 functional PASS；OJ 三个独立进程、三个 case 共 9/9 PASS，最大绝对误差均为 `0.001953125`。
- 权威入口和容差未改。命令仍为 `fusedmoe_benchmark.py` 与 `oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100`；原始日志及汇总见 `benchmark/`、`correctness/`。

## Benchmark

- 官方中位数：large `80.953867 ms`，相对 v000 `-0.003%`；small `25.999631 ms`，相对 v000快 `0.220%`。两者判为无退化、无可靠收益。
- OJ 中位数：case1 `3.061635 ms`（快 `1.926%`）；case2 `5.605153 ms`（快 `2.330%`）；case3 `10.986158 ms`（快 `2.014%`）。三次独立进程相对极差仅 `0.104%/0.041%/0.028%`，显著小于收益。
- 第一版过宽 guard 使官方 large 约从 80.95 ms 退化到 83.10 ms；加入 expert-count guard 后恢复。该反例与最终数据均保留，避免把 OJ 特化误扩散到官方 e8 shape。
- 原始样本、命令及统计见 `benchmark/`；完整 v000/v001 表见根目录 `*_comparison.md/json`。

## Profile

- mcTracer：case1 Step1/Step2 `1.967360/1.103872 ms`，case2 `3.552768/2.079232 ms`，case3 `6.932736/4.050176 ms`；相对 v000 的 Step1 分别快 `3.053%/3.397%/2.974%`。Step2 grid 未变，时间小幅变化落在 profiler/cache 波动范围。launch gap 仅 `0.002816/0.030976/0.025344 ms`。
- mcProfiler：针对收益最大、负载最长的 case3 Step1。`all_ops` 保持 `724409106432`；`all_memacs 7267684576 -> 5713961056`（降低 `21.379%`）；native `case_I 851.926 -> 1083.579`（提高 `27.192%`）；`vl1_memacs/l2c_memacs` 不变。native 坐标只做版本相对比较。
- mx-smi：case3 长负载 HBM 中位数 `1024.212 -> 900.027 GB/s`（降低 `12.125%`），两版均 104 AP 活跃、稳态 AP 中位约 97%。更快但 HBM 吞吐更低，与“减少外层实际传输”一致。
- Roofline：schedule-issued AI 仍约 82–85 FLOP/B，所有点仍在 HBM-side；这张静态 schedule 图不计入缓存复用，因此分类不迁移，而 decision efficiency 因 Step1 时间降低而提高。mcProfiler-native 对比图显示运行期有效 AI 提高。

## Lowering and code generation

- TileLang lowering：三个 OJ shape 的最终 `PrimFunc` 已归档，约 61.4 KB/例。
- Generated device code：三例均约 22.67 KB，保持 6 个 `__builtin_mxc_mma` 与 6 个 `__syncthreads` 静态调用点。case3 diff 显示只有 Step1 的 `blockIdx.x/y` 映射交换；Step2 生成代码不变。
- Assembly / resource usage：MXCC 3.7.1 不支持当前流程的 `-S` 且环境无设备 objdump，ISA 明确标记 unavailable。资源不变：Step1 196/198 MT registers、Step2 256，`staticMaxWarps/PEU=2`，动态 shared 均 32768 bytes；case2/3 Step1 的 ST register 从 29 变 28，源于 block index 映射简化。

## Causal interpretation

- 预测指标是否按方向变化：是。三例 OJ 超过 0.5% 目标，Step1 时间下降，case3 外层访存计数下降，资源与计算量不变。
- 端到端与分阶段时间是否一致：是。端到端快约 2%，主导 Step1 快约 3%，Step2 近似不变。
- 生成代码是否实际变化：是，变化局限于 Step1 blockIdx 映射和 grid 维度；数学、tile、线程、pipeline、Step2 均不变。
- 是否超出 paired-run 噪声带：是。OJ 收益 1.926%–2.330%，而本版独立进程相对极差 0.028%–0.104%，也明显高于 v000 约 0.25% 噪声带。
- 瓶颈是否迁移：未迁移。Step1 仍占约 63%，六点仍为 HBM-side；下一轮应针对尚未转置的 Step2 做独立单变量局部性实验，或继续降低 Step1 traffic，而不是盲目改 tile。
