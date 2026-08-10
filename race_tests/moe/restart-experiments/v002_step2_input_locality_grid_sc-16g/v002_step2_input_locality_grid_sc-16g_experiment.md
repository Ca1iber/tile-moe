# v002_step2_input_locality_grid_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g
- 基线版本：`v000_minibs_baseline_sc-16g`
- 父版本：`v001_step1_input_locality_grid_sc-16g`
- 当前最佳：`v002_step2_input_locality_grid_sc-16g`
- 起点 commit：`91ef383124a760f9664592ea56eeb1eb8e1e80cf`
- Kernel 路径：`race_tests/moe/custom_fusedmoe.py`
- 最终 kernel SHA256：`bf61d3ce399ea7c685a0ed24df2245ef0745c92fe81bc1be9e18d453d07b7461`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v001 已证明 OJ Step1 的 grid-x 局部性可在 work/resources 不变时降低外层访存；v001 mcTracer 中 Step2 仍占 case1/2/3 kernel sum 的 `35.94%/36.92%/36.88%`，grid 仍是 `(M,Ntiles)`：`(24,8)/(48,28)/(96,28)`，动态 shared 32768 bytes、256 registers/thread。
- Verified bottleneck / 已验证瓶颈：总瓶颈仍为 HBM-side。Step2 不是当前最大阶段，但超过三分之一；同一 routed-row 的 `up_logits` tile 会被每个 hidden-output N tile 重读，具备与 v001 同构的输入局部性机会。
- Current hypothesis / 当前假设：只对精确 OJ shapes 转置 Step2 grid，把 output-column tile 放到快速 x 维，可以让相邻 CTA 更快复用同一个 `up_logits` row tile，从而降低 Step2 的实际数据移动，并与 v001 Step1 收益叠加。
- Proposed mechanism / 拟采用机制：在 v001 已拆开的 schedule flags 上，仅为 `(2048,8192,e16)` 与 `(7168,2048,e>=32)` 设置 `use_grid_transpose_step2=True`；不改 Step1、tile、threads、pipeline、数学、官方路径或 benchmark。
- Predicted metric changes / 预测指标变化：mcTracer Step2 grid 变为 `(Ntiles,M)`，Step1 grid/time 保持 v001；Step2 至少快约 1%，对应 OJ 端到端至少快约 0.3%。若 screen 达标，再做 3-process verdict；否则快速拒绝并恢复 v001。
- Falsifying result / 证伪条件：任一正确性失败；任一 OJ case 端到端退化超过 0.25%；三例无一致收益；或 Step2 时间没有按方向下降。
- Correctness and resource risks / 正确性与资源风险：block index 交换仍为双射，数学风险低；主要性能风险是 Step2 down-weight tile 复用比 `up_logits` 复用更重要，转置可能让权重缓存局部性下降。

## 实施经过

- 实际改动：在 v001 两个精确 OJ schedule guard 中各增加一行 `use_grid_transpose_step2=True`。源代码相对父版本只有 2 行新增。
- 相对计划的偏离：无代码偏离。首次 mx-smi 调用误用了默认摘要命令，未提供 HBM/AP 计数；在归档前用显式 `--show-hbm-bandwidth` 与 `--show-ap-usage` 同步采样重跑并覆盖无效样本，汇总脚本随后通过。
- Source snapshot：`v002_step2_input_locality_grid_sc-16g_custom_fusedmoe.py`
- Patch：`v002_step2_input_locality_grid_sc-16g.patch`

## 结果

- 结论：accepted；成为当前最佳。
- 相对 v001：case1 `3.061635 -> 3.063875 ms`（慢 `0.073%`，噪声内）；case2 `5.605153 -> 5.509847 ms`（快 `1.700%`）；case3 `10.986158 -> 10.793464 ms`（快 `1.754%`）。官方两项变化 `+0.012%/+0.096%`，均视为不变。
- 累计相对 v000：case1/2/3 分别快 `1.855%/3.991%/3.733%`。
- 因果证据：mcTracer Step2 分别快 `2.667%/5.208%/4.450%`，grid 按预测变为 `(8,24)/(28,48)/(28,96)`；case3 Step2 mcProfiler 在相同 `all_ops` 下 `all_memacs` 降低 `32.117%`；长负载 HBM 中位数从 v001 的 `900.027` 降到 `794.714 GB/s`，104 AP 仍全活跃。
- 证据报告：`../../restart-rep/v002_step2_input_locality_grid_sc-16g/v002_step2_input_locality_grid_sc-16g_report.md`
