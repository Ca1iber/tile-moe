# v021_step1_gate_input_up_order_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g，MetaX C500 25% sGPU，16 GiB VRAM quota
- 基线版本：`v004_step2_router_weight_register_reuse_sc-16g`
- 父版本：`v020_step1_prefetch_before_barrier_sc-16g`
- 当前最佳：`v021_step1_gate_input_up_order_sc-16g`
- Parent SHA-256：`0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad`
- Candidate / installed SHA-256：`fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45`

## 假设卡

- Observed evidence / 已观测证据：v020 在 Case2 将 A load 放到 gate/up 两路权重 load 之后、barrier 之前，仅取得 0.304% 收益；把 A 放到两路权重之前则回退 2.265%。说明权重优先级重要，但 barrier 前仍存在 load 排序空间。
- Verified bottleneck / 已验证瓶颈：Case2 Step1 占主要时长，Step1 使用 226 MT registers、2 waves/PEU，无 private spill；单 shared buffer 与 barrier 仍使 load/MMA 调度受限。
- Current hypothesis / 当前假设：保留 gate 权重最高优先级，同时把下一块 A 放到 gate 与 up 权重之间，可缩短部分输入/权重临时值重叠 live range，并让 A 更早进入延迟隐藏窗口。
- Proposed mechanism / 拟采用机制：仅在 `experts == 32` 的 v020 prefetch 路径中，把两个半块的顺序从 gate→up→A 改为 gate→A→up；barrier、MMA、tile、grid 和数据量均不变。
- Predicted metric changes / 预测指标变化：Case2 Step1 下降；Case1/3 lowering 字节不变；MT register 或动态 stall 至少一项改善；无 correctness 回退。
- Falsifying result / 证伪条件：Case2 配对 OJ 非稳定同向、Step1 mcTracer 不降、出现 spill/occupancy 回退，或任一官方/OJ correctness 失败。
- Correctness and resource risks / 正确性与资源风险：移动只发生在同一 barrier 前，但可能改变后端寄存器分配、issue priority 或触发高寄存器压力。

## 实施经过

- 实际改动：Case2 Step1 的两个 ping-pong 半块都从 gate→up→A 改为 gate→A→up；Case1/3 不进入该静态路径。
- C++ 证据：Case1 parent/candidate SHA 均为 `1a50eb0e...`，Case3 均为 `c80f44d8...`；Case2 只有相应 load loop 重排，parent/candidate SHA 分别为 `2a0755c6...` / `1581836d...`。
- 资源变化：Case2 Step1 MT registers 226→214，ST 52 不变，waves/PEU 2 不变，stack/private/spill 均为 0。
- 相对计划的偏离：ISA 静态 `snop` 反而 363→367，因此没有把“静态指令减少”当作收益机制；mcProfiler replay 方向混合，降级为辅助证据。
- Source snapshot：`v021_step1_gate_input_up_order_sc-16g_custom_fusedmoe.py`
- Patch：`v021_step1_gate_input_up_order_sc-16g.patch`

## 结果

- 结论：accepted，限定 32 experts
- Case2 4 对热态 OJ：4/4 同方向，parent/candidate 中位 5.331767/5.176458 ms，paired 中位变化 `-2.909%`
- mcTracer：Step1 中位 `-3.197%`，device span 中位 `-2.051%`；Step2 中位 `-0.185%`，视为噪声
- installed OJ：Case1/2/3 为 3.072195/5.169480/10.336217 ms，全部 PASS，最大绝对误差 0.001953125
- 证据报告：`../../restart-rep/v021_step1_gate_input_up_order_sc-16g/v021_step1_gate_input_up_order_sc-16g_report.md`
