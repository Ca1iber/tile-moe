# v009_async_consumer_fence_sc-16g 实验记录

## 身份

- 状态：closed_rejected_production
- 机器：sc-16g
- 基线版本：v004_step2_router_weight_register_reuse_sc-16g（OJ Case3 配对均值 10.653655 ms）
- 父版本：v008_async_stage_to_swizzle_sc-16g（commit `92435226`）
- 当前最佳：v004_step2_router_weight_register_reuse_sc-16g
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，`90a384c320da9b911a4dbd4f17125031147a2307337ffcab7c7e3d831218e94e`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v008 已经将 global async 的线性 staging 转为 swizzled compute tile，Case3 相比 v007 将 Step1/Step2 WSM stall 分别降低约 82.7%/79.2%，但生成 C++ 的每个 K 迭代仍是 `async wait -> __syncthreads -> staging-to-compute -> __syncthreads -> MMA -> __syncthreads`。最终 ISA 中 async wait 落为 `arrive bsmcnt(...)`，而 `T.sync_threads()` 单独落为 CTA `barrier`。
- Verified bottleneck / 已验证瓶颈：v008 的 Step1/Step2 仍分别有 116/126 个 MT 寄存器、32 KiB shared 和每 K 三次 CTA barrier；其中 post-MMA barrier 位于下一次迭代的 wait+CTA barrier 之前，是可疑的重复 consumer fence。
- Current hypothesis / 当前假设：async wait 本身只保证各线程 async token 完成，不能替代 wait 后的 CTA barrier；staging-to-compute 后的 CTA barrier 同时承担 staging 读完、compute 写可见两个职责，也必须保留。唯独 MMA 后的 CTA barrier 可以由下一迭代 wait 后的 CTA barrier承担，因为下一轮 shared 覆盖发生在该 barrier 之后；末轮之后不会再覆盖 compute tile。
- Proposed mechanism / 拟采用机制：只删除 Step1、Step2 K 循环末尾的 post-MMA `T.sync_threads()`；保留 wait 后和 staging-to-compute 后的同步。先跑全部三组 OJ 正确性，再检查 C++/ISA 确认每 K barrier 从 3 减到 2，并做配对基准；若失败，构造跨-wave shared 可见性最小实验而不是直接换方向。
- Predicted metric changes / 预测指标变化：正确性保持；动态 shared、寄存器数、grid 不变；C++ 每 kernel 静态 `__syncthreads` 位置从 3 减到 2；WSM/barrier stall 和 wave life 下降，Step1/Step2 runtime 均下降。由于 v008 的主要损失还包括双倍 grid 与 shared transform，预计不足以单独超越 v004。
- Falsifying result / 证伪条件：任一 OJ case 超出既有 atol/rtol，或配对测量显示 v009 相对 v008 稳定负优化超过 2%，则“下一轮 barrier 可安全接替 post-MMA fence”的假设被证伪。
- Correctness and resource risks / 正确性与资源风险：如果不同 wave 在下一轮 global/input load 与 async wait 的进度不一致，而 wait 后 CTA barrier 未能覆盖所有前一轮 shared consumer，可能发生 compute tile 的 WAR hazard。资源风险低，因为不改变 tile/fragment/shared allocation。

## 实施经过

- 实际改动：只删除 Step1/Step2 K 循环末尾 post-MMA `T.sync_threads()`；wait 后和 staging-to-swizzle 后的同步均保留。最终 C++ 每 kernel 的静态 `__syncthreads` 由 3 减到 2，ISA barrier 由 5/4 减到 4/3。
- 相对计划的偏离：无源码范围偏离。验证中进一步由 ISA debug info 追到 MACA SDK，确认 `barrier_arrive_and_wait` 默认就是 block scope，为 v010 删除 wait 后重复 sync 提供了新假设。
- Source snapshot：`v009_async_consumer_fence_sc-16g_custom_fusedmoe.py`
- Patch：`v009_async_consumer_fence_sc-16g.patch`

## 结果

- 结论：rejected as production / accepted as mechanism checkpoint。全正确；v008/v009 paired Case3 均值 16.194202→14.106613 ms（-12.89%），但仍慢于 v004 当前最佳 10.653655 ms。
- 证据报告：`../../restart-rep/v009_async_consumer_fence_sc-16g/v009_async_consumer_fence_sc-16g_report.md`
