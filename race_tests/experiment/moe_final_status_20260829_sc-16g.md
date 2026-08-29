# MoE 优化最终状态与材料交接（2026-08-29，sc-16g）

## 0. 收尾决定

- 仓库所有者于 2026-08-29（Asia/Shanghai）决定结束 Fused MoE GEMM 性能优化。
- 最后一周只整理提交、实验、profile、技术报告与答辩材料；不再生成、组合、benchmark、profile 或提交新的性能候选。
- 例外：仓库所有者随后明确要求将既有 v166 按 submission 流程复核一遍；该动作只冻结和验证原始字节，不修改 Kernel，也不恢复新优化探索。
- 未完成草稿（包括计划中的 v190）不编号、不归档为有效实验、不进入 `dorm`，也不进入 `restart-submission`。
- 本文是收尾状态索引，不改变 kernel、benchmark、OJ 元数据或既有实验结论。

## 1. 上版本遗留问题

当前存在两个必须严格区分的版本状态：

1. **外部 OJ SOTA：v148**。它已由外部 OJ 判定 AC，并由仓库所有者明确指定为 SOTA；显示分为 `[83, 82, 82]`，聚合显示分 `82.33`。
2. **本地最佳候选：v166**。它在 C500 sc-16g 的 Case2 正式 AB/BA 长测中相对 v160 稳定提升超过 `1.2%` 门槛，但从未获得外部 OJ 结果，因此状态只能是 `local-candidate-external-oj-pending`。

因此，不能因为 v166 本地更快就覆盖已 AC 的 `restart-submission`。2026-08-29 已补齐 exact candidate 的本地三 Case submission 门禁，但外部 OJ 三 Case 数值仍缺；在 OJ 返回前继续保持 pending。

## 2. 问题原因分析

### 已验证结论

- v166 的收益来自 long Step1 中成对发出 Gate/Up 的独立 128-bit 权重读取，再写入既有 swizzled shared。它没有改变 global bytes、tile geometry、barrier、寄存器档位或静态 waves；Case2 的 wave lifetime 缩短、MMA duty 上升。
- exact-v166 Case2 Step2 的实测 global read 为 `969,353,184 B`。compulsory Down 权重加 consumer-native Up-logits 为 `964,689,920 B`，额外流量仅 `4,663,264 B`，约 `0.483%`。
- Case2 Step2 L2C duty 仅 `24.08%`，DNOC 平均读延迟约 `280.65 cycles`；当前瓶颈是读延迟暴露、VLS/MFMA 发射间隙和每-wave 依赖链，不是可被普通预处理消除的大量重复 HBM 流量。
- Case3 的 workgroups、waves 和 VLS stall 随 expert 数近似翻倍，而平均 wave lifetime 与 MMA/MTE duty 接近 Case2，说明 Case2/3 是同一种稳定的 per-wave bottleneck。

### 已关闭方向

- v187 双 K operand：正确、无 spill，但 Case1 回退 `0.6532%`。
- v188 Step2 N64：寄存器 `202 -> 130`、静态驻留指标 `2 -> 3`，但 CTA 翻倍及重复读取使 Case1 回退 `8.4517%`。
- v189 同步 Down register-prefetch：正确、资源档位不变，但 Case2 回退 `7.8431%`；同步 load 不能替代真正的非阻塞流水。
- 普通在线 FP16 transpose/pack 会在计分时间内增加一次完整权重读、一次完整写和 GEMM 再读，无法由当前仅 `0.483%` 的冗余读取偿还。
- 更早归档的动态尾部 MFMA 裁剪、普通 grid swizzle、同步 A ping-pong、缩小 N tile 换 occupancy、常规编译器开关等方向均未达到 `1.2%` 晋级门槛或出现明显回退。

### 不再验证的假设

平台若未来暴露 OJ 合规的非阻塞 global-to-shared/BSM 原语，或出现能显著减少必需字节的新表示，理论上仍可能改变结论；本项目本轮不再继续验证。

## 3. 本版本解决方案

本次不修改性能实现，而是冻结双层状态：

- **交付/提交权威版本**保持 v148，来源只认 `restart-submission/SOTA.json` 与对应 SHA256。
- **研究参考版本**保留 v166 的 exact source、正确性、正式 benchmark、lowering、资源和 mcProfiler 证据，但明确标为外部 OJ pending。
- 所有未晋级或已放弃方向继续放在 `restart-deped-trials`，不与 SOTA 混合。
- `dorm` 仅增加本收尾文档，不推进任何未完成 kernel。

## 4. 具体落地策略

### 外部 OJ SOTA

- 元数据：`race_tests/moe/restart-submission/SOTA.json`
- 提交源码：`race_tests/moe/restart-submission/v148_allcase_silu_degree9_clamp55_sc-16g/submission.py`
- SHA256：`1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`
- 状态：外部 OJ AC；owner-approved SOTA；显示分 `[83, 82, 82]`

### 本地最佳候选

- 源码：`race_tests/moe/restart-experiments/v166_gateup_pairload_sc-16g/v166_gateup_pairload_sc-16g_custom_fusedmoe.py`
- SHA256：`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- 证据：`race_tests/moe/restart-rep/v166_gateup_pairload_sc-16g/`
- 核心报告：`race_tests/moe/restart-rep/v166_gateup_pairload_sc-16g/v166_gateup_pairload_sc-16g_report.md`
- 状态：本地正确性 PASS、本地正式性能门禁 PASS、外部 OJ pending；已生成 candidate staging，但未创建 `restart-submission` promotion。
- OJ candidate staging：`race_tests/moe/restart-experiments/v166_gateup_pairload_sc-16g/candidate_submission.py`，与上述源码 byte-identical；本地相对 v148 正式 AB/BA 为 Case1 `-8.0110%`、Case2 `-12.3171%`、Case3 `-12.8408%`。

### 最后闭环材料

- v166 后续方向总闭环：`race_tests/moe/restart-deped-trials/20260829_v166_followup_closure_sc-16g/`
- v187：`race_tests/moe/restart-deped-trials/20260829_v166_step2_operand_followup_v187_sc-16g/`
- v188：`race_tests/moe/restart-deped-trials/20260829_v166_step2_n64_occupancy_v188_sc-16g/`
- v189 与 exact-v166 Case2/3 Step2 profile：`race_tests/moe/restart-deped-trials/20260829_v166_case23_step2_profile_v189_down_prefetch_sc-16g/`
- 历史弃用实验总目录：`race_tests/moe/restart-deped-trials/`
- Roofline/profile 索引：`race_tests/moe/moe-roofline/`、`race_tests/moe/restart-rep/`

## 5. Benchmark 对比

数据源需分开解释：OJ 数据是外部 SPJ；v166 数据是 C500 sc-16g 本地 direct-parent AB/BA，二者不能混成同一绝对时间排名。

| 版本 | 数据源 | Case1 | Case2 | Case3 | 判定 |
|---|---|---:|---:|---:|---|
| 官方 baseline | 外部 OJ | `11.251 ms` | `18.610 ms` | `35.875 ms` | baseline |
| v148 | 外部 OJ | `2.204 ms`、显示 `83` | 稳定精确时间未归档、显示 `82` | 稳定精确时间未归档、显示 `82` | AC，owner-approved SOTA |
| v160 | 本地 sc-16g | parent | `3.500773 ms`（五轮均值） | parent | v166 的本地 parent |
| v166 | 本地 sc-16g | side `-0.3761%` | `3.443347 ms`（五轮均值），相对 v160 `-1.6404%` | side `-1.8139%` | 本地候选，外部 OJ pending |

v148 的 `SOTA.json` 明确记录：Case2/3 曾出现 OJ 异常低分，后续复测均为 AC/显示 82，但未保存稳定的精确 latency/ratio。因此本文不补造 Case2/3 精确 OJ 时间。

## 6. Profile 指标变化

### v160 -> v166，Case2 Step1

| 指标 | v160 | v166 | 变化 |
|---|---:|---:|---:|
| Total cycles | `7,005.34 K` | `6,668.86 K` | `-4.80%` |
| Average wave life | `149,579.97` | `145,177.40` | `-2.94%` |
| AP MMA duty | `61.61%` | `63.11%` | `+1.50 pp` |
| AP MTE duty | `6.34%` | `6.49%` | `+0.15 pp` |
| Global read | `2,019,135,840 B` | `2,013,307,232 B` | `-0.29%` |
| VLS pipeline stall | `76,806,484` | `82,954,354` | `+8.00%` |

收益证据是 wave lifetime 与 MMA issue 改善，不是流量大幅减少；VLS stall 反升也说明不能把结果表述为“缓存冲突消失”。

### exact-v166，Case2/3 Step2

| 指标 | Case2 | Case3 | 解释 |
|---|---:|---:|---|
| Workgroups / waves | `1,344 / 5,376` | `2,688 / 10,752` | expert 翻倍时近似翻倍 |
| Average wave life | `48,086.11` | `48,246.90` | per-wave 成本稳定 |
| MMA duty | `54.58%` | `55.69%` | 接近 |
| MTE duty | `8.82%` | `9.00%` | 接近 |
| VLS pipeline stall | `28,324,303` | `57,392,198` | 随工作量近似翻倍 |

## 7. 实验总结

- MoE 优化于 2026-08-29 正式结束；没有待继续执行的优化任务。
- 最终对外提交权威状态是 **v148 external-OJ AC**，不是 v166。
- v166 是最后一个越过本地 `1.2%` 门槛的候选；现已完成 exact candidate 三 Case 正确性、正式 AB/BA、generated C++ 与 ISA 合规复核，是 external-OJ-ready candidate，但因缺少外部 OJ 数值仍不晋级 `restart-submission`。
- v187-v189 提供了有价值的反例：更多 operand live range、用更小 N tile 换 occupancy、同步 register-prefetch 都不能改善当前内核。
- 最终性能图景是：Step2 已接近 compulsory global bytes，核心矛盾转为延迟隐藏和依赖链；在现有 OJ 合规 TileLang 原语下，普通预处理与同步搬运没有收益闭环。
- 后续只做材料整理：核对 SOTA SHA、整理优化时间线、挑选 v148/v166/v187-v189 数据与图表、形成复现命令和答辩叙事；不再改 kernel。

## Git 收尾基线

- 收尾文档创建前 `dorm` HEAD：`8d0623e918db0ddb654b19bdfaf23a04df2cdc4c`
- 对应提交：`exp(moe): 归档 v166 Case2/3 profile 与 v189`
- 远端：`github` -> `git@github-tile-moe:Ca1iber/tile-moe.git`
- 远端工作区存在与本次收尾无关的历史 codegen 二进制漂移和旧未跟踪材料；本次提交不包含、不清理这些文件。
