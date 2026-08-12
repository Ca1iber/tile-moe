# v028_step2_half_b_pipeline_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g（C500 25% compute slice，16 GiB quota）
- 分支 / 父提交：`dorm` / `603baf6aae841f58928d1ce3eea6e8526bcf31c5`
- 基线与父版本：v027 Step2 input-register ping-pong
- 当前最佳：v028l inverse-swizzle BSM half-B ping-pong
- 父版 SHA-256：`601c1dfdad7baa3cbf99ca39421ef4e9d9ae532e64e22bde60f14b600d01d144`
- 候选 SHA-256：`385510c606a6392a9aaf3bf62542df652176f7d32649ec46c8dce3d35d12b858`

## 假设卡

- Observed evidence / 已观测证据：v027 Step2 使用一块 32 KiB swizzled shared B 缓冲区；生成代码按 load、同步、MMA、同步、覆盖下一块的方式推进。资源为 228 MT / 52 ST、2 waves/PEU、0 stack spill。
- Verified bottleneck / 已验证瓶颈：同步 B copy 需要 global load 到寄存器再显式 shared store，权重搬运与 MMA 没有跨 K tile 重叠，VLS/WSM stall 明显。
- Current hypothesis / 当前假设：将 256×64 的 B tile 拆成两个 128×64 stage，并用 MACA BSM global-to-shared copy 在另一半执行 MMA 时生产下一半，可隐藏权重搬运。
- Proposed mechanism / 拟采用机制：保留 v027 的双 accumulator 与 A fragment ping-pong；仅在 32-expert 默认 shape 开启 half-B shared ping-pong。
- Predicted metric changes / 预测指标变化：Step2 时长、VLS/WSM stall 下降；MMA 数不变；不引入 private spill；Case1/Case3 与官方 8/4-expert path 不变。
- Falsifying result / 证伪条件：reference 失败、BSM 未越过 MMA、Step2 mcTracer 不降、配对 benchmark 未稳定胜出、资源导致 occupancy 下降。
- Correctness and resource risks / 风险：MetaX BSM destination 使用标量 `md`，不能直接表达每 lane 的软件 swizzle scatter；异步生产后还需要 CTA 级 shared 可见性。

## 实施经过

1. v028：直接拆 half-B，但仍按同步 copy 串行推进；Step2 mcTracer 退化 46.37%，否决。
2. v028b/v028c：手写 half-B ping-pong，正确但约退化 1.43%；C++/ISA 显示所有 global load 在 shared store 前完成，没有产生跨 MMA 重叠。
3. v028d：尝试 barrier 数组 `(2,)`，TileLang 在 LowerAndLegalize 阶段触发 SIGFPE，归为工具链约束。
4. v028e/v028f/v028g：直接对 swizzled shared 使用 async copy，约 83% 元素不匹配。最小矩阵确认 non-swizzled async PASS、swizzled async FAIL。
5. v028h/v028i：去掉 swizzle 后异步正确，但 Case2 分别约 6.503/6.441 ms，shared 访问代价抵消了流水收益。
6. 通过生成 C++ 和 ISA 确认 BSM 的 shared destination 由标量 `md` 携带。构造 inverse-swizzle source mapping：以 8 个 FP16（16 B）为组，令 `logical_group = physical_group XOR (row % 8)`；这样 BSM 物理写入连续，消费者仍按原 swizzled logical layout 读取。128×64 最小 round-trip 精确 PASS。
7. v028j：inverse-swizzle BSM 已进入 ISA，但缺少 CTA shared visibility，Case2 仍有约 2.9% mismatch。
8. v028k：每次消费前增加 `T.sync_threads()`，正确性恢复；12 轮配对 benchmark 对 v027 中位快 2.30%，12/12 胜。
9. v028l：删除重复的 MACA barrier wait，只保留包含 `bsmcnt(0)` 的 CTA sync。正确性 20/20 压力测试通过；相对 v028k 差异落在噪声内，但 ISA barrier 从 9 个降到 5 个，因此选择更简单的 v028l。

## 最终实现

- 仅 `n_routed_experts == 32` 启用 `use_step2_half_b_pingpong`。
- 初始 B tile 仍同步装入两个 128-row stage；主循环每个 K-pair 交替生产 B1/B0，并与当前半块的 64 条 MMA 静态窗口重叠。
- BSM 使用 inverse-swizzle global source group，使物理 destination 连续且保持消费者所需的软件 swizzle。
- A 继续沿用 v027 的 `up_logits_shared` / `up_logits_prefetch` 寄存器流水，两个输出半块继续使用独立 accumulator。
- Source snapshot：`v028_step2_half_b_pipeline_sc-16g_custom_fusedmoe.py`
- Patch：`v028_step2_half_b_pipeline_sc-16g.patch`

## 结果

- 结论：accepted
- OJ 三 case 全部 PASS，`max_abs=0.001953125`；Case2 100-repeat 为 4.7959 ms。
- 同进程 12 轮交错测试：v027 4.9215 ms，v028l 4.8068 ms，中位相对变化 -2.335%，12/12 胜。
- mcTracer：最终 v028l Step2 从 v027 中位 1.736960 ms 降到 1.629184 ms，配对中位 -6.500%，3/3 改善；汇总见 `restart-rep/.../profiler/mctracer/v028l_case2_paired_retry1/`。
- mcProfiler：Total Cycles -0.92%，WSM stall -25.54%，VLS pipeline stall -7.85%，四个 VL1 partition stall 下降约 10%–12%。
- 资源：Step2 208 MT / 52 ST、2 waves/PEU、0 stack spill；相对 v027 减少 20 MT。
- 证据报告：`../../restart-rep/v028_step2_half_b_pipeline_sc-16g/v028_step2_half_b_pipeline_sc-16g_report.md`
