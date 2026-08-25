# v133_case1_workspace_control_simplify_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：rejected_below_1p2_gate
- 一句话因果结论：Step1 无谓词写回与 Step2 `by` 范围证明能稳定减少 Case1 控制开销，但收益重叠，五轮中位仅 `0.794%`，不足晋级。

## Identity

- Machine：sc-16g
- Git branch / commit / status：`dorm` / parent `c18a896c` / v133 待归档提交
- Kernel / benchmark hashes：parent `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`; fusedmoe benchmark `adfe36d8...`; OJ benchmark `1165d148...`
- Incumbent OJ SOTA ID / SHA-256 / per-case scores：v110 / `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e` / `[0.833778, 0.824765, 0.823671]`
- Candidate path / SHA-256 / import validation：`restart-experiments/v133_case1_workspace_control_simplify_sc-16g/candidate_submission.py` / `df71cd0f34a21bf9a5dd7ed725c8c184606ad875d7d2f051b8417b247d05d8be` / PASS
- Promoted submission path：无；未跨过本地 1.2% 门槛
- KMD / MACA / TileLang / PyTorch / mcProfiler：沿用 v130 环境快照；本轮未进入 profiler 门禁

## Correctness

- 命令、容差、结果：`run_v110_fullcheck.py --case 1 --rounds 5 --warmup 20 --repeat 50`；有效行 `rtol=1e-2, atol=1e-2`；PASS。Cases2/3 generated C++ 与 v110 字节级相同。

## Benchmark

- 官方 benchmark：严格直接对照，Case1 parent/candidate 五轮，warmup 20、repeat 50、AB/BA。
- OJ benchmark：未执行；本地门槛失败。
- 与 v000 / 上一版 / incumbent OJ SOTA 比较：相对 incumbent v110，Case1 每轮变化 `[-0.793638%, -0.760634%, -0.969920%, -0.933598%, -0.661232%]`。
- 外部 OJ incumbent / candidate 各 case 分数及 metric direction：candidate 未送 OJ。
- SOTA gate（所有 case 不退化且至少一个严格提升）：FAIL；本地中位 `-0.793638%` 小于所需 `-1.2%`。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer（Step1 / Step2 / launch gap）：未进入；性能门槛先失败。
- mcProfiler（仅列出与假设相关的计数器）：未进入；性能门槛先失败。
- mx-smi 同步采样：沿用 v130 稳态环境；本轮无独立采样。
- Roofline（native 与 re-normalized）：不更新；算术与逻辑流量不变。

## Lowering and code generation

- TileLang lowering：三 case 均成功；Case1 报告预期的 native workspace 无谓词写回静态 race warning。
- Generated device code：Case1 SHA-256 `bf27504d6796862c1f3db7b2a4e7648296646e15e0cdb1f343c897235cf78c38`；Case2 `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c`、Case3 `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2`，后两者与 v110 完全一致。
- Assembly / resource usage：Case1 Step1 `226 MT / 42 ST / 2 waves`；Step2 `218 MT / 52 ST / 2 waves`。Cases2/3 保持 Step1 `226/42/2`、Step2 `220/52/2`。

## Causal interpretation

- 预测指标是否按方向变化：部分符合；五轮均加速，但幅度低于预测的 1.2%。
- 端到端与分阶段时间是否一致：端到端稳定向好；因未进入 profiler，不对分阶段作新推断。
- 生成代码是否实际变化：仅 Case1 变化，Cases2/3 字节级不变，符合预注册。
- 是否超出 paired-run 噪声带：是，五轮同方向且离散度低；但低于项目候选门槛。
- 瓶颈是否迁移：无证据；资源占用档与 2-wave 上限未改善。
