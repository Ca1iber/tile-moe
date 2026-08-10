# v001_step1_input_locality_grid_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g
- 基线版本：`v000_minibs_baseline_sc-16g`
- 父版本：`v000_minibs_baseline_sc-16g`
- 当前最佳：`v001_step1_input_locality_grid_sc-16g`
- 起点 commit：`2de8d3d2d2a3df20092f904ca386eaa4b789fbf7`
- Kernel 路径：`race_tests/moe/custom_fusedmoe.py`
- 最终 kernel SHA256：`7523054b8ba2534f2fd70e080f4fba86191bfeba5cc80aa831521a03538d6fbd`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：OJ case1/2/3 的 Step1 占 kernel sum `65.31%/64.13%/63.77%`；六个 decision Roofline 点的 schedule AI 仅 `81.92–84.83 FLOP/B`，均为 HBM-side；同步长负载 HBM 中位数 1024.212 GB/s 且 104 AP 全活跃。当前 OJ grid 为 Step1 `(M, Ntiles)`、Step2 `(M, Ntiles)`。
- Verified bottleneck / 已验证瓶颈：不是 AP 数量不足或 launch gap，而是 Step1 主导的 schedule-level 全局数据移动；每个 M tile 的 input 会被每个 N tile 再读取，而当前 x 维首先遍历 M。
- Current hypothesis / 当前假设：把 OJ shape 的 column tile 放到快速 grid-x 维，可以让同一个 routed-row input tile 被相邻 CTA 更快重复访问，提高缓存局部性并减少外层实际访存；收益应首先出现在 Step1。
- Proposed mechanism / 拟采用机制：把现有共享 grid-transpose 开关拆为 Step1/Step2 两个编译期开关，保持原有 3584/1024 两 stage 行为不变；仅将 `(2048,8192,e16)` 与 `(7168,2048,e>=32)` 的 Step1 设为 transpose，Step2 保持原样。不改 tile、threads、pipeline、数学和 benchmark。
- Predicted metric changes / 预测指标变化：OJ 三例端到端中位数至少改善 0.5%；mcTracer Step1 降低且 grid 从 `(M,Ntiles)` 变为 `(Ntiles,M)`，Step2 grid/time 与资源用量基本不变；若复用成立，Step1 的 mcProfiler 外层访存计数应下降。
- Falsifying result / 证伪条件：正确性失败；任一关键 OJ case 明显退化；综合收益不超过 v000 约 0.25% 噪声；或端到端变化无法由 Step1 时间解释。
- Correctness and resource risks / 正确性与资源风险：索引映射是双射，理论上不改变数学；风险是 C500 CTA 调度顺序与 grid-x 假设不符，或牺牲同一 expert weight tile 的缓存复用。资源形状预期不变。

## 实施经过

- 实际改动：把 `use_grid_transpose` 拆为 `use_grid_transpose_step1/step2`。对 OJ case1 的 `(2048,8192,e16)` 和 case2/3 的 `(7168,2048,e>=32)` 仅转置 Step1 grid；保留 3584/1024 原有两阶段转置；其余 schedule 不变。
- 相对计划的偏离：第一版条件把所有 `(7168,2048)` 都纳入，导致官方 e8 shape 中位数由约 80.95 ms 退化到约 83.10 ms。该完整尝试保存在 `restart-rep/.../benchmark/attempt1_unscoped/`，据此加入 `n_routed_experts >= 32` guard；最终官方路径恢复为原 schedule。
- Source snapshot：`v001_step1_input_locality_grid_sc-16g_custom_fusedmoe.py`
- Patch：`v001_step1_input_locality_grid_sc-16g.patch`

## 结果

- 结论：accepted。
- OJ 中位数相对 v000：case1 `3.121774 -> 3.061635 ms`（快 `1.926%`）；case2 `5.738880 -> 5.605153 ms`（快 `2.330%`）；case3 `11.211986 -> 10.986158 ms`（快 `2.014%`）。
- 官方中位数：large `80.951421 -> 80.953867 ms`（`-0.003%`，不变）；small `26.056882 -> 25.999631 ms`（`+0.220%`，视为噪声内）。
- 因果证据：mcTracer 的 Step1 分别快 `3.053%/3.397%/2.974%`；case3 Step1 mcProfiler 在 `all_ops` 不变时 `all_memacs` 降低 `21.379%`；长负载 HBM 中位吞吐降低 `12.125%` 而运行时间缩短，说明收益来自少搬数据，不是把带宽打得更高。
- 证据报告：`../../restart-rep/v001_step1_input_locality_grid_sc-16g/v001_step1_input_locality_grid_sc-16g_report.md`
