# v006_maca_async_copy_sc-16g 实验记录

## 身份

- 状态：rejected / causal mechanism validated
- 机器：sc-16g
- 基线版本：`v004_step2_router_weight_register_reuse_sc-16g`
- 父版本：Git `4b777967` (v005 evidence commit)；kernel 将先恢复到 v004 `6e6715ce`
- 当前最佳：`v004_step2_router_weight_register_reuse_sc-16g`
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，v004 `2722b8b1db2ff18d40af055943705f70cb7b3b75712cd5d653f3ddb541ac09ff`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v005 证明普通 `T.copy + T.Pipelined(num_stages=2)` 确实实体化 ping-pong shared，但 MACA pipeline planning 源码明确将 `use_async_copy=false`，生成 C++ 也没有 `memcpy_async`。Case3 的 Step1/Step2 shared 从 32 KiB 增到 64 KiB，阶段时间分别退化 48.05%/44.35%；Step2 的 12-byte spill 消失，但 MMA duty 从 40.93% 降到 28.41%。仓库中 `example_gemm_with_maca_async_copy.py` 已在当前 sc-16g 上编译并通过数值正确性，其 C++ 出现真实 `memcpy_async<16>`、跨迭代预取和 `barrier_arrive_and_wait`。
- Verified bottleneck / 已验证瓶颈：v004 的权重 global-to-shared 搬运与 MMA 由 barrier 串行；普通两级 pipeline 的失败不能证伪 overlap 方向，因为它根本没有使用 MACA 异步搬运。同时 64 KiB 每 block shared footprint 是已观测到的并发风险。
- Current hypothesis / 当前假设：将权重 copy 切换为显式 `T.maca_async_copy`，并在第一次 `ldmatrix_b` 前对对应 MACA barrier 执行 arrive-and-wait，能把下一 K tile 的权重 MTE 搬运与当前 tile 的 MMA 交叠。若 64 KiB 导致的驻留损失仍大于 overlap 收益，后续将保留真异步路径，用减半 N tile 使双缓冲回到 32 KiB，而不是放弃该方向。
- Proposed mechanism / 拟采用机制：从 v004 源码出发，Step1 用同一 MACA barrier 提交 gate/up 两组权重 async copy，Step2 用独立 barrier 提交 down 权重 async copy；保留 `num_stages=2` 以让 pipeline pass 安排 prologue/steady-state/epilogue。input/up_logits 的 global-to-fragment copy 保持同步。先做 lowering/C++/最终 ISA 和 correctness gate，再做 paired mcTracer/mcProfiler 及 benchmark。
- Predicted metric changes / 预测指标变化：生成 C++ 必须出现 `memcpy_async`，下一 stage copy 必须在当前 stage MMA 前发射；ISA 必须出现对应 async-copy/wait 序列且无新 spill。相比 v005，MMA duty 应回升，MTE/MMA 的设备级交叠应增加；若 shared 驻留仍占主导，则单 wave 指标可能改善但端到端仍退化，这将成为下一版缩 tile 的直接依据。
- Falsifying result / 证伪条件：若 C++/最终 ISA 没有真实 async-copy 指令，或 wait 被放到每次 copy 后导致仍完全串行，则当前 TileLang 表达式被证伪，必须追溯/patch pipeline builtin lowering。若真 overlap 、shared 不增加且资源不恶化，但 paired runtime 仍超过噪声显著退化，则“串行等待是主瓶颈”的假设被证伪。
- Correctness and resource risks / 正确性与资源风险：两组 Step1 copy 共用 barrier 的 handle 聚合语义、pipeline stage 索引、K 尾块及 wait 位置都可能导致读未完成数据；64 KiB shared 可能继续压低 residency；barrier handle 和 stage 地址可能增加 MT/ST 寄存器。任何 profile 前必须先通过官方与 OJ 三 case 正确性。

## 实施经过

- 实际改动：从 v004 恢复后，把 Step1 gate/up 和 Step2 down 权重搬运改为显式 `T.maca_async_copy`。最终实现不依赖 `T.Pipelined`，而是两套 row-major shared buffer、两套标量 MACA barrier 和手写奇偶 K-pair prologue/steady-state；下一次同 parity 预取在当前 buffer 完成 MMA 并经过 reuse barrier 后发射，与另一 parity 的 input load/MMA 重叠。
- 相对计划的偏离：初版 `num_stages=2 + maca_async_copy` 数值错误。没有换方向，而是依次下钻到 lowering、生成 C++ 和最小探针：
  1. 证明 async copy 直接写原 swizzle layout 会稳定破坏数据；32x64/128x64 两种尺寸均只有 swizzle+async 失败，identity+async 精确通过。
  2. 证明即使 `num_stages=1`，pipeline planner 仍把下一轮 async overwrite 排在源码 post-MMA CTA barrier 之前，产生 shared RAW race。
  3. 改成 identity layout + `T.serial` 可通过；再手写双缓冲调度，最终三组 OJ 和两组官方功能测试全部通过。
  4. 继续用 mcTracer/mcProfiler/最终 ISA 解释负收益，而没有把“async 无效”当成结论。
- Source snapshot：`v006_maca_async_copy_sc-16g_custom_fusedmoe.py`
- Patch：`v006_maca_async_copy_sc-16g.patch`

## 结果

- 结论：rejected。该版首次在本算子中建立了数值正确、生成代码可证的 global-to-shared async/MMA overlap，但不能作为生产版本：identity shared layout 与 64 KiB 双缓冲使 Case3 Step1/Step2 退化到 18.319/9.317 ms；mcProfiler 的平均指令阶段延迟放大 9.07x/6.13x，MMA duty 降至 16.75%/16.29%。
- 关键收获：方向未被证伪；下一版保留手工 async 调度，把 Step1 N tile 128→64、Step2 N tile 256→128，使双缓冲 shared 回到 32 KiB，并把每线程 accumulator/weight fragment 减半，直接同时攻击 shared footprint 与寄存器压力。
- 证据报告：`../../restart-rep/v006_maca_async_copy_sc-16g/v006_maca_async_copy_sc-16g_report.md`
