# v146 Case1 clamped degree-11 SiLU polynomial（16g）

- 日期：2026-08-26。
- 机器：sc-16g，MetaX C500 25% sGPU，FP16。
- 状态：`rejected_external_oj_performance_regression`。
- 精确父版本：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 正式候选：v146，SHA-256 `99745a82952ac37faea46a7f16dbe73877adf9c84328c2e02821e0cfd39fab58`。
- 安全边界：TileLang 公共原语；无 fast-math、async copy、代码注入、结果缓存或固定 expert 排布假设。

## 1. 上版本遗留问题

可靠 SOTA v110 的 Case1 Step1 在 Gate/Up MMA 后，对每个 Gate accumulator 使用精确 `exp2 + reciprocal/division` 计算 SiLU。MMA 主体已经高度展开，但这条标量数学链仍占据显著静态指令和依赖延迟。

已完成的消融表明：

- `x * (1/d)` 改写为 `x/d` 的四轮中位变化仅 `-0.105996%`，跨零且属于噪声。
- 用 `rsqrt(d*d)` 替代正分母倒数稳定回退 `+0.293967%`。
- v129 在 exact v110 上启用全局 fast-math，虽有本地收益，但已由用户确认 external OJ `WA`，不能作为正常优化继承。

因此遗留问题不是 TileLang 表达式写法，而是精确 exp/div 路径本身的静态和动态代价。

## 2. 问题原因分析

### 已验证结论

- v110 Case1 Step1 后端汇编含 `3082` 条静态指令，其中 `64 exp_f32`、`64 rcp_f32`、`64 div_fmas_f32`、`64 div_fixup_f32`，另有 `364 snop`。
- v110 与 v146 的 Case1 Step1 都是 `1536 workgroups / 6144 waves`，资源同为 `226 MT / 42 ST / 32 KiB dynamic shared / 2 waves/PEU`；收益不是少做 CTA、提高 occupancy 或减少 MMA。
- mcProfiler 显示 v110 Step1 的 MMA duty 为 `51.58%`，而平均 wave life 为 `50204.57 cycles`，说明同样 MMA 工作之外仍有可缩短的非 MMA 路径。

### 当前推测

精确 SiLU 的 exp/div 串行依赖使 Step1 尾声无法被已有 MMA/访存并行完全隐藏。若用可审计的 FMA 多项式替代，可在不改变资源门槛的情况下减少长延迟指令和 `snop`。

### 下一步需要验证的假设

本地输入覆盖不能证明隐藏 OJ 的 Gate 尾部分布。必须由 external OJ 验证显式近似在未知随机种子和数据尺度下仍满足容差；OJ AC 前不得把它升级为可靠 SOTA。

## 3. 本版本解决方案

仅对官方 Case1 (`experts=16, hidden=2048, intermediate=8192`) 专门化 SiLU：

1. 把 Gate 值 clamp 到 `[-6,6]`。
2. 用 degree-11 odd polynomial 计算 `sigmoid(x) ≈ 0.5 + x*P(x²)`。
3. 用原始 Gate 值乘近似 sigmoid 得到 SiLU。
4. Case2/3 保留 exact v110 的 `exp2` 路径。

系数由 `[-6,6]` 上 `200001` 个等距 double 样本最小二乘拟合，可由 `fit_silu_poly.py` 复现。区间内 sigmoid 最大绝对误差约 `0.00234444`，SiLU 最大绝对误差约 `0.0140667`。

预期收益是用独立 FMA 替代 exp/div 长依赖链；代价是 Case1 变为近似数学，且 clamp 外尾部误差需要 external OJ 把关。

## 4. 具体落地策略

- 修改文件：`race_tests/moe/restart-experiments/v146_case1_silu_poly_clamp_sc-16g/candidate_submission.py`。
- 修改位置：`moe_forward_tilelang_routed` 的 shape specialization 与 Step1 Gate epilogue。
- 新增 compile-time 标志 `use_case1_poly_silu`，只在 `(2048,8192,16 experts)` 路径开启。
- 多项式按 Horner 顺序展开为 `p11 → p9 → p7 → p5 → p3 → p1`，避免函数调用、动态表和额外 buffer。
- grid、block、MMA tile、shared-memory layout、Gate/Up 交错加载顺序、consumer-native `up_logits` 和 Step2 全部保持 v110。
- 正式源码的三 Case generated C++ 与长测 probe 逐字节一致；Case2/3 generated C++ SHA-256 分别为 `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c` 与 `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2`，与归档 exact v110 完全相同。

一键正式复验：

```bash
bash race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/run_formal_validation.sh
```

## 5. Benchmark 对比

本地协议：父/候选同进程，5 轮交替 AB/BA，`warmup=3`、`repeat=50`；每轮变化按同轮 candidate/parent 计算。官方 shape 为：

- Case1：16 experts，hidden 2048，intermediate 8192，2272 valid tokens。
- Case2：32 experts，hidden 7168，intermediate 2048，4544 valid tokens。
- Case3：64 experts，hidden 7168，intermediate 2048，9088 valid tokens。

| Case | v110 中位延迟 (ms) | v146 中位延迟 (ms) | 配对绝对差中位数 (ms) | 配对变化中位数 | 换算加速比 |
|---|---:|---:|---:|---:|---:|
| 1 | 2.181673 | 2.131369 | -0.051702 | **-2.366097%** | **1.024234x** |
| 2 | 3.896013 | 3.898240 | +0.001602 | +0.041125% | 0.999589x |
| 3 | 7.554765 | 7.554483 | +0.000133 | +0.001760% | 0.999982x |

- Case1 五轮变化：`-2.199002% / -2.430603% / -2.366097% / -2.197187% / -2.504984%`，全部同向且都超过 `1.2%` direct-parent 门槛。
- Case2/3 为字节相同代码路径，变化在约 `±0.04%` 内，视为测量噪声而不是性能改动。
- 三 Case 换算加速比几何平均约 `1.007870x`；本版本的有效收益集中在 Case1。

外部 OJ 目前只有可靠 v110 数据：

| 版本 | Case1 | Case2 | Case3 | 相对 OJ baseline | 状态 |
|---|---:|---:|---:|---|---|
| OJ baseline | 11.251 ms | 18.610 ms | 35.875 ms | baseline | 官方基线 |
| v110 | 2.243 ms | 3.954 ms | 7.680 ms | 5.016x / 4.707x / 4.671x | external-OJ-AC |
| v146 | 2.366 ms | 6.253 ms | 12.991 ms | 4.755x / 2.976x / 2.762x | correctness AC，性能否决 |

外部 OJ 是晋级的权威数据。相对 external-OJ-AC v110，v146 三 Case 分别回退 `+5.483727% / +58.143652% / +69.153646%`。虽然三 Case 都显示 `Pass: OK`，但它只证明正确性通过，不能抵消性能灾难性回退。v146 立即判废，不进入 `restart-submission`，也不能作为后续 parent。

该结果与本地证据存在未解释矛盾：本地正式 capture 中 Case2/3 generated C++ 与 v110 字节一致，而 OJ Case2/3 却慢 `1.58x/1.69x`。因此本地同进程 ABBA/codegen 流程至少有一环没有复现 OJ 的真实提交执行路径；在查清前，本地 `-2.366%` 只能保留为诊断记录，不能称为有效优化。

## 6. Profile 指标变化

### ISA 与资源

| Case1 Step1 指标 | v110 | v146 | 变化 |
|---|---:|---:|---:|
| 静态指令数 | 3082 | 2378 | **-22.84%** |
| `snop` | 364 | 204 | **-43.96%** |
| MMA 指令 | 256 | 256 | 不变 |
| global load/store | 28 / 16 | 28 / 16 | 不变 |
| branch | 54 | 54 | 不变 |
| MT/ST registers | 226 / 42 | 226 / 42 | 不变 |
| static max waves/PEU | 2 | 2 | 不变 |

v146 删除精确 exp/rcp/div 序列，主要变为 `320 fmak_f32`、`192 mul_f32`、`128 max_f32`、`64 min_f32`；没有 spill、async copy 或额外 CTA。prepack 与 Step2 汇编不变。

### mcTracer

协议：Case1，3 对 AB/BA，`warmup=5`。

| 阶段 | 配对中位变化 |
|---|---:|
| prepack | 0.000000% |
| Step1 | **-3.362256%** |
| Step2 | +1.933405% |
| GPU span | **-1.546754%** |

Step1 三个样本由 v110 的 `1.415168 / 1.417984 / 1.416192 ms` 降为 v146 的 `1.372672 / 1.364736 / 1.368576 ms`。Step2 源码与 ISA 完全不变，其正向变化是 trace replay/相邻阶段耦合噪声；端到端判断以 5x50 ABBA 为准。

### mcProfiler

协议：Case1 Step1 (`kernel_kernel_1`)，父/候选同指标、`--per-kernel --counts 1`。首次 v146 replay 虽采到 event batch，但 mcProfiler 内部汇总错误而误聚合整段 workload；无效日志保留，表格只使用预编译同一 source-tag 后成功重跑的 per-kernel JSON。

| 指标 | v110 | v146 | 变化 | 解释 |
|---|---:|---:|---:|---|
| Total cycles (Kcycles) | 10425.63 | 10154.49 | **-2.600706%** | 与 Step1 缩短同向 |
| Average wave life | 50204.57 | 48651.88 | **-3.092726%** | wave 尾部依赖缩短 |
| AP active cycles | 162621468 | 156477208 | **-3.778259%** | 相同工作量占用更少 active cycles |
| MMA duty | 51.58% | 53.61% | +2.03 pp | 同样 256 MMA 在更短执行中占比提高 |
| MTE duty | 10.39% | 7.91% | -2.48 pp | 不是靠增加访存吞吐获得收益 |
| Global read bytes | 1582068640 | 1580142560 | -0.121744% | 流量基本不变 |
| Global write bytes | 37224768 | 37224768 | 0 | 完全不变 |
| Dnoc read latency | 279.80 | 280.06 | +0.092924% | 基本不变 |
| VL1 hit | 87.4556% | 87.4556% | 0 pp | 完全不变 |
| Workgroups / waves | 1536 / 6144 | 1536 / 6144 | 0 | 排除工作量缩减 |

`wsm_stall` 与 `vls_pipeline_stall` 在独立 replay 中分别轻微增加 `0.82%`、`1.53%`，但 total cycles、wave life、AP active 和 mcTracer Step1 同时下降；因此它们不是本版本的主导解释。证据支持“移除精确数学长依赖”，不支持“HBM 带宽提高”。

## 7. 实验总结

v146 的本地机制实验曾显示 Case1 直接父版本五轮提升 `2.366%`、Step1 tracer 缩短 `3.362%`、ISA 静态指令减少 `22.84%`，但这些信号没有转化为外部 OJ 收益。权威 OJ 实测三 Case 相对 v110 全面回退，且 Case2/3 分别达到 `58.14%/69.15%`，因此原先的 `locally-qualified` 判断被外部证据推翻。

正确性方面，三官方 shape 均通过严格 fullcheck。Case1 对 grouped/alternating/reversed/permuted 四种 expert 次序与四个种子直接对 PyTorch `F.silu`，最大绝对差不超过 `0.00390625`、严格 mismatch 为 0；8 组含 `0.5x/1.5x` 输入和权重尺度的压力验证最坏绝对差 `0.00830078125`，严格/OJ mismatch 为 0，所有运行 deterministic。

工程结论：`rejected_external_oj_performance_regression`。可靠 SOTA 与 `restart-submission` 继续保持 exact v110。v146 不得继续叠加、不得作为 parent、不得称为 SOTA。下一步先核对实际上传文件的 SHA-256，并用独立进程、无跨模块缓存的方式复现 OJ 三 Case；在解释“本地 Case2/3 字节一致但 OJ 巨幅回退”的矛盾前，不再依据同进程 ABBA 晋级任何候选。

## 证据索引

- 候选、patch、SHA、假设卡：`race_tests/moe/restart-experiments/v146_case1_silu_poly_clamp_sc-16g/`。
- ABBA、reference/stress、codegen、ISA、mcTracer、mcProfiler：`race_tests/moe/restart-rep/v146_case1_silu_poly_clamp_sc-16g/`。
- 复现脚本：`race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/`。
- profiler 原始大文件：`/root/moe_runs/v146_vs_v110_case1_mcprofiler_20260826/`、`/root/moe_runs/v146_vs_v110_case1_mctracer_20260826/`。
