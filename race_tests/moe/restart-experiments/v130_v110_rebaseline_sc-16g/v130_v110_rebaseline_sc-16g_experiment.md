# v130_v110_rebaseline_sc-16g 实验记录

## 身份

- 状态：`completed_baseline_profile`（证据基线，不是 candidate）
- 机器：MetaX C500 `sc-16g`
- 基线/父版本：external-OJ SOTA `v110_case1_unpredicated_native_up_logits_sc-16g`
- 当前 OJ SOTA source SHA-256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- 当前 OJ score ratios：`[0.833778, 0.824765, 0.823671]`
- Frozen source：`v130_v110_rebaseline_sc-16g_custom_fusedmoe.py`，SHA-256 与 v110 相同。

## 假设卡

- Observed evidence：旧容器 perfcount ret 800，v110 缺少一份当前可复现的全 Case Step1/Step2 counter 基线。
- Verified bottleneck：本轮开始前未知；不能沿用旧容器失败 profiler 的数值。
- Current hypothesis：新容器 perfcount 可用后，阶段拆分、resource、counter 与 ISA 能把下一方向从猜测收敛到单一机制。
- Proposed mechanism：不改代码，冻结 exact v110；依次做 correctness、自身 AB/BA 噪声、mcTracer、mcProfiler、lowering、ISA 和 Roofline。
- Predicted metric changes：无 candidate，预期同源 AB/BA 位于噪声带；产出可复现阶段证据。
- Falsifying result：source hash 不同、correctness 失败、perfcount 仍不可用或 profile 无法绑定到指定 kernel。
- Correctness/resource risks：只读 reprofile，无 kernel correctness 风险；主要风险是 profiler 多 pass 归一化与 aggregate/per-kernel 混用。

## 实施经过

- 实际改动：仅新增 v130 冻结源码、采集脚本和证据；未修改 dorm 工作 kernel。
- 偏离：Case3 Step2 首次全量 report 生成失败，随后分成 11-metric 与 8-core-metric per-kernel supplements；只合并成功 JSON。
- Source snapshot：`v130_v110_rebaseline_sc-16g_custom_fusedmoe.py`
- Candidate submission：无；本轮禁止创建 `restart-submission/v130_*`。

## 结果

- 结论：`completed_baseline_profile`。三 Case correctness PASS；同源 AB/BA 约 ±0.13% 内；Step1 占 62%–66%，是下一轮主目标。
- 下一机制：保持既有 A/Gate/Up 请求顺序与流量不变，单独尝试 Step1 B-fragment/地址临时量 live-range narrowing；门槛仍为 1.2%。
- 证据报告：`../../restart-rep/v130_v110_rebaseline_sc-16g/v130_v110_rebaseline_sc-16g_report.md`

