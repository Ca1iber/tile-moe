# v092 Case3 A-first Step1 优化报告

## 1. 上版本遗留问题

v091 已在 Case2 证明“把 A load 提到 Gate0 之前”能改善 Step1 访存覆盖，外部 OJ Case2 `4.133 -> 3.995 ms`。Case3 的 Step1 仍采用 `G0 -> A -> G1 -> U0 -> U1`，mcTracer 显示它约为 Case3 GPU span 的 `64%`，仍是最主要的可优化阶段。

## 2. 问题原因分析

已验证结论：v091 Case3 的 A、Gate、Up 逻辑流量和 MMA 工作量固定；Step1 `224 MT / 42 ST`、`2 waves/PEU`，无 private spill。当前推测：A 请求在 Gate0 之后才发出，缩短了 A load 与后续四段权重 producer/MMA 的重叠窗口。需要验证的假设是：将 A 提前到 Gate0 前能降低 Step1 动态等待，而不会因 fragment 生命周期变长造成 occupancy 降档。

## 3. 本版本解决方案

仅特化官方 Case3，把 odd-tile 和 next-even 两个 Step1 producer 点从 `G0 -> A -> G1 -> U0 -> U1` 改为 `A -> G0 -> G1 -> U0 -> U1`。不改变 grid、barrier、共享内存布局、predicate、MMA 数、逻辑读写字节或算术。

## 4. 具体落地策略

- 候选：`race_tests/moe/restart-experiments/v092_case3_a_first_step1_sc-16g/candidate_submission.py`
- SHA-256：`8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483`
- 新增 compile-time flag：`use_case3_non_native_a_before_gate0`，仅 `num_experts == 64` 为真。
- 两个 producer 点一致移动 predicated `input_prefetch/input_shared` load；Case1/2 false 分支保持原状。
- 用户约束：同步 TileLang-only、无 async copy、无 foreign code、无 hack；候选晋级门槛至少 `1.2%`。

## 5. Benchmark 对比

机器为 MetaX C500 `sc-16g`（25% compute slice），协议为同进程 AB/BA、完整 padded output correctness、`rtol=atol=1e-2`。

| Case | 协议 | v091 median | v092 median | paired median | pstdev | 判定 |
|---:|---|---:|---:|---:|---:|---|
| 1 | 3 rounds, warmup 100, repeat 100 | 2.377746 ms | 2.379809 ms | +0.068570% | 0.044634% | 未改变路径，噪声 |
| 2 | 3 rounds, warmup 100, repeat 100 | 3.944013 ms | 3.944458 ms | -0.018493% | 0.019278% | 未改变路径，噪声 |
| 3 | 7 rounds, warmup 100, repeat 100 | 8.165414 ms | 7.958126 ms | -2.522453% | 0.053553% | 稳定超过 1.2% 门槛 |

Case3 七轮 paired change 为 `[-2.426608, -2.613519, -2.513661, -2.542050, -2.482060, -2.545307, -2.522453]%`，方向完全一致。基准脚本 SHA-256：`fusedmoe_benchmark.py adfe36d8...`、`oj_benchmark.py 1165d148...`、paired runner `de683f42...`。

正式 incumbent 仍为 v088，OJ score vector `[0.822321, 0.814906, 0.812460]`。v092 尚无三例完整外部 OJ 数值，因此不能更新 `restart-submission/SOTA.json`。

## 6. Profile 指标变化

mcTracer 原脚本错误地把三核中的前两核标为 Step1/Step2；本版本保留 raw trace，并用 `summarize_three_kernel_trace.py` 按 `prepack -> Step1 -> Step2` 重新汇总。

| 指标 | v091 median | v092 median | paired median change | 解释 |
|---|---:|---:|---:|---|
| prepack | 0.241664 ms | 0.242176 ms | +0.211864% | 未改变，噪声 |
| Step1 | 5.246464 ms | 5.032960 ms | -3.917254% | 目标阶段明确改善 |
| Step2 | 2.642432 ms | 2.633216 ms | -0.232784% | 未改变，trace 波动 |
| GPU span | 8.181504 ms | 7.974912 ms | -2.173094% | 与 clean benchmark 同向 |
| Step1 -> Step2 gap | 0.002816 ms | 0.002816 ms | 0 | 收益不是 launch gap |

Codegen/ISA：Case1 generated SHA `c61cd69d...`、Case2 `717d9d46...`，均与 v091 完全相同；Case3 从 `10eb2d62...` 变为 `9e4c82be...`。Case3 Step1 `224 -> 228 MT`，仍 `2 waves/PEU`，0 stack/private。Step1 ISA 指令 `3079 -> 3076`、`snop 363 -> 360`；`ldg_b128=28`、`lds_b128=64`、`sts_b128=16`、`MMA=256`、`barrier=4`、`arrive=91` 均不变。收益因此来自调度/重叠，不是减少工作量。

mcProfiler/Roofline 未重复：本机制不改变 FLOPs、逻辑字节、grid、MMA/load/store 数，针对性因果问题已由 clean paired timing、三核 mcTracer、generated code 和 ISA 回答；对应目录明确标记 unavailable/not repeated，不把旧 counter 冒充新数据。

## 7. 实验总结

v092 达成预测：Case3 clean latency 稳定提升 `2.522%`，mcTracer 将收益定位到 Step1 `3.917%`，资源虽增加 4 MT 但没有 occupancy 降档，正确性与 OJ source/generated 校验全部通过。瓶颈没有迁移，Step1 仍占主导；最有价值的下一实验是将同一 `A-before-G0` 机制独立迁移到 Case1，而不是继续排列已关闭的 Case2 producer 顺序。

## 8. 外部 OJ 与 SOTA 晋级（2026-08-25）

用户提交的 exact candidate SHA-256 `8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483` 三例全部 AC：

| Case | v088 latency | v092 latency | v088 score ratio | v092 score ratio | 判定 |
|---:|---:|---:|---:|---:|---|
| 1 | 2.431 ms | 2.419 ms | 0.822321 | 0.823043 | 单调改善 |
| 2 | 4.227 ms | 3.977 ms | 0.814906 | 0.823925 | 单调改善 |
| 3 | 8.281 ms | 8.014 ms | 0.812460 | 0.817403 | 单调改善 |

三例均不回退且至少一例严格改善，满足 global-SOTA promotion gate。正式 verdict 更新为 `accepted`；exact bytes 进入 `restart-submission/v092_case3_a_first_step1_sc-16g/submission.py`，并更新 `restart-submission/SOTA.json`。
