# v145 实验说明

- 日期：2026-08-26。
- 机器：sc-16g，MetaX C500 25% sGPU；正式长测前确认无其他 GPU 负载。
- 精确父版本：external-OJ-AC v110，SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 候选 SHA256：`07fcf188586622475360c1b2f3cbe39b6694d3dd2b108945ae9c57738b8eaa09`。
- 背景：v143 已被外部 OJ 判定 WA，因此本实验没有继承 v143/v144，而是从精确 v110 源码重新移植可独立成立的改动。
- 唯一改动组：启用 TileLang 公共 `TL_ENABLE_FAST_MATH`；仅在 expert-grouped Step2 中补充 `bx/by` 与 routed-index 的合法范围 `T.assume`；复用 `routed_base` 地址表达式。
- 安全性：仅使用允许的 TileLang 公共原语；无 async copy、代码注入、外部源码、固定 expert 排布假设或结果缓存。

## 源码与正确性门禁

- OJ 源码检查：通过。
- 三种官方 shape：`strict_mismatch=0`、`oj_mismatch=0`。
- Case1/2 最大绝对差 `0.0009765625`；Case3 最大绝对差 `0.001953125`。
- Case2/3 额外执行随机 expert 排列验证：`strict_mismatch=0`、`oj_mismatch=0`，最大绝对差均不超过 `0.0009765625`。
- 生成代码检查：正式归档源码的三 Case 均通过 submission validator，且生成 C++ 与已长测 probe 逐字节一致；复验原始目录为 `/root/moe_runs/v145_formal_codegen_revalidation_20260826/`，未引入 async 指令或 spill。

## 稳态 ABBA 长测

协议：父/候选同进程交替，5 轮 ABBA，`warmup=10`、`repeat=50`；原始记录见 `v145_v110_fastmath_step2_bounds_sc-16g_abba.log`。

| Case | v110 中位延迟 (ms) | v145 中位延迟 (ms) | 中位变化 | 换算加速比 |
|---|---:|---:|---:|---:|
| 1 | 2.181484 | 2.138780 | -1.957227% | 1.019963x |
| 2 | 3.893655 | 3.879158 | -0.345519% | 1.003467x |
| 3 | 7.565809 | 7.537459 | -0.374707% | 1.003761x |

- Case1 五轮变化：`-1.909309% / -2.129693% / -1.957227% / -2.128551% / -1.871926%`，全部同向且均超过 1.2%。
- 三 Case 本跳加速比几何平均：`1.009034x`。
- 结论：Case1 达到 direct-parent 1.2% 晋级门槛，Case2/3 无可见回退；这是一个 locally-qualified、external-OJ-pending 候选。
- 外部 OJ 的 v110 延迟为 `2.243 / 3.954 / 7.680 ms`；本地比值只能用于预估，不能替代外部 OJ 实测。

## 生成代码与资源

- prepack 与 Step1 静态资源完全不变。
- Case1 Step2：资源由 `202 MT / 52 ST` 寄存器变为 `218 MT / 30 ST`，动态共享内存仍为 `32 KiB`，静态理论驻留仍为 `2 waves/AP`；没有 spill。
- Case2/3 Step2：资源保持 `220 MT / 52 ST` 寄存器、`32 KiB` 动态共享内存、`2 waves/AP`。
- 生成 C++ 大小：Case1 `30746 -> 27295` 字节；Case2/3 `28449 -> 28013` 字节。
- 三 Case 的 MMA 调用点数和 barrier 数量均不变。
- Case1 Step2 的 `bx/by` 与 routed-index range proof 使编译器删除 group 索引、`up_logits`/Down 加载及输出存储周围的冗余 safe-memory 分支；Step1 生成源码差异来自 fast-math 编译选项，而非算法或 grid 变化。

## mcTracer 定位

协议：Case1，3 对父/候选交替采样，`warmup=5`；原始 trace 位于 `/root/moe_runs/v145_vs_v110_case1_mctracer_20260826/`。该批脚本沿用了旧标签，摘要 JSON 中 `v143` 实际指 exact v110，`v144` 实际指本 v145 候选，`sources` 字段可核验精确文件路径。

| 阶段 | 配对中位变化 |
|---|---:|
| prepack | 0.000000% |
| Step1 | -2.670034% |
| Step2 | -5.888359% |
| GPU span | -3.207939% |

- grid、block、共享内存与 wave 驻留未变；候选 Step2 仅有静态寄存器从 202 增到 218。
- 因此端到端收益不是 launch 空泡或并行度变化造成：fast-math 给 Step1 带来稳定执行缩短；Case1 Step2 也显著缩短，结合静态分支删除推断 range proof 是其主要来源，但本实验尚未单独消融两项改动。

## mcProfiler 配对

协议：Case1，对 exact v110 与 v145 的 Step1 (`kernel_kernel_1`) 和 Step2 (`kernel_kernel_2`) 分别采集同一组计数器；原始目录为 `/root/moe_runs/v145_vs_v110_case1_mcprofiler_20260826/`。mcProfiler 使用 replay 聚合，绝对周期与普通稳态计时不可直接互换，因此只解释同协议的父/候选趋势。

| 阶段/指标 | v110 | v145 | 候选变化 |
|---|---:|---:|---:|
| Step1 total Kcycles | 10280.97 | 10168.42 | -1.094741% |
| Step1 average wave life | 50033.12 | 49191.52 | -1.682086% |
| Step1 AP active cycles | 163040704 | 158417540 | -2.835589% |
| Step1 MMA duty | 51.45% | 52.95% | +1.50 pp |
| Step1 MTE duty | 10.36% | 8.70% | -1.66 pp |
| Step1 global read bytes | 1585216352 | 1587564000 | +0.148096% |
| Step1 VL1 / L2 hit | 87.456% / 28.276% | 87.456% / 28.495% | 0 / +0.219 pp |
| Step1 Dnoc read latency | 277.56 | 280.23 | +0.961954% |
| Step2 total Kcycles | 9324.32 | 9452.35 | +1.373076% |
| Step2 average wave life | 191919.61 | 189683.44 | -1.165160% |
| Step2 AP active cycles | 80587319 | 80270467 | -0.393178% |
| Step2 MMA duty | 62.46% | 62.70% | +0.24 pp |
| Step2 MTE duty | 9.55% | 4.90% | -4.65 pp |
| Step2 global read bytes | 607641824 | 599078432 | -1.409283% |
| Step2 VL1 / L2 hit | 87.255% / 49.772% | 87.255% / 50.715% | 0 / +0.943 pp |
| Step2 Dnoc read latency | 260.91 | 259.10 | -0.693726% |

- 两阶段 workgroup/wave 数均完全不变：Step1 为 `1536/6144`，Step2 为 `192/768`；可排除 grid 或有效工作量缩减导致的假加速。
- Step1 信号较一致：平均 wave life、AP active 和 total cycles 都下降，MMA duty 上升，而读流量、VL1 命中率与 Dnoc 延迟基本不变。它支持“fast-math 缩短非 MMA 数学/控制路径，使相同 MMA 工作在更少 active cycles 内完成”，不支持“HBM 带宽突然变高”的解释。
- Step2 的 mcProfiler 信号不完全自洽：average wave life 与 AP active 略降，但 total Kcycles 增加 `1.37%`；ISU `wsm_stall` 与 `vls_pipeline_stall` 在独立 replay 中分别增加 `7.73%` 与 `30.19%`。mcProfiler 的各 metric batch 是不同程序重放，不能用这些互相矛盾的聚合计数覆盖 ABBA/mcTracer 的实测延迟结论。
- Step2 更可靠的证据链是：生成代码确认冗余 safe-memory 分支被删除，三次配对 mcTracer 的 Step2 变化全部为负（`-2.08% / -5.89% / -6.57%`），且正确性与随机 expert 排列均通过。
- 首次 v145 Step2 计数器采样有一个 batch 在驱动侧 segmentation fault，导致只完成 5/6 batch；无效原始目录保留为 `/root/moe_runs/v145_vs_v110_case1_mcprofiler_20260826/v145_step2.failed-segfault/`。随后只重跑该项，6/6 batch 完成且无缺失 metric；表格只使用重跑后的有效报告。

## 状态与下一步

- 状态：`locally-qualified / external OJ pending`。
- 在外部 OJ 返回 AC 前，不更新 `restart-submission` 或 `SOTA.json`，也不把本候选作为下一可靠 parent。
- 若 OJ AC，则 v145 成为 v110 后第一个可靠晋级点；后续优先以 v145 为 parent，分别隔离 fast-math 与 Step2 range-proof 的贡献，并继续针对 Step1 的非 MMA 指令/等待开销寻找下一跳。
