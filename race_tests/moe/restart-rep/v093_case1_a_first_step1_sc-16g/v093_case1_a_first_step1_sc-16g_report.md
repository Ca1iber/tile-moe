# v093 Case1 A-first Step1 优化报告

## 1. 上版本遗留问题

v091/v092 已分别在 Case2 native 和 Case3 non-native 路径验证 `A -> G0 -> G1 -> U0 -> U1`。Case1 仍保留 `G0 -> A -> G1 -> U0 -> U1`，而其 Step1 在 mcTracer 中约占总 GPU span 的 `63%`，存在相同的独立访存提前空间。

## 2. 问题原因分析

已验证结论：Case1 Step1 使用 28 个 `ldg_b128`、256 个 MMA、4 个 barrier，资源为 `224 MT / 42 ST / 2 waves`，无 private spill。当前推测：A 在 Gate0 后才发出，缩短了与后续权重 producer 的覆盖窗口。需要验证的是更早的 A fragment 生命周期是否会增加寄存器但仍保持 occupancy 档位。

## 3. 本版本解决方案

仅让官方 Case1 启用 v092 已验证的非-native A-before-Gate0 路径，同时把 compile-time flag 从 Case3 专用名称改为 selected-non-native 名称。两个 producer 点同步改动；Case2/3 生成路径不变。

## 4. 具体落地策略

- 候选：`race_tests/moe/restart-experiments/v093_case1_a_first_step1_sc-16g/candidate_submission.py`
- SHA-256：`f87f933dd3484a9e7508cea21883d6ab790201939e0781c12bd5d8cbbd1a9247`
- `use_non_native_a_before_gate0=True`：官方 Case1；Case3 保留 v092 条件；Case2 继续走 native A-first。
- odd-tile 与 next-even 的 predicated A load 均位于 Gate0 前。
- 同步 TileLang-only，无 async copy、foreign code、hack 或结果缓存；候选门槛 `1.2%`。

## 5. Benchmark 对比

机器：MetaX C500 `sc-16g`，25% compute slice。协议：同进程 AB/BA、完整 padded-output correctness、`rtol=atol=1e-2`。

| Case | 协议 | v092 median | v093 median | paired median | pstdev | 判定 |
|---:|---|---:|---:|---:|---:|---|
| 1 | 7 rounds, warmup 100, repeat 100 | 2.380396 ms | 2.341868 ms | -1.640808% | 0.107502% | 稳定超过 1.2% 门槛 |
| 2 | 3 rounds, warmup 100, repeat 100 | 3.944284 ms | 3.945523 ms | +0.031413% | 0.003580% | generated-identical 噪声 |
| 3 | 3 rounds, warmup 100, repeat 100 | 7.955169 ms | 7.953782 ms | -0.035993% | 0.038806% | generated-identical 噪声 |

Case1 七轮 paired change：`[-1.691188, -1.834435, -1.640808, -1.459933, -1.617474, -1.572281, -1.695662]%`，所有轮次同向。正式 SOTA 仍是 v088，OJ score vector `[0.822321, 0.814906, 0.812460]`；v093 尚无完整外部 OJ 三例向量，不能更新 submission ledger。

## 6. Profile 指标变化

权威 mcTracer 汇总按三 kernel 真实身份 `prepack -> Step1 -> Step2` 重算：

| 指标 | v092 median | v093 median | paired median change | 解释 |
|---|---:|---:|---:|---|
| prepack | 0.018944 ms | 0.018688 ms | -2.666667% | 绝对值仅约 19 us，量化噪声 |
| Step1 | 1.511424 ms | 1.473280 ms | -2.559322% | 目标阶段明确改善 |
| Step2 | 0.840448 ms | 0.835840 ms | -0.639659% | 未改变，trace 波动 |
| GPU span | 2.397952 ms | 2.360320 ms | -1.506249% | 与 clean benchmark 同向 |
| Step1 -> Step2 gap | 0.002816 ms | 0.002816 ms | 约 0 | 收益不是 launch gap |

第一/三对 baseline trace 含较大 launch-gap 波动，因此不使用单对 GPU span 做结论；三对 Step1 全部改善 `-3.014%、-2.524%、-2.559%`，与 clean 七轮一致。

Codegen/ISA：Case2 generated SHA `717d9d46...`、Case3 `9e4c82be...` 与 v092 完全相同；Case1 从 `c61cd69d...` 变为 `cce8acc2...`。Case1 Step1 `224 -> 228 MT`，仍 `2 waves/PEU`，0 stack/private。ISA 指令 `3063 -> 3060`、`snop 363 -> 360`；`ldg_b128=28`、`lds_b128=64`、`sts_b128=16`、`MMA=256`、`barrier=4`、`arrive=91` 均不变。

mcProfiler/Roofline 未重复：FLOPs、逻辑字节、grid 和静态 load/MMA/barrier 数不变；clean timing、三核 mcTracer、codegen/ISA 已直接回答 issue-order 假设。目录中明确记录 unavailable，不冒用历史 counter。

## 7. 实验总结

v093 达成预测：Case1 clean latency 稳定提升 `1.641%`，真实 Step1 改善 `2.559%`，仅增加 4 MT 且没有 occupancy 降档；Case2/3 generated code保持逐字节一致，三例正确性和 OJ source/generated 合规门禁全部通过。

结合 v091/v092，三个官方 shape 都对 A-before-Gate0 呈现收益，且非-native Case1/3 的 ISA 均只减少 3 条总指令/3 个 snop，工作量计数不变。这是当前最强的新线索：更早发出独立 A 请求能改善同步 producer 的动态重叠。

## 8. 外部 OJ 结论（2026-08-25）

用户报告 exact candidate SHA-256 `f87f933dd3484a9e7508cea21883d6ab790201939e0781c12bd5d8cbbd1a9247` 在外部 OJ 为 `Wrong Answer`；未提供失败坐标或 testcase 诊断。

外部 OJ 正确性高于本地检查证据，因此正式 verdict 更新为 `rejected_external_oj_wrong_answer`。v093 不创建 `restart-submission`，也不能作为后续正确性合格父版本；本地性能/profile 仅保留为调度研究证据。
