# v025_step1_same_tensor_middle_isolation_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g（C500 25% sGPU，16 GiB 配额）
- 基线/父版本/当前最佳：v024_step1_half_order_isolation_sc-16g
- Git：`dorm@afca5cfb58e42925a44723fc7c13d2c29c284674`
- 父源码 SHA-256：`8679b644dabbfa5db5438bb841b4e48b6facea3a54c851069caa99996ec4403e`
- up-middle 候选 SHA-256：`ec1a5d75fec8cfeeff88d9c0c9f0d51ccd357e66fcaf7379295f4c769a2625d1`
- gate-middle 对照 SHA-256：`8d2ead9a9cc98f2dcf59ae14a1739ed1815dd9c0607c5df73a9c26df5d9d2136`

## 假设卡

- Observed evidence / 已观测证据：v024 Case2 Step1 的四个 half-copy 在汇编中形成连续四条 `ldg_b128`；同一位置的多种顺序在此前实验中表现不同。
- Verified bottleneck / 已验证瓶颈：Case2 Step1 对加载排序敏感，但静态指令数不足以预测性能；需要隔离源码、编译顺序和设备状态。
- Current hypothesis / 当前假设：把中间两次 half-copy 改为来自同一投影张量，可能提高地址/缓存局部性并减少运行时停顿。
- Proposed mechanism / 拟采用机制：保持 1-2-1 输入边界，仅把 v024 的 `G0 A0 G1 U0 A1 U1` 分别改为 up-middle `G0 A0 U0 U1 A1 G1` 和 gate-middle `U0 A0 G0 G1 A1 U1`。
- Predicted metric changes / 预测指标变化：Case2 Step1 时间下降；资源、同步和 MMA 数不变；若机制成立，跨会话、编译顺序平衡测量仍应稳定改善。
- Falsifying result / 证伪条件：同频独立复测落入自对照噪声，或效果无法跨会话复现。
- Correctness and resource risks / 正确性与资源风险：拷贝次序改变不应改变数值；风险是编译器地址调度退化、寄存器生命周期变化或仅产生设备升频假象。

## 实施经过

- 实现 up-middle 与 gate-middle 两个隔离变体，仅修改 Case2 Step1 的六次 half-copy 顺序。
- 两个变体均通过 Python 编译及 Case2 OJ 正确性，最大绝对误差 `0.001953`。
- 生成 C++、资源报告和后端汇编；两者均为 212 MT、52 ST、2 waves、无 spill、3232 条静态指令、390 个 `snop`、25856 B code。
- 新增四实例编译顺序平衡基准：分别构造 parent-first、candidate-second、candidate-first、parent-second，并用四阶 Latin rotation 测量；每轮以两个相反编译槽位比值的几何平均抵消槽位偏差。
- 首轮 up-middle 显示 `-3.402%`，但随后独立长测只有 `-0.049%`，带 mx-smi 同频监控的复测为 `+0.011%`。运行态 XCORE 稳定为 1125 MHz，首轮父版本约 5.29 ms 的慢态未复现。
- gate-middle 为 `-0.163%`，接近 v024 四实例自对照 `-0.118%`；不足以证明源码收益。
- 由于核心机制已被跨会话复测证伪，未把任一候选安装到主 `custom_fusedmoe.py`，也未执行耗时的全量 official/profile/roofline 门禁。

## 结果

- 结论：rejected。
- v024 继续作为当前最佳。
- 关键教训：同进程配对、编译槽位平衡仍不足以替代跨会话复测；必须同步确认 XCORE 已进入 1125 MHz 稳态。首轮显著收益可能是设备从低频/慢态切换造成的假阳性。
- 证据报告：`../../restart-rep/v025_step1_same_tensor_middle_isolation_sc-16g/v025_step1_same_tensor_middle_isolation_sc-16g_report.md`
