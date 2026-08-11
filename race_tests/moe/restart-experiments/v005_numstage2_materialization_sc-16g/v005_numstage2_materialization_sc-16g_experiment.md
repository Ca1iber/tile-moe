# v005_numstage2_materialization_sc-16g 实验记录

## 身份

- 状态：closed / rejected（保留为因果证据，不作为当前最佳）
- 机器：sc-16g
- 基线版本：`v004_step2_router_weight_register_reuse_sc-16g`
- 父版本：`v004_step2_router_weight_register_reuse_sc-16g`，Git `6e6715ce48ab6c8250aa157e0609ac702f4cafe9`
- 当前最佳：`v004_step2_router_weight_register_reuse_sc-16g`
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，`2722b8b1db2ff18d40af055943705f70cb7b3b75712cd5d653f3ddb541ac09ff`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：Case3 的 v004 生成 C++ 中，Step1/Step2 均只有一组权重 shared buffer，并在 K 循环内形成 copy、同步、MMA、同步、覆盖的顺序；静态 C++ 各有 3 个 `__syncthreads()`，按 Case3 的 K 循环展开语义分别约为 223 与 63 次动态 barrier。最终 MetaX ISA 已从 MCFB 内嵌 `.llvmbc` 重新生成：Step1 使用 198 MT/28 ST、0-byte private frame、无 `ldp/stp` spill，Step2 使用 256 MT/38 ST、12-byte private frame且有 2 次 `stp_b32` 与 2 次 `ldp_b32`；两者 `staticMaxWarps/PEU=2`。历史记录称 `num_stages=2` 变慢，但该结果尚未在当前 v004、当前工具链上复现，也没有生成代码证据。
- Verified bottleneck / 已验证瓶颈：单 shared-buffer 与 barrier 串行结构已由 C++/ISA 验证；Step2 存在小规模真实 spill，Step1 没有 spill；两阶段的静态 wave 上限均只有 2。尚未验证 `num_stages=2` 是否真正物化双缓冲、是否产生 copy/compute overlap，以及若变慢究竟由 shared/register/occupancy 还是调度代码导致。
- Current hypothesis / 当前假设：TileLang `T.Pipelined(..., num_stages=2)` 可能出现两类结果之一：A）正确物化 ping-pong shared buffer，但 shared 生命周期/资源占用扩大并降低并发度，抵消 overlap；B）未形成可被 MXMACA 后端执行的异步搬运，仍保留阻塞式 copy/barrier，只增加索引和资源开销。历史负收益应当可以由生成 C++、最终 ISA 和 mcProfiler 指标中的至少一条因果链解释。
- Proposed mechanism / 拟采用机制：先只把同一份 Step1/Step2 pipeline 从 `num_stages=1` 改为 `num_stages=2`，保持 tile、grid、线程数和 benchmark 输入完全不变；对 OJ Case3 保存 v004/v005 lowering、C++、最终 ISA、寄存器/private/shared/静态 wave 资源，并采集阶段级 mcProfiler。若未物化 overlap，再追溯 `T.Pipelined` lowering 与 MXMACA copy builtin；若已物化但资源回退，再从阶段拆分、显式 ping-pong、tile/寄存器生命周期三个方向修复，而不是直接放弃流水化。
- Predicted metric changes / 预测指标变化：若双缓冲有效，C++/ISA 应出现两套或带 stage 维度的 shared 地址、预取与计算交错，barrier/wait 排列改变，mcProfiler 的 MTE/MMA 活跃重叠增加、ISU memory-dependency/barrier stall 降低；shared 或寄存器可能上升。若方案 A 导致负收益，`staticMaxWarps/PEU` 或 achieved waves 应下降，或 private spill 增加；若方案 B，生成的主要 load/MMA/barrier 顺序几乎不变而指令数/地址计算增加。
- Falsifying result / 证伪条件：`num_stages=2` 的 lowering、C++、ISA、资源和相关 mcProfiler 指标均与 v004 等价，且 paired benchmark 处于噪声带内；这将说明当前循环不受 pipeline pass 影响，必须转向显式缓冲或后端 builtin。若生成代码已明确交错且资源不恶化，但性能仍退化，则当前“资源抵消 overlap”的解释被证伪，需要进一步看依赖等待、带宽和工作组调度。
- Correctness and resource risks / 正确性与资源风险：stage 索引或尾块处理可能读错 K tile；双 shared-buffer 可能超过 16G slice 的每 block shared 上限；更多 buffer/地址状态可能增加 MT/ST 寄存器、spill 并降低 wave residency。任何 profile 前必须通过 OJ 三 case 正确性门禁。

## 实施经过

- 实际改动：仅将函数级和 `RoutedMoEKernel` 默认 `num_stages` 从 1 改为 2；未修改 tile、grid、threads、输入或数学表达式。补充了最终 MCFB/ELF 内嵌 bitcode 到 MetaX ISA 的可复现提取脚本，并对 Case3 做了 v004/v005 paired mcProfiler 与 mcTracer。
- 相对计划的偏离：原计划中的“是否物化”已直接确认：C++/ISA 都出现 ping-pong shared 地址与跨迭代预取。进一步追踪 TileLang 发现 `src/transform/pipeline_planning.cc` 对 MACA 强制 `use_async_copy=false`，因此普通 `T.copy` 并未走真正的 `memcpy_async`。该发现把下一步从继续调 `num_stages` 改为显式验证 `T.maca_async_copy`。
- Source snapshot：`v005_numstage2_materialization_sc-16g_custom_fusedmoe.py`
- Patch：`v005_numstage2_materialization_sc-16g.patch`

## 结果

- 结论：rejected。三进程中位数相对 v004：官方两项 +33.73% / +31.39%，OJ Case1/2/3 +47.93% / +46.08% / +44.92%。正确性通过。Case3 mcTracer 显示 Step1/Step2 动态 shared 都从 32 KiB 增到 64 KiB，阶段时间分别 +48.05% / +44.35%；Step2 spill 虽被消除，但不足以抵消并发损失。mcProfiler 中每 wave 寿命和 shared latency 反而下降、MMA duty 大幅下降，说明单 wave 竞争更小但设备级吞吐更差，符合 shared footprint 压低驻留并发的因果解释。
- 证据报告：`../../restart-rep/v005_numstage2_materialization_sc-16g/v005_numstage2_materialization_sc-16g_report.md`
