# v013_step2_split_accumulator_sc-16g 实验记录

## 身份

- 状态：accepted_current_best
- 机器：sc-16g
- 基线版本：v004_step2_router_weight_register_reuse_sc-16g
- 发现来源：v012 async 路线的 C++/ISA 对照
- 父提交：v012 evidence checkpoint（创建提交前为 `9d7a30ab`）
- 当前最佳：v013_step2_split_accumulator_sc-16g
- Kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`

## 假设卡

- Observed evidence / 已观测证据：v004 Step2 源码持有一个 128×256 FP32 accumulator；最终 ISA 达到 256 MT / 38 ST，出现 2 条 private store、2 条 private load 和 2/2 spill annotation。Step1 为 198 MT / 28 ST、无 private traffic，说明寄存器问题集中在 Step2。
- Verified bottleneck / 已验证瓶颈：v012d 表明 async Step2 只对长 case 有益且短 Case1 回退；v004 的同步全宽 CTA/grid 本身高效，但 Step2 accumulator live range 触发真实 spill。
- Current hypothesis / 当前假设：保留 256-column CTA、一次 input copy、一次完整 256×64 shared weight copy和原同步协议，只把一个 256-column accumulator 拆成两个独立 128-column fragment，可缩短编译器 live range并消除 spill，而不增加 global/shared traffic或 CTA 数。
- Proposed mechanism / 拟采用机制：`block_dhidden_step2` 设为 128、`step2_output_tile=256`；shared weight 仍为 256×64；每个 K 从同一 shared tile 的上下两个 BufferRegion 分别 ldmatrix/MMA 到两个 accumulator，最后分两次 store。
- Predicted metric changes / 预测指标变化：Step1 二进制不变；Step2 MMA/global/shared/barrier 静态计数不变；MT/ST 与 private spill 下降；三 case 严格配对稳定快于 v004，Case2/3 收益更明显。
- Falsifying result / 证伪条件：任一 case 错误；CTA/grid或 global/shared copy 数变化；private spill仍存在；或交替顺序配对未超出噪声。
- Correctness and resource risks / 正确性与资源风险：两个 BufferRegion 必须覆盖 [0:128] 和 [128:256]；第二段输出列偏移必须为 128；两个 fragment 不能造成额外 shared allocation或重复权重搬运。

## 实施经过

- 从 v004 同步实现出发，仅修改 Step2 accumulator 组织；没有保留 v012d 的 async helper/barrier。
- 生成 C++ 确认仍是一块 32 KiB shared weight tile、每 K 一次 input 与一次完整 weight copy；输出拆为两个 128-column store。
- 最终 ISA 确认 Step1 byte-identical；Step2 静态 MMA/global/shared/barrier 数保持不变，private load/store 从 2/2 降为 0/0。
- Source snapshot：`v013_step2_split_accumulator_sc-16g_custom_fusedmoe.py`
- Patch：`v013_step2_split_accumulator_sc-16g.patch`

## 结果

- 结论：accepted_current_best。两轮全 case 交替配对相对 v004：Case1 -0.80%、Case2 -2.54%、Case3 -2.11%；全部 PASS。
- 证据报告：`../../restart-rep/v013_step2_split_accumulator_sc-16g/v013_step2_split_accumulator_sc-16g_report.md`
