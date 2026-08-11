# v008_async_stage_to_swizzle_sc-16g 实验记录

## 身份

- 状态：initialized / hypothesis locked before kernel edit
- 机器：sc-16g
- 基线版本：`v007_maca_async_half_n_tiles_sc-16g`
- 父版本：Git `8adc616d`
- 当前最佳：`v004_step2_router_weight_register_reuse_sc-16g`
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，v007 `1c244f8da81560017cae6e8395fec1a1663bd7148a55c4e6b5f99b382b4cd19b`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v007 将双 identity buffer 缩到 32 KiB，MT 降至 112/120、staticMaxWarps 升至 4，三组 OJ 改善约 29%；但 Case3 仍为 12.888/6.719 ms。单 wave life 已比 v004 低 2.64%/8.82%，VL1 partition stall 也下降，而 WSM stall 比 v004 高 6.65x/4.00x，MMA duty 仅 23.91%/22.69%。最小探针已证明 async 不能直接写现有 swizzle layout，但同步 copy 可以正确写 swizzle。
- Verified bottleneck / 已验证瓶颈：剩余损失不是 spill、VL1 饱和或单 wave 算术长度，而是 identity shared feed/async barrier 的 WSM 等待，加上 half-N 导致的翻倍 block grid。直接恢复大 N 会回到 v006 的 64 KiB/2-wave 问题。
- Current hypothesis / 当前假设：用一个 identity async staging buffer 和一个 swizzled compute buffer，可以在总 shared 仍为 32 KiB 的前提下兼得合法 async destination 与低冲突 MMA shared layout。下一 tile async 写 staging 时，当前 tile 在独立 swizzled buffer 上 MMA；每 tile 只增加一次 shared-to-shared transform。
- Proposed mechanism / 拟采用机制：保持 v007 half-N tile。Step1 为 gate/up 各分配一份 identity staging 和一份 swizzled compute buffer，Step2 为 down 分配同样两份；prologue async tile0→staging，稳态 wait→CTA sync→`T.copy(staging, swizzled)`→CTA sync→发射 next async→当前 swizzled MMA→CTA sync。使用 `T.serial`，不让 pipeline planner 重排；单 barrier 每个权重张量按 K tile 复用。
- Predicted metric changes / 预测指标变化：dynamic shared 保持 32768 B，MT/register/staticMaxWarps 接近 v007，grid 不变；C++ 中应出现 async→identity address、普通 shared load/store transform、然后 swizzled ldmatrix/MMA。若 transform 成本小于 identity MMA feed 的 WSM 空洞，Case3 两阶段应比 v007 改善至少 15%，MMA duty 上升、WSM stall 显著下降。
- Falsifying result / 证伪条件：若正确性通过、32 KiB/occupancy 不变，但 runtime 未改善或 WSM stall 不降，则 shared-to-shared transform 不能补偿成本，需进一步寻找 async-compatible permutation或改 builtin/lowering；不会再盲目添加更多 buffer。
- Correctness and resource risks / 正确性与资源风险：staging 在 transform 尚未被所有线程读完前不能被 next async 覆盖；swizzled buffer 在所有 wave 完成 MMA 前不能被下一 transform 覆盖。wait 与两个 CTA reuse barrier 缺一都会产生 race。同步 shared-to-shared `T.copy` 也可能生成低效标量访问或增加 ST/MT registers，必须从 C++/ISA 验证。

## 实施经过

- 实际改动：保留 v007 half-N tile 和 32 KiB footprint。Step1 gate/up、Step2 down 各从“双 identity parity buffer”改成“一份 identity async staging + 一份 swizzled compute”；每个 K tile 等待 staging、同步转置/重排到 swizzled compute、发射下一 tile async，再执行当前 MMA。
- 相对计划的偏离：无。生成 C++ 证明 async destination 仍为线性 identity 地址，shared-to-shared 使用 128-bit load/store 写入原 swizzle 地址，next async 位于当前 MMA 前。因 standalone Case3 出现 14.49–16.69 ms 抖动，额外执行 v004/v008 交替 paired run，并在 trap 中恢复 byte-identical v008。
- Source snapshot：`v008_async_stage_to_swizzle_sc-16g_custom_fusedmoe.py`
- Patch：`v008_async_stage_to_swizzle_sc-16g.patch`

## 结果

- 结论：rejected as production，accepted mechanism。相对 v007，正式 OJ run 改善 30.13%/22.55%/15.88%；mcProfiler 中 WSM stall 降低约 82.7%/79.2%，平均指令阶段延迟从 966.88/885.87 降到 80.93/82.48，验证 staging→swizzle 机制有效。但 paired Case3 仍比 v004 慢 56.36%。
- 后续：C++ 每 K tile 仍有 `wait -> sync -> transform -> sync -> MMA -> sync` 三个 CTA sync。MACA wait 本身是 collective；下一版逐项验证删除 wait 后和 MMA 后的冗余 CTA sync，只保留 transform 后同时保护 staging reuse 与 compute visibility 的一个 sync。
- 证据报告：`../../restart-rep/v008_async_stage_to_swizzle_sc-16g/v008_async_stage_to_swizzle_sc-16g_report.md`
