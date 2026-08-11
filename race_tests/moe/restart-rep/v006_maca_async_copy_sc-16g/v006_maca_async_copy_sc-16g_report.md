# v006_maca_async_copy_sc-16g 证据报告

## Verdict

- 运行类型：verdict（单进程 10 warmup / 100 repeat；另有 screen run）
- 结论：rejected，保留为 async correctness/lowering 的因果检查点。
- 一句话因果结论：手工双缓冲首次实现并验证了真实 MACA async/MMA overlap，但 async 不能写原 swizzle layout，改用 row-major 后 shared 访问/等待延迟急剧增加；64 KiB footprint 进一步压低设备利用率，收益远小于代价。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm`，父提交 `4b777967`；本报告随 v006 checkpoint 提交。
- Kernel / benchmark hashes：kernel `215c3ec9f38089928e96d139a5601e16e251461da1146084375a2abb0904f6c5`；official `adfe36d8...c67f`；OJ `1165d148...585c8`。
- 工具链：远端 `/root/tilelang-metax` 开发构建、MXCC xcore1000、mcTracer、mcProfiler；原始日志与 target command 均随目录归档。

## Correctness

- 官方功能测试 2/2 PASS；OJ Case1/2/3 均 PASS，三组 `max_abs=0.001953125`。最小 layout 探针同时验证：identity+async 精确正确；swizzle+async 在 32x64 和 128x64 分别产生 1792/2048、7168/8192 个 mismatch。

## Benchmark

- 官方 benchmark：173.500137 / 50.397676 ms（两组配置）。
- OJ benchmark：8.114811 / 14.367826 / 27.649375 ms。
- 与当前最佳 v004 比较：官方 +116.26% / +98.55%；OJ +165.34% / +163.86% / +159.59%。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer Case3：Step1 18.319104 ms，Step2 9.317120 ms，launch gap 0.002816 ms，device span 27.639040 ms；dynamic shared 均为 65536 B，registers/thread 为 182/202，private 为 0。
- mcProfiler Case3：相对 v004，Total Cycles +84.67%/+46.40%，AP active cycles +170.22%/+151.30%，平均指令阶段延迟 +907.44%/+612.58%；MTE duty 5.97→2.51% / 5.03→2.48%，MMA duty 45.27→16.75% / 40.93→16.29%。Step2 private read/write 从 21504/21504 降到 0/0，证明 spill 消失但不是主导收益。
- stall 解释：绝对 VLS pipeline stall 与 VL1 partition stall 反而下降，但 device active time 大幅上升、MMA/MTE duty 同时塌陷；这不是 HBM 更忙，而是大量时间落在 async barrier/shared 访问的长延迟与低并发窗口。
- mx-smi：本版未单独采样；不把缺失数据伪装为结论。
- Roofline：Case3 Step1/Step2 原生 mcProfiler PNG 与 metric JSON 位于 `../../moe-roofline/v006_maca_async_copy_sc-16g/native/`。该图反映退化版本的观测点，不用于改变本版 rejected 判定。

## Lowering and code generation

- TileLang lowering：普通 `T.copy + T.Pipelined` 在 MACA 上由 `pipeline_planning.cc` 强制 `use_async_copy=false`；显式 builtin 才能生成真正的 `memcpy_async<16>`。自动 pipeline 还会把 next-stage overwrite 提前到 post-read barrier 之前，因此最终绕开自动调度。
- Generated device code：Case3 Step1/Step2 分别有 12/4 类静态 async-copy site、4/2 个 `barrier_arrive_and_wait` 调用位置和交替 parity buffer。稳态中 next parity copy 位于当前 parity post-MMA `__syncthreads()` 之后、另一 parity wait/MMA 之前，结构上存在真实 overlap。
- Assembly / resource usage：最终 xcore1000 ISA：Step1 182 MT / 30 ST / staticMaxWarps 2，Step2 202 MT / 28 ST / staticMaxWarps 2；两者 0-byte stack、0 `stp/ldp`、0 spill annotation。Step1/Step2 静态 MMA 各 256；barrier 8/6，arrive 77/108。由此确认寄存器压力下降并消除 Step2 spill，但 occupancy 上限仍只有 2 warps/PEU。

## Causal interpretation

- 预测指标是否按方向变化：真实 async、无 spill 两项兑现；MMA/MTE duty 回升预测失败，因为 row-major shared 和 64 KiB footprint 的代价远大于 overlap。
- 端到端与分阶段时间是否一致：一致；OJ Case3 27.649 ms 与 mcTracer device span 27.639 ms 对齐，Step1 占 66.29%。
- 生成代码是否实际变化：是；C++ 明确出现 `memcpy_async<16>` 与 `barrier_arrive_and_wait`，ISA 出现大量 `arrive`，不是指标噪声或只改 Python 参数。
- 是否超出 paired-run 噪声带：远超；三组 OJ 均退化约 160%。
- 瓶颈是否迁移：从 v004 的同步 load/barrier/MMA 串行，迁移为 async-compatible row-major shared 的长等待/低 duty，再叠加 64 KiB 双缓冲 footprint。下一版必须在保留正确 overlap 的同时恢复 32 KiB 并降低 accumulator/fragment lifetime。
