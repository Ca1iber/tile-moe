# v134_case1_step2_hardware_divmod_grid_sc-16g 证据报告

## Verdict

- 运行类型：screen
- 结论：rejected_no_material_performance_change
- 一句话因果结论：硬件 3D 网格只改写四行 CTA 映射，没有删除 bounds guards 或改变资源/主体指令，性能与 v110 相同。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm` / parent `b0b7578f` / v134 待归档提交
- Kernel / benchmark hashes：parent `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- Incumbent OJ SOTA ID / SHA-256 / per-case scores：v110 / `439a2b80...509e` / `[0.833778,0.824765,0.823671]`
- Candidate path / SHA-256 / import validation：`restart-experiments/v134_case1_step2_hardware_divmod_grid_sc-16g/candidate_submission.py` / `c82dc95211589d8d59b40e37617114644ce5c6bf1207fb8b331cb2c180b945ff` / PASS
- Promoted submission path：无
- KMD / MACA / TileLang / PyTorch / mcProfiler：沿用 v130；未进入 profiler

## Correctness

- 命令、容差、结果：Case1 `run_v110_fullcheck.py --rounds 3 --warmup 20 --repeat 50`；有效行 `rtol=atol=1e-2`；PASS。

## Benchmark

- 官方 benchmark：Case1 三轮 AB/BA，变化 `[+0.074329%, -0.052965%, +0.035896%]`，median `+0.035896%`，mean `+0.019086%`，pstdev `0.053309%`。
- OJ benchmark：未执行；本地 screen 已失败。
- 与 v000 / 上一版 / incumbent OJ SOTA 比较：相对 exact v110 无实质变化。
- 外部 OJ incumbent / candidate 各 case 分数及 metric direction：candidate 未送 OJ。
- SOTA gate（所有 case 不退化且至少一个严格提升）：FAIL，未达到 1.2%。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer（Step1 / Step2 / launch gap）：未进入。
- mcProfiler（仅列出与假设相关的计数器）：未进入。
- mx-smi 同步采样：未单独采集。
- Roofline（native 与 re-normalized）：数学与流量不变，不更新。

## Lowering and code generation

- TileLang lowering：PASS；192 个线性 CTA 的 `(bx,by)` 枚举与 v110 完全一致。
- Generated device code：Case1 `30761 B`，v110 为 `30746 B`；diff 仅为四行 blockIdx 映射，原 bounds guards 全部保留。
- Assembly / resource usage：prepack/Step1/Step2 仍为 `70/226/202 MT`；Step1/Step2 均为 2 waves，无资源改善。

## Causal interpretation

- 预测指标是否按方向变化：未符合；div/mod 表达式改变，但 bounds guard 未删除。
- 端到端与分阶段时间是否一致：端到端无变化；未做分阶段 profile。
- 生成代码是否实际变化：仅 CTA 映射四行变化，主体不变。
- 是否超出 paired-run 噪声带：否。
- 瓶颈是否迁移：否。
