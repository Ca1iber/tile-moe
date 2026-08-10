# v003_step1_register_pressure_tile64_sc-16g 证据报告

## Verdict

- 运行类型：screen
- 结论：rejected；未进入 verdict。
- 一句话因果结论：BN=64 确实把 Step1 registers/shared 几乎减半并将静态 warp 上限翻倍，但 CTA 数也翻倍，case3 Step1 时间反而增加 113%，说明当前 C500 schedule 的大 tile 工作摊销远比名义 occupancy 更关键。

## Identity and correctness

- Parent：`v002_step2_input_locality_grid_sc-16g@243102d5`。
- Candidate SHA256：`b31bfdfa...22c5a`；official/OJ benchmark hash 未变。
- OJ case2/3 均 PASS，max_abs `0.001953125`；case1 和官方路径在编译期 guard 上不受影响，但因 screen 已明显失败，没有伪装成已执行结果。
- 候选源码和 patch 已归档；工作 kernel 已恢复 v002 SHA256 `bf61d3ce...b7461`。

## Benchmark

- case2：v002 `5.509847 ms`，v003 screen `9.323776 ms`，退化 `69.220%`。
- case3：v002 `10.793464 ms`，v003 screen `18.578247 ms`，退化 `72.125%`。
- 退化远大于 0.25% 门槛，因此不运行三进程 verdict；这是按预注册早停规则执行，不是缺证据后主观拒绝。

## Profile and codegen

- mcTracer case3：Step1 `14.794496 ms`、Step2 `3.864832 ms`、gap `0.032000 ms`。相对 v002，Step1 退化 `113.015%`，Step2 快 `0.132%`（不变）。Step1 grid 由 `(16,96)` 变 `(32,96)`。
- Resources：Step1 MT registers `198 -> 118`，dynamic shared `32768 -> 16384 bytes`，`staticMaxWarps/PEU 2 -> 4`；Step2 完全不变。资源目标达成但性能失败，排除了“只要提高 occupancy 就会更快”的假设。
- Generated device code：case2/3 已归档；MFMA/syncthreads 静态 site 数仍为 6/6。TileLang/MXCC 对 BN64 生成了合法 kernel，没有编译或 correctness 异常。
- mcProfiler、mx-smi、Roofline：按 screen 早停策略未运行，原因分别写入对应 `UNAVAILABLE.md`。已有数据足以明确拒绝，不应继续消耗 profiler 时间。

## Decision

- 不合入 candidate，不修改 benchmark，不创建性能 commit。
- 保留该反例用于约束下一轮：C500 上不能仅根据 registers/staticMaxWarps 推断收益；任何缩小 N tile 的方案必须首先估算 CTA 数、input 重读与每 CTA MFMA 工作量。
- 当前最佳仍为 v002，累计相对 v000 的 OJ case1/2/3 提升 `1.855%/3.991%/3.733%`。
