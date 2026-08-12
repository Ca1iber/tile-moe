# v014_step2_split_accumulator_64x4_sc-16g 实验记录

## 身份

- 状态：rejected_screen
- 机器：sc-16g（C500 16G / 25% sGPU，best-effort 10 ms time slice）
- 基线版本：v004_step2_router_weight_register_reuse_sc-16g
- 父版本：v013_step2_split_accumulator_sc-16g（accepted_current_best）
- 当前最佳：v013_step2_split_accumulator_sc-16g
- Git 起点：`dorm@bd685e248c6bd3cd083768698f53935ea02baa1d`
- 父 Kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`
- Candidate SHA-256：`82cbd989d0630736512990966384266896a9d73baacd5712bc34466a8b65e9a1`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v013 已把 Step2 从单个 256 列 accumulator 拆为两个 128 列 fragment，最终 ISA 的 private load/store 从 2/2 降到 0/0，MT 从 256 降到 196，Case3 Step2 profiler cycle 下降 2.1468%，但仍只有 2 waves/PEU；Case3 Step2 mcTracer 中位数 3.545344 ms，占两 Kernel span 的 33.44%。
- Verified bottleneck / 已验证瓶颈：显式 spill 已消失，但 Step2 仍持有总计 128 个 FP32 accumulator 元素/线程；当前 128 列 emitter 还要求每线程持有 64 个 FP16 B operand 元素。v013 的 mcProfiler Roofline 点位于 ridge 附近，任何寄存器收益都必须避免增加实际访存与控制开销。
- Current hypothesis / 当前假设：在保持 256 列 CTA、相同 grid、相同 256x64 shared 权重缓冲和相同 MMA 总数的前提下，把两个 128 列 fragment 继续拆成四个 64 列 fragment，会把 B operand fragment 从每线程 64 个 FP16 元素缩短到 32 个，可能降低峰值 MT live range、减少调度等待，并改善 Step2；总 accumulator 容量不变，因此该假设不保证成立。
- Proposed mechanism / 拟采用机制：使用 64 列 `TensorCoreIntrinEmitter`，四次对 shared 权重的连续 64 列 region 执行 `ldmatrix_b + mma`，分别累加到四个 128x64 FP32 fragment；输出阶段按 0/64/128/192 列偏移写回。Step1、CTA 数、shared 分配、K tile、num_stages 和 router-weight 预取全部不变。
- Predicted metric changes / 预测指标变化：Step2 静态 MMA 保持 256，global/shared 有效字节与 CTA 数保持不变；`down_weight_local` 元素数减半；希望 Step2 MT 低于 196，private traffic 继续为 0，clean OJ Case2/3 有超过 paired noise 的下降。控制/arrive/static instruction 可能因四段 region 增加。
- Falsifying result / 证伪条件：任一正确性失败；出现 private spill；MT/ST、wave 上限没有改善且 Step2/端到端性能不升；或 clean paired OJ 任一主 case 稳定回退超过 1%。负结果不能只丢弃，需要检查 lowering、生成 C++、ISA 和资源报告解释原因。
- Correctness and resource risks / 正确性与资源风险：四个 BufferRegion 必须无缝覆盖 `[0,256)`；output 偏移必须恰为 0/64/128/192；64 列 emitter 的 `warp_cols=4` 必须与 fragment layout、B local 长度一致；保持 shared buffer 32 KiB，不得改变 grid 或额外搬运权重。

## 实施经过

- 实际改动：只在隔离源码快照中把 Step2 emitter/fragment 宽度由 128 改为 64，新增四个 accumulator fragment、四段 `ldmatrix_b + mma` 和四段输出；总 output tile 仍为 256。工作树 `custom_fusedmoe.py` 从未替换，始终保持 v013。
- 相对计划的偏离：首次 Case3/Case1 SSH 输出在源码 identity 后提前返回，但远端落盘日志证明任务随后正常完成；未把缺失终端输出误判为通过。首次 paired runner 的竞争检测误命中自身祖先 shell，未触碰 GPU，失败日志保留后修正祖先 PID 排除。targeted mcProfiler 出现 `Total Cycles` 与 clean latency 冲突，因此追加反序复采并按事件含义降级解释。
- Parent source snapshot：`v014_step2_split_accumulator_64x4_sc-16g_parent_custom_fusedmoe.py`
- Candidate source snapshot：`v014_step2_split_accumulator_64x4_sc-16g_custom_fusedmoe.py`
- Patch：`v014_step2_split_accumulator_64x4_sc-16g.patch`

## 结果

- 结论：rejected_screen；v013 继续作为当前最佳。
- 正确性：三个精确 OJ case 全部 PASS，`max_abs=0.001953125`。
- Clean paired OJ：Case1/2/3 候选均值变化分别为 `-0.161%/-0.032%/-0.023%`（负号为更快），逐对符号不一致，全部属于噪声。
- mcTracer：Case3 Step2 的三对变化为 `+0.116%/-0.253%/-0.101%`，平均 `-0.079%`，不构成阶段收益。
- Codegen/ISA：Step2 MT `196 -> 188`，但 `staticMaxWarps/PEU` 仍为 2；最终 ISA 的 MMA/global/shared/barrier/arrive 与 spill 均不变，只有静态总指令 `2607 -> 2601`。
- mcProfiler：两次顺序平衡采样中 aggregate `Total Cycles` 下降 `12.24%/9.75%`，但 wave life 上升 `0.57%/0.32%`、global read 上升 `0.45%/0.43%`、VL1 stall 上升 `0.12%/0.33%`、shared latency 上升 `0.55%/0.59%`。`Total Cycles` 为多 pass 重放累计 Kcycles，不当作单次 Step2 latency。
- 因果结论：64x4 缩短了 B operand live range并减少 8 个 MT register，但没有跨过 occupancy 阶梯，也没有减少核心工作、访存或同步；其资源收益无法转化为 latency。
- 证据报告：`../../restart-rep/v014_step2_split_accumulator_64x4_sc-16g/v014_step2_split_accumulator_64x4_sc-16g_report.md`
