# v099 Case3 delay-high-A 报告

## 1. 上版本遗留问题

v097/v098 证明改变分割比例或增加 producer 数不可靠，需要在 v095 的两个 64-row producer 安全结构内寻找时序空间。

## 2. 问题原因分析

v095 第二段 A 紧跟 Gate0，可能增加 fragment 生命周期；但推迟它也会减少 Gate/Up copy 可隐藏的 A latency。本轮直接比较两种影响。

## 3. 本版本解决方案

odd 与 next-even 从 `A-low-Gate0-A-high-Gate1-Up0-Up1` 改为 `A-low-Gate0-Gate1-A-high-Up0-Up1`，其余完全不变。

## 4. 具体落地策略

仅移动既有 64-row high-half `T.Parallel` block；不改变 extent、索引、grid、MMA、barrier 或 Case1/2 路径。无 async/foreign code。

## 5. Benchmark 对比

MetaX C500 `sc-16g` Case3，完整 padded-output PASS，同进程 AB/BA，3 rounds，W20/R30。

| 版本 | paired change | pstdev | 判定 |
|---|---:|---:|---|
| v095 | parent | — | 开发性能基线 |
| v099 | `+2.179928%` median | `0.036329%` | 3/3 稳定回退 |

三轮：`[+2.179928, +2.229724, +2.140957]%`。

## 6. Profile / codegen 指标

generated SHA `8399961a...`，bytes 与 v095 同为 `30283`。Step1 资源 `226 MT / 54 ST -> 218 MT / 54 ST`，仍为 2 waves/PEU。资源下降却性能显著回退，说明本轮主要机制是 A 请求就绪时间，而非 occupancy/register floor。因 screen 已稳定否证，未采集 mcTracer/mcProfiler；下一步按 stall rule 直接 fresh profile v095。

## 7. 实验总结

v095 的 high-half A 必须位于 Gate0 和 Gate1 之间。延后虽减少 8 MT，却损失约 2.18%，进一步确认当前 Step1 受同步 A 延迟覆盖约束。拒绝 v099，不提交外部 OJ；v095 保持开发性能基线，v092 保持正式 SOTA。
