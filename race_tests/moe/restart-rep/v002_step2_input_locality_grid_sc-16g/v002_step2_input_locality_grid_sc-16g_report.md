# v002_step2_input_locality_grid_sc-16g 证据报告

## Verdict

- 运行类型：verdict candidate
- 结论：accepted；成为当前最佳。
- 一句话因果结论：在 v001 基础上仅交换 OJ-specialized Step2 的 CTA grid 维度，相同 work/resources 下使 case3 Step2 外层访存计数降低 32.117%、Step2 时间降低 4.450%，从而让 OJ case2/3 再快约 1.7%，官方路径不变。

## Identity

- Machine：sc-16g；MetaX C500 sGPU；25% compute quota；16000 MiB VRAM quota；runtime 可见 104 AP。
- Git branch / parent：`moe-minibs@91ef383124a760f9664592ea56eeb1eb8e1e80cf`；关闭报告时只有 kernel 的 2 行候选 diff 和四个 v002 目录待提交，预存脏文件保持隔离。
- Kernel / benchmark hashes：kernel `bf61d3ce...b7461`；official `adfe36d8...c67f`；OJ `1165d148...585c8`。权威 benchmark 与 v000/v001 完全相同。
- 软件环境：KMD 3.8.30；MACA 3.7.1.5；TileLang `0.1.9+cuda.git5fabf457`；PyTorch `2.8.0+metax3.7.1.3`；mcProfiler 3.8.1.4；mcTracer 3.7.1.5-ef9e10e；mx-smi 2.3.1；Python 3.12.11。

## Correctness

- 官方 benchmark 三个独立进程共 6/6 functional PASS；OJ 三个独立进程、三个 case 共 9/9 PASS，最大绝对误差均为 `0.001953125`。
- 权威入口、输入分布和容差未改。正式命令为 `fusedmoe_benchmark.py` 与 `oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100`。

## Benchmark

- 官方中位数：large `80.943892 ms`、small `25.974597 ms`，相对 v001 分别快 `0.012%/0.096%`，判为路径不变、性能不退化。
- OJ 中位数：case1 `3.063875 ms`（相对 v001 慢 `0.073%`，低于 0.25% 门槛）；case2 `5.509847 ms`（快 `1.700%`）；case3 `10.793464 ms`（快 `1.754%`）。三进程相对极差为 `0.076%/0.165%/0.074%`。
- 累计相对 v000：case1/2/3 快 `1.855%/3.991%/3.733%`。case1 的 Step2 虽有阶段收益，但端到端被相同量级的运行波动抵消；未夸大为 case1 新收益。
- 原始样本、命令和统计见 `benchmark/`；统一比较见根目录 `*_comparison.md/json`。

## Profile

- mcTracer：case1 Step1/Step2 `1.959168/1.074432 ms`，case2 `3.516416/1.970944 ms`，case3 `6.945280/3.869952 ms`。相对 v001，Step2 分别快 `2.667%/5.208%/4.450%`；Step1 变化 `+0.416%/+1.023%/-0.181%`，视为 trace 波动。Step2 grid 从 `(24,8)/(48,28)/(96,28)` 变为 `(8,24)/(28,48)/(28,96)`。
- mcProfiler：定向 case3 Step2。因 v001 Step2 生成代码与 grid 均等同 v000，使用已归档 v000 Step2 作为计数器基线。`all_ops` 保持 `362261071872`，`all_memacs 4095324288 -> 2780030912`（降 `32.117%`），`during` 降 `4.905%`，native `case_I 756.045 -> 1113.746`（升 `47.312%`）；VL1/L2C memacs 均不变。
- mx-smi：case3 2000-repeat 长负载 HBM 中位数 `794.714 GB/s`，相对 v001 `900.027 GB/s` 再低 `11.701%`；104 AP 全活跃，稳态 AP 中位 97%。运行更快而吞吐更低，支持减少数据移动。
- Roofline：静态 schedule-issued 六点仍为 HBM-side，因为模型不计缓存复用；v002 Step2 decision efficiency 提高。mcProfiler-native 的 case3 Step2 全局坐标由 756.0 提升到 1113.7 FLOP/B，并越过工具物理屋顶的 1040 ridge；该现象只说明 profiler 全局访存坐标发生显著迁移，不把 native `case_flops` 当成端到端 TFLOP/s。

## Lowering and code generation

- TileLang lowering：最终三个 OJ shape 的 `PrimFunc` 全部归档，约 61.4 KB/例。
- Generated device code：仍为约 22.67 KB、6 个 MFMA site、6 个 syncthreads site。v001/v002 case3 diff 只出现在 Step2：row/group 使用 `blockIdx.y`，down-weight/output column 使用 `blockIdx.x`；Step1 生成代码不变。
- Resource usage：完全不变。Step1 196/198 MT registers，Step2 256，`staticMaxWarps/PEU=2`，动态 shared 32768 bytes。MXCC 不支持当前 `-S` 且环境无设备 objdump，ISA 按同一环境声明 unavailable。

## Causal interpretation

- 预测指标是否按方向变化：是。Step2 grid、时间、外层访存和长负载 HBM 吞吐均按“提高 input 局部性、减少搬运”的方向变化。
- 端到端与分阶段时间是否一致：case2/3 一致；Step2 快约 4.5%–5.2% 对应端到端快约 1.7%。case1 Step2 快 2.7%，但约 0.03 ms 的阶段收益低于端到端进程波动，因此只判不退化。
- 生成代码是否实际变化：是，且严格局限于 Step2 blockIdx 映射；work、tile、threads、pipeline 和资源不变。
- 是否超出 paired-run 噪声带：case2/3 是；case1 否。综合 verdict 接受，因为两个主分数 case 明确提升、case1 无显著退化、官方无退化。
- 瓶颈是否迁移：端到端仍由 Step1 主导（约 64%）；case3 Step2 的 mcProfiler 全局坐标可能已从 HBM 侧移到物理 compute ridge 右侧。下一轮若继续，优先回到 Step1 或验证更深层 cache/compute 限制，不再重复做 Step2 HBM 局部性微调。
