# v062_step1_epilogue_prune_sc-16g 实验记录

## 身份

- 机器：sc-16g
- 基线/父版本/当前最佳：v059（79.33），commit `0759762565e8a491b19c3625d4d3d7529b432b31`
- 分支：`exp/moe-79-33-step1-epilogue-prune`
- 候选 SHA-256：`24b7394442233bce88e00ada34e6782f9dddd730c6056bf9c1a1b28e14e86a74`

## 假设卡

- Observed evidence / 已观测证据：79.33 已用 `actual_rows` 跳过完整无效 MMA row warp，但 Step1 SwiGLU epilogue 仍对每个 128-row block 的全部行执行 `exp2 + reciprocal + multiply`，之后才在写回时检查有效行。
- Verified bottleneck / 已验证瓶颈：79.33 的 Case1 Step2 已改善 7.71%，Step1 仅变化 -0.16%，当前 Case1 由 Step1 主导。
- Current hypothesis / 当前假设：把已有 `actual_rows` guard 提前到 epilogue 外层，可以消除无效行的标量/向量激活工作，并保持有效行数学不变。
- Proposed mechanism / 拟采用机制：仅移动现有条件，使 `gate_local` 的 SwiGLU 激活和 `up_logits` 写回位于同一个 `i < actual_rows` 分支内；MMA、tile、grid、copy、barrier 和 Step2 均不变。
- Predicted metric changes / 预测指标变化：generated C++ 中 `exp2/div/multiply` 位于有效行条件内；Step1 和端到端延迟小幅下降；资源占用不增加。
- Falsifying result / 证伪条件：配对耗时不稳定、不优于 v059，或任一官方形状正确性失败/性能回退。
- Correctness and resource risks / 正确性与资源风险：分支开销可能抵消被裁剪的 epilogue；compiler 可能产生发散控制流；必须检查 padding output 与最终生成代码。

## 当前证据

- 三个官方形状独立参考正确性 PASS，最大 `max_abs=0.001953125`，`padding_max=0.0`。
- OJ source allowlist/static gate PASS。
- Case1 generated C++ 确认整个 epilogue 位于有效行条件内；Step1/Step2 MT registers 为 222/212，静态最大 2 waves/PEU，与 v059 无资源回退。
- Case1 screen（AB/BA 7 rounds，warmup 5，repeat 30）：2.782225 → 2.777882 ms，1.00156x，7/7 候选更快。
- 正式三 Case 判定（AB/BA 13 rounds，warmup 20，repeat 100）：Case1 2.780375 → 2.776310 ms（1.00146x，13/13 胜）；Case2 4.737467 → 4.734185 ms（1.00069x，11/13 胜）；Case3 9.264312 → 9.259883 ms（1.00048x，13/13 胜）。
- Case1 三组 AB/BA mcTracer：Step1 中位下降 0.352%，Step2 中位变化 -0.175%；收益定位与假设一致。
- targeted mcProfiler 的 achieved waves 完全一致（1,626,148），但候选侧多数复合 counter 因采集器缺失底层事件而不可用；因此只把它视为“工作量未改变”的诊断证据，不用于解释耗时。
- 三个官方形状均已生成 device C++ 与最终 xcore1000 ISA；禁用项扫描为 0 hit。Case1 Step1/Step2 MT registers 为 222/212，Case2/3 为 216/230，均保持静态最大 2 waves/PEU。
- 当前结论：v062 是新的本地全局最优；收益很小但三 Case 均不回退，完整正确性、计时、mcTracer、codegen 与 ISA 门禁已关闭，外部 OJ 仍待确认。
