# v134_case1_step2_hardware_divmod_grid_sc-16g 实验记录

## 身份

- 状态：rejected_no_material_performance_change
- 机器：sc-16g
- 基线版本：external-OJ-AC v110
- 父版本：`v110_case1_unpredicated_native_up_logits_sc-16g`
- 当前 OJ SOTA（ID / submission SHA-256 / 各 case 分数）：v110 / `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e` / `[0.833778,0.824765,0.823671]`
- Kernel 路径及 SHA-256：`restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py` / `439a2b80...509e`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v130 显示 Case1 Step2 占端到端 33.39%，资源为 `202 MT / 52 ST / 2 waves`。v124 证明消除 `by` bounds guards 可带来约 `0.587%` 端到端收益，但 `T.assume` 将 MT 推高至 218；v125/v126 的源码算术重写分别回退或 codegen 膨胀。
- Verified bottleneck / 已验证瓶颈：Case1 expert-grouped Step2 的二维 CTA 映射在热路径使用 `pid0 % 2`、`pid0 // 2` 并触发保守地址合法化；单纯添加范围证明存在收益但有 live-range 代价。
- Current hypothesis / 当前假设：将二维 `pid0 in [0,8)` 等价分解为硬件 `blockIdx.x in [0,2)` 与 `blockIdx.y in [0,4)`，可让商/余数由网格坐标天然给出，在保持完全相同线性 CTA 顺序与逻辑映射的同时，减少整数地址算术并使 `by` 范围天然可证，且不引入 v124 的全局 assume live range。
- Proposed mechanism / 拟采用机制：仅 Case1 Step2 把 grid `(8,24)` 改写为等体积 3D grid `(2,4,24)`。短 expert 映射为 `bx=pid2, by=pid1*2+pid0`；长 expert 映射为 `bx=(pid2//2)*2+pid0, by=(pid2%2)*4+pid1`。这与 v110 对每个线性 CTA 的 `(bx,by)` 映射逐项相同。Cases2/3 使用 `z=1`，保持现有二维映射。
- Predicted metric changes / 预测指标变化：CTA 数、线性 dispatch 顺序、global bytes、MMA、barrier 均不变；Case1 Step2 generated C++ 去掉对 `pid0` 的 div/mod 和重复 `by` guards，MT 不高于 202，Step2 时间下降至少约 3.6%，从而端到端严格 AB/BA 达到至少 1.2%。Cases2/3 generated code 应等价或字节级不变。
- Falsifying result / 证伪条件：3D grid 未保持逐线性 CTA 映射、codegen 膨胀、资源恶化、任何正确性失败，或 Case1 五轮严格 AB/BA 中位提升不足 1.2%，立即 reject。
- Correctness and resource risks / 正确性与资源风险：TileLang/MXMACA 的 3D block linearization 必须与 x-fastest 假设一致；若后端把 `blockIdx.z` 分支重复内联到访问表达式，可能重现 v126 codegen 膨胀。必须先做映射等价枚举，再看 generated C++/资源，最后完整 correctness。

## 实施经过

- 实际改动：Case1 Step2 的 `(8,24)` 二维网格等价改写为 `(2,4,24)` 三维网格，按硬件 x/y 坐标替代原 `pid0%2` 与 `pid0//2`；Cases2/3 以 z=1 保持原映射。
- 相对计划的偏离：无。对 192 个线性 CTA 的 `(bx,by)` 做了逐项枚举，全部等价。
- Source snapshot：`v134_case1_step2_hardware_divmod_grid_sc-16g_custom_fusedmoe.py`
- Patch：`v134_case1_step2_hardware_divmod_grid_sc-16g.patch`
- Candidate submission：`candidate_submission.py` / `c82dc95211589d8d59b40e37617114644ce5c6bf1207fb8b331cb2c180b945ff`；未创建 `restart-submission/`。

## 结果

- 结论：rejected。Case1 三轮严格 AB/BA 中位变化 `+0.035896%`（回退），均值 `+0.019086%`，属于噪声；关键 bounds guards 与 202 MT 资源均未改变。
- 证据报告：`../../restart-rep/v134_case1_step2_hardware_divmod_grid_sc-16g/v134_case1_step2_hardware_divmod_grid_sc-16g_report.md`
