# v59 正常合规后续优化筛选（sc-16g，2026-08-21）

## 范围与规则

- 精确基线：`race_tests/moe/restart-experiments/v059_teammate_79_33_case1_grid_sc-16g/v059_teammate_79_33_case1_grid_sc-16g_custom_fusedmoe.py`
- 基线 SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- 外部 OJ 基线：79.33。
- 机器：MetaX C500 `sc-16g`，MXMACA 3.7.1.5，KMD 3.8.30。
- 仅使用正常 OJ 合规 TileLang；没有 async copy、foreign source、external call、缓存结果、benchmark/harness 修改或固定输出。
- 所有候选先写 hypothesis，再做 OJ source gate、完整 padded-output correctness 与 AB/BA device-event timing。
- promotion 门槛为相对 v59 稳定提升至少 1.2%；低于门槛不创建 vNNN、不更新 submission、不移动 `dorm`。

## 结果汇总

| 方向 | Case | 候选 SHA-256 | 正确性 | 配对结果（lower is better） | 决策 |
|---|---:|---|---|---:|---|
| 将 routed weight 前移到 Step1、移除 Step2 乘法 | 2 | `40f07bcb...` | PASS | median `-0.032%`，mean `-0.015%` | reject/noise |
| Step1 expert-grouped CTA，无范围证明 | 3 | `d5e59089...` | PASS | median `+13.090%` | reject/compiler guards |
| Step1 expert-grouped CTA，加 `bx/by` 范围证明 | 3 | `cd279f3d...` | PASS | 稳健 median `+3.511%` | reject/mapping itself |
| Step1 expert-grouped CTA，加范围证明 | 1 | `8e99e4de...` | PASS | median `+2.879%`，5/5 regressions | reject/mapping itself |
| Step1 16-row MFMA microtile tail pruning | 3 | `584c3113...` | PASS | median `+5.518%`，3/3 regressions | reject/dynamic control |
| Case1 FP16 SwiGLU epilogue（MMA 仍 FP32） | 1 | `b35c7b3b...` | PASS | quick probe `+0.089%` | reject/below 1.2% |

正值表示候选变慢。所有正确性测试在运行前用 `7.0` 填满输出，并与 padding 为零的独立 FP32 reference 做全张量 `rtol=atol=1e-2` 比较。

## 关键 profile / codegen 证据

### Routed-weight prescale

Case2 三轮 AB/BA 的变化为 `+0.051% / -0.063% / -0.032%`。两组 paired mcTracer：

- v59 Step1 / Step2 median：`3.030784 / 1.704960 ms`；
- candidate Step1 / Step2 median：`3.043328 / 1.702400 ms`；
- paired Step1 `+0.067%`，Step2 `-0.150%`；
- resources：Step1 `216 -> 218` regs，Step2 `230 -> 228` regs，仍为 2 waves，无 spill。

结论：把逐行乘法从 Step2 移到 Step1 只转移资源和极少量算术，不改变关键路径。

### Expert-grouped mapping 与 safe-memory guards

Case3 首探只打开 v59 已存在的 expert-grouped 映射。mcTracer 将回退完全定位到 Step1：

- v59 Step1 median `5.893376 ms`；
- no-assume candidate `7.126272 ms`，paired `+20.920%`；
- Step2 paired `-0.203%`，属于噪声。

生成 C++ 揭示首探并非公平测试：

| Case3 Step1 | source bytes | `if (` sites | MT regs | waves/PEU |
|---|---:|---:|---:|---:|
| v59 | 28,130 | 21 | 216 | 2 |
| grouped, no assume | 36,027 | 40 | 206 | 2 |
| grouped + four range proofs | 28,150 | 约 baseline | 214 | 2 |

缺少 `T.assume(0 <= bx < num_blocks_m)` 与 `T.assume(0 <= by < step1_col_tiles)` 时，safe-memory legalization 在 hot loop 的 input/gate/up 访问周围重复插入范围 guard。补证明后代码大小恢复，但 Case3 仍稳定慢约 3.51%，说明 v59 的同步交错预取本身偏好 row-block-first 顺序。

同样的公平复核也用于 Case1：baseline/candidate C++ 为 `30,700/30,720` bytes，资源同为 Step1 `222 regs / 2 waves`，但五轮均回退，中位 `+2.879%`。因此旧 v045 的 expert-grouping 收益不能叠加到 v59；Case1/3 Step1 mapping 家族封口。

### 16-row MFMA tail pruning

v59 已按 32-row warp 粒度跳过完整无效 warp。候选进一步利用底层 `16x16x16` MFMA，只跳过 `actual_rows=100` 时 rows 112--127 的完整无效 microtile。理论上 Case2/3 Step1 MFMA row work 可再降约 5%，且 global bytes 不变。

实际完整正确性通过，但 Case3 三轮变化为 `+5.463% / +5.548% / +5.518%`。动态、wave-uniform microtile 条件在每个 K iteration 重复执行，控制流成本超过省下的 padding MFMA。不要继续派生更细粒度动态 MFMA predicate；只有能在编译期静态专门化且不破坏输入语义时才值得重访。

### FP16 SwiGLU epilogue

候选保持 Gate/Up MMA FP32 accumulation，只在 Case1 写 FP16 workspace 前以 FP16 计算 sigmoid/product。完整 correctness 通过，单轮探针为 `+0.089%`，没有进入长测。

codegen 确认后端确实生成 `hexp2` 与 half2 算术，而非重新提升到 FP32；但 C++ 从 `30,700` 增至 `32,822` bytes，资源仍为 `222 regs / 2 waves`。新增 FP32->FP16 转换与标量化 half2 序列抵消了低精度算术，且 epilogue 不在主要关键路径。

## 新结论与后续边界

1. v59 的性能对 CTA 顺序与同步交错预取存在强耦合；旧主线的 locality 优化必须先做 range-proof/codegen 审计，不能直接按历史收益移植。
2. `T.assume` 能消除真实的 safe-memory guard 膨胀，但 guard-free 不等于 locality 一定改善；标准 row-block-first 顺序仍是 v59 的更优选择。
3. padding MMA 的理论可省工作并不自动转化为收益：当前 C500 后端缺少低成本 predicated MFMA，动态 16-row 控制流明显更贵。
4. routed-weight 与 SwiGLU epilogue 均不是 1.2% 级关键路径；后续不要继续做同类标量/尾声微调。
5. 没有候选达到 promotion 门槛。`dorm`、根 submission 和 v59 归档均保持不变。

原始临时证据位于远端 `/tmp/`：`v59-prescale-*`、`v59_case3_expert_grid_*`、`v59-step1-mfma16-tail-*`、`v59-case1-step1-expert-grid-assume-*`、`v59-case1-fp16-swiglu-*`。这些是 scratch 证据，不作为持久 submission。
