# v015_step1_serial_gate_up_sc-16g 实验记录

## 身份

- 状态：rejected_screen
- 机器：sc-16g（C500 25% sGPU slice）
- 基线版本：v004_step2_router_weight_register_reuse_sc-16g
- 父版本：v013_step2_split_accumulator_sc-16g
- 当前最佳：v013_step2_split_accumulator_sc-16g
- 父 Kernel：`race_tests/moe/custom_fusedmoe.py`
- 父 Kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`
- 初始化时 Git：`dorm@26101b8c6d8516037b28a53539cea0e9ed032f7a`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v013/v014 的 case3 mcTracer 中 Step1 约为 `7.02-7.10 ms`，Step2 约为 `3.54-3.56 ms`，Step1 约占两段 kernel 时间的三分之二。Step1 生成代码使用 `198 MT/thread`、`28 ST/thread`、`32768 B dynamic shared`，静态上限仅 `2 waves/PEU`，且无 private spill。源码同时持有 gate/up 两个 FP32 accumulator 和两块 16 KiB 权重 shared buffer。
- Historical control / 历史对照：v003 直接将 Step1 BN 从 128 降到 64，资源从 `198 MT, 32768 B, 2 waves` 改善到 `118 MT, 16384 B, 4 waves`，但 CTA 数翻倍，case3 Step1 从 `6.945280 ms` 退化到 `14.794496 ms`（`+113.015%`）。因此本轮必须维持 BN=128 和 CTA 数，而不能重复“小 tile 换 occupancy”的失败路径。
- Verified bottleneck / 已验证瓶颈：高 register/shared footprint 限制 Step1 静态驻留；但 v003 同时证明 occupancy 不是充分条件，CTA 工作摊销和大 tile GEMM 效率必须保留。
- Current hypothesis / 当前假设：gate 和 up 的两组 MMA 在数学上独立，只有最终逐元素乘法需要二者。若将它们改成顺序阶段，共用同一 FP32 accumulator 和同一块权重 shared buffer，并仅用 FP16 fragment 暂存激活后的 gate，可以在不改变 BN=128、grid 和 CTA 数的情况下跨过 residency 档位。
- Proposed mechanism / 拟采用机制：第一遍 K 循环计算 gate，执行 SiLU 后写入 FP16 `gate_activated_local`；清空并复用同一个 FP32 accumulator；第二遍 K 循环计算 up；最后将 up FP32 与 gate FP16 相乘写回。gate/up 权重依次装入同一块 16 KiB shared buffer。Step2、路由语义、BK、threads、num_stages、grid transpose 和 benchmark 均不变。
- Predicted metric changes / 预测指标变化：Step1 MT registers 应明显低于 198，dynamic shared 应从 32768 B 降到 16384 B，静态驻留应从 2 waves/PEU 提升到至少 3（理想为 4）；Step1 最终 ISA 的 MMA 数与权重 global load 工作量应基本不变，private spill 仍为 0。由于 input 被分两遍读取，global-read 周期可能上升，但若 L2/VL1 复用和新增驻留足以隐藏延迟，mcTracer Step1 与 OJ 端到端应得到超出配对噪声的改善。
- Falsifying result / 证伪条件：资源未跨过 residency 档位；出现 private spill；正确性不通过；或资源改善后 Step1/端到端仍稳定退化，说明二次 input 读取、额外同步/循环开销或 FP16 gate staging 的代价超过 occupancy 收益。若只出现首版负优化，继续结合 C++/ISA 检查 fragment 是否真实复用、barrier/load 是否增加，再决定修正或淘汰。
- Correctness and resource risks / 正确性与资源风险：FP16 暂存激活 gate 比父版本提前一次舍入；两个独立 K sweep 会重读 input，并可能增加 barrier；TileLang lowering 可能因 fragment layout 或 SSA 生命周期仍同时保留多个寄存器对象；共享 buffer 复用若同步边界错误会产生覆盖竞态。

## 实施经过

- Candidate A（SHA `b4c3d732...`）：按原假设使用一个 FP32 accumulator、一个 16 KiB 权重 shared 和一个长生命周期 FP16 gate fragment。正确性通过，但 MXCC 将 `half[64]` gate fragment 放入 124 B private stack；最终 ISA 出现 30 private stores + 30 reloads，MT/ST 达到 256/38，仍为 2 waves。
- Candidate B（SHA `cef5071a...`）：将激活 gate 暂存在本 CTA 独占的 `up_logits` 输出 tile，消除 private spill。资源改善到 132 MT/29 ST、16 KiB shared、3 waves，但 ISA 相对父版 global load `30→54`、global store `16→32`、barrier `3→7`，case3 Step1 mcTracer 退化 34.04%。
- Candidate C（SHA `7191a1cc...`）：将激活 gate 改存 32 KiB CTA shared，并保留 16 KiB 权重 shared。资源为 138 MT/29 ST、3 waves，但总 dynamic shared 达 48 KiB，case2/3 端到端退化 70.45%/66.87%。
- Candidate D（SHA `1958eb91...`）：首次尝试在一个 `T.Parallel` body 中打包相邻 FP16，被 TileLang 的 fragment structural-index 一致性检查拒绝；编译错误原样归档。
- Candidate D2（SHA `a41335c1...`）：将偶/奇 FP16 分成两个结构一致的 parallel pass，显式打包为 32 个 uint32。后端成功做到 0 B stack、0 private spill，但 MT 回到 198、驻留回到 2 waves；新增二次 input sweep、barrier 和 unpack 仍在，case2/3 退化 29.44%/31.19%。
- 相对计划的偏离：原计划只比较 FP16 fragment 方案；A 暴露真实 spill 后继续沿同一假设依次测试 global、shared、显式 MT-register packing 三种 staging 位置，直到区分“spill”“额外存储层流量”“未跨 occupancy 档位”三类失败原因。
- Source snapshot：`v015_step1_serial_gate_up_sc-16g_custom_fusedmoe.py`
- Parent snapshot：`v015_step1_serial_gate_up_sc-16g_parent_custom_fusedmoe.py`
- Patch：`v015_step1_serial_gate_up_sc-16g.patch`

## 结果

- 结论：rejected_screen。串行 gate/up 要保存完整 BN=128 gate tile；在 C500/MXCC 上，private/global/shared/packed-register 四种位置分别导致 spill、额外 VLS 流量、过高 shared footprint、或无法跨过 2-wave 档位。父版同时计算 gate/up 的方式继续保留。
- 当前最佳仍为 v013；主 `custom_fusedmoe.py` SHA-256 仍是 `7e72737a...`，本轮从未覆盖。
- 证据报告：`../../restart-rep/v015_step1_serial_gate_up_sc-16g/v015_step1_serial_gate_up_sc-16g_report.md`
