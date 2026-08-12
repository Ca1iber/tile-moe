# v027_step2_input_pingpong_sc-16g 实验记录

## 身份

- 状态：closed / accepted
- 机器：sc-16g，C500 25% sGPU，16 GiB quota
- 父版本：v024，SHA-256 `8679b644dabbfa5db5438bb841b4e48b6facea3a54c851069caa99996ec4403e`
- 接受版本：v027，SHA-256 `601c1dfdad7baa3cbf99ca39421ef4e9d9ae532e64e22bde60f14b600d01d144`
- 主 Kernel：`race_tests/moe/custom_fusedmoe.py`

## 假设卡

- Observed evidence / 已观测证据：Step1/Step2 都是单 shared B buffer，load/barrier/MMA 基本串行；Step2 还要从全局读取寄存器驻留的 `up_logits` A tile。此前 Step1 A ping-pong 已证明这种寄存器预取可以工作。
- Verified bottleneck / 已验证瓶颈：Step2 Case2 mcTracer 约 1.79 ms；生成代码没有 async copy；v027d 证明普通 barrier 会阻止 global load 跨越同步点移动。
- Current hypothesis / 当前假设：不双缓冲 32 KiB B shared，仅双缓冲寄存器 A fragment，可以把下一块 `up_logits` 的 global load 发到当前 MMA 前，并避免 shared/occupancy 风险。
- Proposed mechanism / 拟采用机制：prime A0；成对展开 K tiles；在 even MMA 前加载 odd A，在 odd MMA 前加载下一 even A；B 仍用单 shared buffer 与 producer/consumer barrier。
- Predicted metric changes / 预测指标变化：Step2 runtime、wave life 和 VL1 stall 下降；MMA/MTE duty 小幅上升；global/private traffic 不应出现 spill；2 waves 保持。
- Falsifying result / 证伪条件：最终 ISA 把 A load 推回 barrier 后、出现 stack/private spill、occupancy 降为 1 wave，或对称时间不改善。
- Correctness and resource risks / 正确性与资源风险：A fragment 增加约 32 half/thread，可能导致寄存器溢出；手写 pair loop 可能漏最后一块或破坏 barrier 配对。

## 实施经过

### 失败与机理探索

- v027a：Step1 gate half 新建 16 half/thread fragment。lowering 首先暴露 eager builder 不能引用 `prim_func` 内部 layout helper；修正后编译，但 Step1 出现 36 B stack 和 `stp/ldp`，性能约 5.803 ms，reject。
- v027b：缩为 8 half/thread quarter prefetch，仍有 20 B stack，reject。
- v027c：把 fragment 生命周期移到最后一次 MMA 后，仍有 36 B stack，证明后端不自动合并两个高层 buffer 的不重叠 live range，reject。
- v027d：复用 `expert_weight_local`，stack 降为 0、2 waves 保持；但 ISA 的真实 `ldg_b128` 仍被 barrier 挡在后面，对称中位数 `-0.044%`，neutral。
- v027e：把 consumer fence 换成 `__syncthreadshared()`；ISA 仍降低为相同 `arrive bsmcnt(0); barrier; arrive bsmcnt(0)`，没有更轻 fence，reject。

### 接受机制

- v027f：Step2 新增 `up_logits_prefetch` A fragment，手写 32-tile pair loop；Case2 ISA 证实下一 A tile 的 4 条 `ldg_b128` 位于当前 256 条 MMA 区间之前，0 stack，2 waves。
- v027g：扩展到 Case3（64 experts）。
- v027h/final：扩展到 Case1（16 experts），三组 OJ 全部启用。
- 相对父版 Step2 Case2：MT registers 196→228，ST 28→52，staticMaxWarps/PEU 仍为 2，private read/write 为 0。

## 结果

- 结论：`accepted`。
- 对称 benchmark：Case1 `-0.373%`（8/8）；Case2 两次分别 `-1.073%`、`-1.107%`（共 16/16）；Case3 `-0.597%`（8/8）。
- mcTracer Case2 Step2 三对：`-3.055% / -2.233% / -2.868%`，中位数 `-2.868%`；收益明确来自 Step2。
- mcProfiler：wave life `4926.39→4852.41`，AP active `4.1803e9→4.1360e9`，MMA duty `25.28→25.56%`，MTE duty `38.81→39.24%`，shared latency `67.23→66.18`，无 private spill。
- 证据报告：`../../restart-rep/v027_step2_input_pingpong_sc-16g/v027_step2_input_pingpong_sc-16g_report.md`
