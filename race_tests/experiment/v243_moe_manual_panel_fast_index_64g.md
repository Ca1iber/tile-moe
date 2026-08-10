# v243 MoE Step1 manual panel 与固定索引特化（64G）

## 1. 上版本遗留问题

v95 已针对官方三个固定 shape 使用转置 grid、Step2 `M128 x N128 x K128`
tile，并在 case 2/3 前移 routed weight。64G 严格配对测试中，v95 相对
inline SOTA 的三个 case 分别提升 6.04%、4.80% 和 5.56%。

但 case 2/3 的 Step1 仍沿用通用二维 CTA 映射，无法显式控制相邻 token
block 对相同 expert 权重 panel 的复用顺序。两个 case 的 shape、expert 数和
输出列 tile 数固定，因此通用索引计算和默认遍历顺序仍有进一步特化空间。

## 2. 问题原因分析

已验证事实：

- v95 profile 中 Step1 仍约占总 device 时间的 58%～60%；
- case 2/3 的 `hidden=7168, intermediate=2048` 与 grid 形状固定；
- 多轮 panel/group sweep 表明 Step1 CTA 顺序会稳定影响 case 2/3 延迟；
- v243 相对前主线的五轮配对结果在 case 2/3 均超过 2% 收益，且数值正确。

当前解释：默认二维映射不能稳定形成期望的 expert/panel 局部性。显式一维
PID 映射可以让 `panel=8, group=2` 的 CTA 访问顺序更贴合固定 shape，同时
化简 case 2/3 的固定索引计算。

## 3. 本版本解决方案

v243 在 v95 三 shape dispatch 基础上增加：

- Step1 显式 1D CTA panel 映射；
- `step1_manual_panel=8`；
- case 2/3 使用 `step1_pid_group=2`；
- 对固定 `step1_col_tiles=16` 的路径使用快速索引；
- case 1 保留正确且稳定的特化路径；
- 其他 shape 仍回退原有通用 schedule。

该版本不改变 MoE 数学语义、FP32 累加、padding 处理或输出接口。

## 4. 具体落地策略

最终源码：

```text
race_tests/moe/submission.py
race_tests/moe/experiments/official3_specialize_64g/
  submission_moe_v243_manual_p8_fast_index_64g.py
```

关键 benchmark：

```text
race_tests/moe/experiments/official3_specialize_64g/benchmark_official3_64g.py
```

关键验证数据：

```text
v243_vs_current_main_case1_strict_64g.json
v243_vs_current_main_cases2-3_strict_64g.json
v243_merged_vs_previous_main_all_cases_strict_64g.json
```

远端正式 `submission.py` 与归档候选哈希一致：

```text
dd7968903ff804141e7959b9af9853999befb2765d3b6d12f769f65cd58fdb56
```

## 5. Benchmark 对比

环境：MetaX C500 64G，FP16 输入/输出、FP32 accumulator。以下为同进程
配对测试，`warmup=5, repeat=30, rounds=5`，表中取五轮中位数。该口径用于
远端候选筛选，不写成新的 OJ 平台成绩。

| Case | 前主线 | v243 | 绝对变化 | 相对提升 | 最大绝对误差 | 正确性 |
|---:|---:|---:|---:|---:|---:|---|
| 1 | 3.364685 ms | 3.344486 ms | -0.020198 ms | 0.60% | 0 | PASS |
| 2 | 6.034620 ms | 5.897558 ms | -0.137062 ms | 2.32% | 0.001953125 | PASS |
| 3 | 11.834197 ms | 11.557034 ms | -0.277163 ms | 2.40% | 0.001953125 | PASS |

合并后的正式 `race_tests/moe/submission.py` 又以
`warmup=5, repeat=30, rounds=3` 验证三例全部 PASS：

| Case | 合并前主线 | 合并后 v243 | Speedup |
|---:|---:|---:|---:|
| 1 | 3.370078 ms | 3.348113 ms | 1.0066x |
| 2 | 6.039996 ms | 5.900886 ms | 1.0236x |
| 3 | 11.824717 ms | 11.564885 ms | 1.0225x |

## 6. Profile 指标变化

TODO：v243 没有单独归档新的硬件 counter/profile 全量对照。

已有证据来自严格端到端配对测试与 panel/group sweep。迁移到 `sc-16g` 后，
应先建立 `_sc-16g` 新 baseline，再采 Step1/Step2 duration、grid、register、
shared memory 和 L2 request；不得直接把 64G 绝对延迟与 sc-16g 比较。

## 7. 实验总结

v243 成功。它在保持 v95 数学路径和正确性的前提下，通过 Step1
`panel=8, group=2` 显式映射与固定索引化简，使 case 2/3 稳定提升约
2.3%～2.4%，case 1 也获得约 0.6% 收益。三个官方固定 shape 全部通过
正确性验证。

该版本是 64G 当前 MoE OJ 特化源码 checkpoint；新 OJ 总分尚未确认。
迁移后应从此源码建立 `sc-16g` 分支，但新性能数据必须使用 `_sc-16g`
后缀并重新测量。
