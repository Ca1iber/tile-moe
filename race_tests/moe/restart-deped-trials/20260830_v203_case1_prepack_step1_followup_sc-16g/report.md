# v203 Case1 冲击 85 分：prepack 与 mixed-Step1 后续闭环（sc-16g）

## 结论

本批没有产生可晋级候选。精确父版本为
`v203_case23_parallel_rank_builder_sc-16g`，Case1 的 Step1/Step2 与外部 OJ
SOTA v166 指令级一致。按外部 OJ 的 `2.015 ms / 84.81%` 估算，稳定进入
85 分约需 `1.9855 ms`，即至少约 `1.47%` 的端到端下降；用户约定的本地候选
门槛仍为直接父版本 `>=1.2%`。

## 新 profile 证据

精确 v203 Case1 的 mcProfiler core 结果：

| kernel | workgroups / waves | avg wave life | AP active | 说明 |
|---|---:|---:|---:|---|
| rank | 1 / 1 | 1,473.00 | 5,928 | 独立 rank builder |
| short prepack | 64 / 256 | 4,931.23 | 1,279,978 | short consumer-native input |
| long prepack | 64 / 512 | 5,745.91 | 1,591,030 | long consumer-native input |
| Step1 | 1536 / 6144 | 42,692.27 | 135,811,942 | MMA duty 61.77% |
| Step2 | 192 / 768 | 193,734.09 | 81,325,792 | MMA duty 61.89% |

v203 的 Case1 long-prepack 静态体为 1852 条指令；v166 为 993 条。fresh
mcProfiler 对照中，v166 long-prepack 的平均 wave life 为 5,187.54、AP active
为 1,430,156，分别低于 v203 约 10.8% 和 11.2%。因此先验证精确恢复旧
prepack，而不是继续盲调 GEMM。

## Trial A：精确恢复 v166 Case1 prepack

- 只在非 physical-prepack 路径恢复 v166 的 branch-free consumer-native 写回。
- OJ source validator：PASS。
- 三 Case full valid-row correctness：PASS，`rtol=atol=1e-2`。
- Case2/3 screen 相对 v203：`+0.0499% / +0.0310%`，为噪声，符合其代码路径不变的预期。
- Case1 5x50 AB/BA：五轮 `-0.1986/-0.1054/-0.4007/-0.2513/-0.1312%`；
  mean `-0.2174%`，median `-0.1986%`，pstdev `0.1049%`。
- 最终 MetaX ISA 的 kernel2 与 v166 完全一致：993 条规范化指令，SHA-256
  前缀均为 `b72a5034400c98fb`；资源为 26 MT / 36 ST / 8 waves。

判定：收益稳定但远低于 1.2%，不编号、不晋级、不创建 submission。该结果也
证明 v203 prepack 的 profiler 膨胀只占端点很小比例。

## Trial B：Case1 mixed-Step1 triplet 交错

- 保持 CTA 数、waves、Gate/Up 字节、MMA 数和数学不变，仅把原来的
  `all short -> adjacent long slots` 改为每组 `short -> long0 -> long1`。
- OJ source validator：PASS。
- Case1 full valid-row correctness：PASS，`rtol=atol=1e-2`。
- Case1 1x10 AB/BA：`1.99749 -> 2.01708 ms`，回退 `+0.9804%`。

判定：拒绝。原顺序把较重 short CTA 放在前波，同时保持 long expert 两个物理
slot 的权重局部性；triplet 交错破坏该性质。结合此前 Step2 triplet 回退
`+2.4244%`，不再继续搜索同类 CTA 排列组合。

## 合规与版本处理

所有 trial 仅使用公开 TileLang primitive；无 async copy、源码注入、直接
MXMACA builtin、跨调用缓存、warmup 预处理或关闭 race checker。两个结果均低于
1.2% 门槛，只归档到 `restart-deped-trials`；`dorm`、SOTA ledger 与
`restart-submission` 保持不变。
