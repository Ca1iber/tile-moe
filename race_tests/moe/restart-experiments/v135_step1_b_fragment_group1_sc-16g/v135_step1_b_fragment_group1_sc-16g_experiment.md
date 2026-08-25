# v135_step1_b_fragment_group1_sc-16g 实验卡

## Observed evidence

- exact v110 的 Step1 占三例 kernel span 的 62.37%–65.65%。
- v110 Step1 为 226 MT/线程、42 ST/线程、2 waves/PEU；MMA duty 约 51.57%–54.73%。
- fresh Case1 Step1 perfcount 为 MMA duty 51.40%、VLS-pipeline stall 62,973,375、DNOC read latency 280.03。
- 源码中每线程 `weight_local` 保存 8 个输出 micro-column、共 64 个 FP16 元素，然后才发射 MMA。

## Verified bottleneck

Step1 内部 operand feed/有效重叠不足；跨 kernel gap 不是主因。高 MT 与 2-wave 是风险信号，但 3-wave 阈值未知。

## Current hypothesis

将 Step1 B fragment 从 8 列缩到 1 列并逐列复用，可能缩短 B operand 的活跃区间、降低 MT register 或减少 VLS pipeline 等待，而不改变 global bytes、barrier、MMA 数量和 A/Gate/Up producer 顺序。

## Proposed mechanism

新增 `ldmatrix_b_group`/`mma_group`，把 Gate 和 Up 各自的 8 列 B fragment 拆成逐列 `load → MMA`。Step2 保持 v110 不变。正式候选使用 `group_cols=1`；`group_cols=2/4` 只做 codegen/resource screen。

## Predicted metric changes

- Step1 `weight_local` 从 64 个 FP16 缩到 8 个 FP16。
- Step1 MT 不增加，理想情况下下降并提高 waves/PEU。
- MMA、global bytes、barrier 数不变。
- 三例严格 AB/BA 至少一例达到 1.2%，其余不回退。

## Falsifying result

若最终 MT/waves 不改善，且三例 AB/BA 中位提升均不足 1.2%，则关闭 B-fragment live-range 方向，不进入 candidate profiler、OJ 或 submission。

## Correctness and resource risks

- `j` 分组可能使后端完全 unroll，寄存器仍被重新扩张。
- 将 LDS 与 MMA 逐列串行可能减少原先跨列的 load latency hiding。
- accumulator 索引错误会造成静默数值错误，因此三例都必须跑完整有效行 correctness。

## Outcome

Falsifier 触发。`group_cols=1` 虽将生成 C++ 的局部数组从 64 缩到 8 个 FP16，但最终仍为 226 MT/2 waves；三例中位变化分别为 -0.263%、-0.103%、+0.012%，全部低于 1.2%。v135 拒绝。
