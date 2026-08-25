# v132_native_up_logits_kpitch_pad128_sc-16g 实验记录

## 身份

- 状态：rejected_below_1p2_gate
- 机器：sc-16g
- 基线版本：external-OJ-AC v110
- 父版本：`v110_case1_unpredicated_native_up_logits_sc-16g`
- 当前 OJ SOTA：v110 / `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e` / ratios `[0.833778, 0.824765, 0.823671]`
- Kernel 路径及 SHA-256：`restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py` / `439a2b80...509e`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v085 将 row-major `up_logits` 的 4/16 KiB 二次幂 row pitch 增加 256B 后，三 case 端到端改善 4.3%--4.6%，Case3 Step2 缩短 12.75%；512B 周期回到冲突档。v110 改用 consumer-native layout 后，每个 K64 plane 恰为 `4*256*8*2 = 16384B`，仍是二次幂；此前没有测试 native plane pitch padding。
- Verified bottleneck / 已验证瓶颈：v130 fresh profile 中 Step2 占 33%--34%，corrected HBM roof use 62%--77%，Cases2/3 Step2 MMA duty 约 49%；native `up_logits` 是 Step1→Step2 的真实 global producer/consumer workspace。
- Current hypothesis / 当前假设：连续 K64 plane 的 16KiB stride 可能重新形成 v085 已验证的 cache-set/memory-partition/internal-bank 地址别名；改成 `16384+256 = 16640B = 65*256B` 的奇数 pitch 可分散相邻 K 请求，而不增加逻辑字节。
- Proposed mechanism / 拟采用机制：仅对 consumer-native `up_logits` 使用 padded K-plane，plane payload 8192 FP16，尾部增加 128 FP16；Step1 写与 Step2 读共同使用显式 3D `[block,k_tile,native_offset]` 地址。非-native path、MMA、grid、copy/barrier 顺序保持不变。
- Predicted metric changes / 预测指标变化：generated Step1/Step2 地址 stride 必须从 16384B 改为 16640B；MMA/LDG/barrier 静态数量不增，MT 不跨坏档；若机制成立，Step2 tracer time、Dnoc/VLS 或有效带宽改善，并推动至少一个官方 case 端到端 AB/BA ≥1.2%。
- Falsifying result / 证伪条件：codegen 未出现 16640B plane stride、资源恶化或 spill；任一正确性/OJ gate 失败；或严格 AB/BA 无 case 达到 1.2% 且 aggregate 无实质收益，则 reject 并归入 `restart-deped-trials`。
- Correctness and resource risks / 正确性与资源风险：Step1/Step2 任一端 offset 公式不一致会读取错误 K tile；显式地址可能增加整数寄存器；padding 增加少量 workspace 容量但不应增加访问流量。

## 实施经过

- 实际改动：consumer-native `up_logits` 改为 `[block,k_tile,8320]`，其中 8192 FP16 payload 后增加 128 FP16；Step1/Step2 使用相同显式 native offset。
- 相对计划的偏离：无；未进行相邻 padding sweep，首个因果点已显示噪声。
- Source snapshot：`v132_native_up_logits_kpitch_pad128_sc-16g_custom_fusedmoe.py`
- Patch：`v132_native_up_logits_kpitch_pad128_sc-16g.patch`
- Candidate submission：先放在 `candidate_submission.py` 或 `/tmp`，记录 SHA-256；OJ SOTA 门禁通过前禁止创建 `restart-submission/v132_native_up_logits_kpitch_pad128_sc-16g/`

## 结果

- 结论：rejected；三 case AB/BA 中位 `+0.084% / -0.036% / +0.087%`，未达到 1.2%，不创建 submission。
- 证据报告：`../../restart-rep/v132_native_up_logits_kpitch_pad128_sc-16g/v132_native_up_logits_kpitch_pad128_sc-16g_report.md`
