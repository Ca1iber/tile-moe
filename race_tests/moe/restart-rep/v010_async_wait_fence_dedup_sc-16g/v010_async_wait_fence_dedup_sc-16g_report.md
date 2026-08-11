# v010_async_wait_fence_dedup_sc-16g 证据报告

## Verdict

- 运行类型：screen + memory-model isolation
- 结论：rejected；kernel 已恢复 v009
- 一句话因果结论：MACA `barrier_arrive_and_wait` 等待每线程 BSM token，但不构成后续跨线程 swizzle bridge 所需的完整 CTA rendezvous；通用 `__syncthreads()` 不可删。BSM 固定 lane 路由可通过 XOR 逆 swizzle 源地址补偿。

## Identity

- Machine：sc-16g
- Git branch / parent：`dorm` / `6aed14df`
- 恢复后的 kernel SHA-256：`7adb0ee7165adbecb5c2b6f7b9bfad020ed4e514533917b2d433bb09c5da8a9c`
- 证据范围：本轮未修改 TileLang 库；使用 `/root/tilelang-metax/build` 与 MACA 3.7.1 SDK header。

## Correctness

- 门禁：`oj_benchmark.py`，`rtol=1e-2, atol=1e-2`。
- v010a（只删源码 sync）：OJ 三 case 曾通过，但生成 C++ 与 v009 byte-identical，属于无效候选。
- v010b（禁用 ThreadStorageSync，无 wait fence）：Case1 mismatch 17,269 / 4,653,056，max abs 0.2717285。
- v010c（仅 Step1 恢复通用 sync）：短测一次通过，复测 mismatch 234，max abs 0.2159119，说明 Step2 仍有竞态。
- v010d（仅 Step2 恢复通用 sync）：mismatch 12,956，max abs 0.0776672，说明 Step1 竞态更严重。
- v010e（wait 后 `__threadfence_block`）：mismatch 16,266，max abs 0.0791016；内存 fence 不能替代线程会合。
- v010f（两处 `__syncthreadshared`）：mismatch 10,125，max abs 0.0610352；shared-only barrier 不覆盖 BSM 所需同步域。
- 结构化结果见 `v010_async_wait_fence_dedup_sc-16g_subprobe_results.json`。

## Benchmark

- 官方 benchmark：未运行；候选未通过正确性门禁。
- OJ benchmark：不报告性能判决；v010a 与 v009 二进制相同，其余子探针错误。
- 与 v000 / 上一版 / 当前最佳比较：不适用。
- 原始样本及统计：见 `benchmark/`

## Profile

- mcTracer / mcProfiler / mx-smi / Roofline：未运行。候选未通过 correctness-first 门禁，且 v010a 二进制无变化。

## Lowering and code generation

- TileLang lowering：`ThreadStorageSync` 只把 `tvm_storage_sync` 识别为 `kSync`，显式忽略 `maca_memcpy_async`，但不识别 `maca_barrier_arrive_and_wait`；因此 v010a 自动插回同步。配置键为 `tl.disable_thread_storage_sync`。
- Generated device code：v010a 与 v009 SHA-256 均为 `e8584e26892eab4fe2826faa5caae9618351e4b688a30eb14c3af5f6c60ed8c8`。禁用 pass 后每 kernel `__syncthreads` 从 2 降到 1，但全部替代协议均错误。
- Resource usage：关闭 pass 后 Step1 116 MT / 28 ST / staticMax 4；Step2 Case2/3 126 MT / 28 ST / staticMax 4，无 spill，排除资源变化导致错误。
- SDK 语义：`__syncthreads()` 明确为 release fence → block barrier → acquire fence；`barrier_arrive_and_wait4(block, token)` 没有这些 fence。实测进一步证明 token wait 也不是后续 bridge 所需的全线程会合。
- BSM swizzle 探针：生成 C++ 的 dst 已是 full-bank swizzle 地址，但原生 tileop 在 32/64/128×64 上分别错 1792/3584/7168 个元素（均 87.5%，max abs 56）。按 `source_chunk = physical_chunk XOR (row mod 8)` 逆映射后，三种尺寸均 mismatch 0、max abs 0。

## Causal interpretation

- 预测指标是否按方向变化：代码层 barrier 数按预期下降，但正确性失败，原假设被证伪。
- 端到端与分阶段时间是否一致：不适用，错误候选禁止进入性能判决。
- 生成代码是否实际变化：v010a 否；v010b-f 是。
- 是否超出 paired-run 噪声带：不适用。
- 瓶颈是否迁移：没有。v009 的 staging→swizzle bridge 仍是异步方案的主要额外成本；v011 将用已经 bit-exact 的 inverse-source BSM 直写消除它。
