# v010_async_wait_fence_dedup_sc-16g 实验记录

## 身份

- 状态：rejected_with_followup_solution
- 机器：sc-16g
- 基线版本：v009_async_consumer_fence_sc-16g
- 父版本：v009_async_consumer_fence_sc-16g（commit `6aed14df`）
- 当前最佳：v004_step2_router_weight_register_reuse_sc-16g
- Kernel 路径及 SHA-256：实验结束后恢复 `race_tests/moe/custom_fusedmoe.py` 到 v009，`7adb0ee7165adbecb5c2b6f7b9bfad020ed4e514533917b2d433bb09c5da8a9c`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v009 最终 ISA 的 debug location 将 `barrier_arrive_and_wait` 解析到 MACA 3.7.1 `__clang_maca_device_functions.h:3824-3835`。128-bit async token 的模板默认 `mxc_thread_scope::thread_scope_block`，调用 `__builtin_mxc_barrier_and_wait4(block, token)`；ISA 确实为该调用生成 hardware `barrier`。紧随其后的 `T.sync_threads()` 又经 SDK `__syncthreads` 生成一套独立 block fence/barrier/fence。
- Verified bottleneck / 已验证瓶颈：v009 每 K 仍是 async block wait(s)→显式 CTA barrier→staging-to-swizzle→显式 CTA barrier→next async→MMA。Case3 ISA barrier 为 Step1/Step2 4/3，Step1 占 mcTracer kernel time 70.48%。
- Current hypothesis / 当前假设：async wait 已经是 block-scoped completion/visibility barrier，因此 wait 后的显式 `T.sync_threads()` 完全重复。staging-to-swizzle 后的 sync 仍必须保留，用于确保所有 staging reader 完成后才启动下一次 overwrite，并保证 compute tile 写入对 MMA 可见。
- Proposed mechanism / 拟采用机制：只删除 Step1 两个 wait 后和 Step2 一个 wait 后的 `T.sync_threads()`，不改变 token 数、post-transform sync、tile、grid、layout 或 fragment。先跑 quick+全 OJ 正确性，再核对 C++/ISA barrier；正确后做 v009/v010 paired Case3。
- Predicted metric changes / 预测指标变化：C++ 每 kernel 静态 `__syncthreads` 从 2 降到 1；最终 ISA barrier Step1/Step2 从 4/3 降到 3/2；register/shared/grid/spill 不变；runtime、wave life 与 block-barrier 相关等待下降，Step1 收益可能因其每 K 两个 async wait 而小于 Step2 的相对比例。
- Falsifying result / 证伪条件：任一 OJ case 正确性失败，或最终 ISA 未减少预期 barrier，或 paired v010 相对 v009 稳定负优化超过 2%。
- Correctness and resource risks / 正确性与资源风险：如果 SDK block-scoped async wait 只协调 token completion 而不提供普通 shared load/store 的 acquire 可见性，删除显式 sync 可能使 staging-to-swizzle 读取未完成数据；但 SDK builtin 类型、scope 与最终 hardware barrier 均反对此风险，仍需实测门禁。

## 实施经过

- 实际改动：先仅删除 wait 后的 `T.sync_threads()`；确认 `ThreadStorageSync` 会自动插回后，在 JIT pass config 中关闭自动同步插入，并依次验证无 fence、仅 Step1/Step2 恢复同步、`__threadfence_block()`、`__syncthreadshared()` 五个子探针。
- 相对计划的偏离：原假设把 SDK 的 `thread_scope_block` 误读为完整 CTA rendezvous + 普通 shared acquire。正确性结果证明 MACA BSM token wait 不能代替 `__syncthreads()`；block fence 只解决可见性而不解决跨线程完成顺序，shared-only barrier 也不覆盖该同步域。
- 进一步追踪：生成地址证明 `T.maca_async_copy` 已应用 swizzle，但 C500 BSM 按 lane 固定路由，直接 swizzled 目标会有 87.5% 元素错位。根据 full-bank swizzle 的 XOR 自逆公式，对 global 源 8-half chunk 做逆映射后，32/64/128 rows 隔离探针均达到 bit-exact；该方案转入 v011。
- Source snapshot：`v010_async_wait_fence_dedup_sc-16g_custom_fusedmoe.py`
- Patch：`v010_async_wait_fence_dedup_sc-16g.patch`
- 子探针源码：`subprobes/`
- BSM 探针：`../../restart-scripts/v010_async_wait_fence_dedup_sc-16g/probe_maca_async_direct_swizzle.py`、`probe_maca_async_inverse_source.py`

## 结果

- 结论：rejected。wait 后通用 CTA barrier 是正确性硬约束，不能删除或替换为 fence/shared-only barrier；但本轮得到可用于 v011 的逆 swizzle BSM 直写方案。
- 证据报告：`../../restart-rep/v010_async_wait_fence_dedup_sc-16g/v010_async_wait_fence_dedup_sc-16g_report.md`
