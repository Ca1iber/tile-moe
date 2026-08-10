# v003_step1_register_pressure_tile64_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g
- 基线版本：`v000_minibs_baseline_sc-16g`
- 父版本：`v002_step2_input_locality_grid_sc-16g`
- 当前最佳：`v002_step2_input_locality_grid_sc-16g`
- 起点 commit：`243102d5`
- Candidate kernel SHA256：`b31bfdfab61700e0873e03e6f4518992e5df053cea53292becfd1fccbf122c5a`
- 工作 kernel：已恢复 v002，SHA256 `bf61d3ce399ea7c685a0ed24df2245ef0745c92fe81bc1be9e18d453d07b7461`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v002 case2/3 的端到端仍由 Step1 主导（约 64%）；Step1 使用 198 MT registers/thread、32768 bytes dynamic shared、`staticMaxWarps/PEU=2`。v001 的 case3 Step1 mcProfiler global AI 已升到 1083.6 FLOP/B，VL1/L2C memacs 不变，说明 grid 局部性优化后继续单纯追 HBM 吞吐的边际收益下降。
- Verified bottleneck / 已验证瓶颈：case2/3 Step1 仍是最长阶段，但高寄存器和 shared footprint 限制可驻留 warps；104 AP 全活跃不等于单 AP 延迟隐藏充分。当前 BN=128 让 gate/up 两个 accumulator fragment 较大。
- Current hypothesis / 当前假设：对 `(7168,2048,e>=32)` 的 Step1 把 output-column tile 从 128 降为 64，可显著降低 accumulator registers 和 shared footprint、提高 occupancy/延迟隐藏；v001 的 x-major grid 会让新增的相邻 column CTA 复用 input tile，缓和 CTA 数翻倍带来的重复 input load。
- Proposed mechanism / 拟采用机制：只在精确的 case2/3 schedule guard 中设置 `block_dexpert_step1=64`；保持 case1、官方路径、Step2、BK、threads、pipeline、数学和 benchmark 不变。
- Predicted metric changes / 预测指标变化：screen codegen 应显示 Step1 registers/shared 明显下降、static max warps 上升；case2/3 Step1 至少快 1%，OJ 端到端至少快 0.5%；case1 bit-for-bit 走 v002 路径。
- Falsifying result / 证伪条件：编译/正确性失败；register/shared/occupancy 未改善；case2 或 case3 端到端退化超过 0.25%；或 CTA/同步开销超过 occupancy 收益。
- Correctness and resource risks / 正确性与资源风险：tile 仍整除 intermediate 2048，数学风险低；主要风险是 CTA 数翻倍、input 逻辑 load 翻倍和同步/launch scheduling 开销，使 memory traffic 或固定开销上升。

## 实施经过

- 实际改动：在 `(7168,2048,e>=32)` guard 中增加 `schedule["block_dexpert_step1"] = 64`，只有 1 行代码。
- Screen：OJ case2/3，各 warmup 10、repeat 100；两例正确性 PASS 后立即达到明确拒绝条件。随后只对 case3 采集 mcTracer，并对 case2/3 归档 codegen/resources；没有浪费时间运行 verdict、mcProfiler、mx-smi 或 Roofline。
- Source snapshot：`v003_step1_register_pressure_tile64_sc-16g_custom_fusedmoe.py`
- Patch：`v003_step1_register_pressure_tile64_sc-16g.patch`

## 结果

- 结论：rejected；候选已撤回，工作 kernel 恢复 v002。
- case2 `5.509847 -> 9.323776 ms`（退化 `69.220%`）；case3 `10.793464 -> 18.578247 ms`（退化 `72.125%`）。
- 资源预测命中：Step1 MT registers `198 -> 118`，dynamic shared `32768 -> 16384 bytes`，static max warps `2 -> 4`。
- 性能预测被强烈证伪：case3 Step1 grid x `16 -> 32`，Step1 `6.945280 -> 14.794496 ms`（退化 `113.015%`），Step2 保持 `3.864832 ms`。说明 CTA 数/重复工作和小 BN 的 GEMM 效率代价完全压过 occupancy 收益。
- 证据报告：`../../restart-rep/v003_step1_register_pressure_tile64_sc-16g/v003_step1_register_pressure_tile64_sc-16g_report.md`
