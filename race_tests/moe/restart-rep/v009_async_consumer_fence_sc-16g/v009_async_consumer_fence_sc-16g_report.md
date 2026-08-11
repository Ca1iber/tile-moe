# v009_async_consumer_fence_sc-16g 证据报告

## Verdict

- 运行类型：verdict + alternating paired Case3
- 结论：rejected as production；保留为经正确性和底层语义验证的 consumer-fence cleanup 检查点。
- 一句话因果结论：下一 K 迭代 wait 后的 CTA barrier 已能在 shared compute tile 覆盖前收束前一轮 MMA consumer，因此删除 post-MMA `T.sync_threads()` 将 v008/v009 paired Case3 均值降低 12.89%；但 half-N 双倍 grid 与 staging-to-swizzle transform 仍使它慢于 v004。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm`，父提交 `92435226`；本报告随 v009 checkpoint 提交。
- Kernel / benchmark hashes：kernel `7adb0ee7165adbecb5c2b6f7b9bfad020ed4e514533917b2d433bb09c5da8a9c`；其余见 source hash 文件。
- 工具链：仓库开发构建、MXCC xcore1000、mcTracer、mcProfiler 及 native RoofLine。

## Correctness

- `test_submission_quick.py` 两组 PASS；官方功能测试 2/2 PASS；OJ Case1/2/3 均 PASS，三组 `max_abs=0.001953125`。四次 paired Case3 也全部 PASS，脚本 trap 恢复后的 kernel hash 与 v009 snapshot 完全一致。

## Benchmark

- 官方 benchmark：106.776709 / 32.767415 ms，较 v008 分别改善 0.43% / 1.01%。
- OJ verdict：4.117422 / 7.275034 / 14.080724 ms；较 v008 的同轮 verdict 分别变化 +0.06% / -8.01% / -14.69%。
- Paired Case3：交替 v008/v009/v008/v009，v008 为 15.743301/16.645103 ms，v009 为 14.126718/14.086508 ms；均值 16.194202→14.106613 ms，v009 改善 12.89%。相对当前最佳 v004 paired 10.653655 ms 仍慢约 32.41%。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer Case3：Step1 11.356672 ms、Step2 4.756736 ms、launch gap 0.028160 ms、device span 16.141568 ms；较 v008 的 Step1/Step2 分别下降 3.95% / 1.11%。Step1 占 device kernel time 70.48%。
- mcProfiler vs v008：Step1 Total Cycles -6.70%、Average Wave life -7.43%、AP active cycles -5.45%，MTE/MMA duty 5.81/27.07%→6.15/28.63%；Step2 wave life -1.52%、AP active -1.27%，但单次 Total Cycles +2.56%。两 kernel private read/write 均为 0。WSM stall 只变化 +0.45%/-0.07%，而 VLS pipeline stall +8.25%/+7.28%，证明 WSM stall 不是 barrier 时间的直接代理，删 fence 后 shared transform/VLS 等剩余等待更突出。
- mx-smi：profile/benchmark 间隔核验为 25% sGPU、P0，空闲时 util 0%；配对 fresh-process 协议用于控制已知进程间抖动。
- Roofline：Case3 Step1/Step2 原生 PNG 与 metric JSON 位于 `../../moe-roofline/v009_async_consumer_fence_sc-16g/native/`。

## Lowering and code generation

- TileLang lowering：仅删除 Step1/Step2 K 循环末尾 post-MMA `T.sync_threads()`；wait 后同步与 staging-to-swizzle 后同步均保留，tile/grid/layout/fragment 不变。
- Generated device code：每 kernel 静态 `__syncthreads()` 从 3 降为 2，总数 6→4；`memcpy_async` 6、async wait 3、MMA source sites 3 均不变。Step1 仍是 input load→两个 async wait→CTA sync→双 shared transform→CTA sync→next async→gate/up MMA。
- Assembly / resource usage：Case3 Step1 116 MT/28 ST、Step2 126 MT/28 ST，32 KiB dynamic shared、staticMaxWarps/PEU 4、0 stack、0 spill。最终 ISA barrier 从 v008 的 5/4 降至 4/3，arrive 31/46→29/44，code bytes 12080/10608→12048/10576。
- Builtin trace：MXCC ISA debug info 指向 `__clang_maca_device_functions.h`；`barrier_arrive_and_wait` 默认 `thread_scope_block` 并调用 `__builtin_mxc_barrier_and_wait4(block, token)`。因此下一版有源码和 ISA 依据删除 wait 后的额外 `T.sync_threads()`；详见 `codegen/*builtin_barrier_semantics.md`。

## Causal interpretation

- 预测指标是否按方向变化：正确性、shared、register、occupancy 均保持；C++/ISA barrier 数减少，Step1 cycles/wave life 与配对 runtime 下降，核心假设成立。
- 端到端与分阶段时间是否一致：paired 总时间 -12.89%，mcTracer device span -3.12%；幅度受进程抖动和 profiler 扰动影响，但方向一致。官方大 shape 仅改善约 1%，说明 post-MMA fence 不是大 shape 的主瓶颈。
- 生成代码是否实际变化：是；C++ 少两个静态 sync，最终 ISA 每 kernel 少一个 hardware barrier 和两个 arrive，且 code size 各减 32 B。
- 是否超出 paired-run 噪声带：两对 v009 均优于相邻 v008，分别 -10.27% / -15.37%，均值 -12.89%，结论稳定。
- 瓶颈是否迁移：Step1 仍占 70.48%，双 gate/up shared transform 和 VLS pipeline stall 成为主要剩余代价。SDK 进一步证明 wait 自身已是 block scope，下一版删除 wait 后重复 CTA sync；两个 Step1 token 是否可合并另行隔离验证。
