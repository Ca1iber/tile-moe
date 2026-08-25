# v098 Case3 four-way A/weight interleave 报告

## 1. 上版本遗留问题

v097 表明单纯把 64/64 改成 32/96 会因后半 96-row 突发而回退，需要更连续的请求/权重交错。

## 2. 问题原因分析

当前推测是多个独立 A producer 可以覆盖 Gate/Up 权重 copy。风险是 TileLang 对同一 shared fragment 的多个分离 `T.Parallel` 写入会扩大 fragment/live range 或改变 lowering 映射。

## 3. 本版本解决方案

将 A 分成四个 32-row chunk，与 Gate0、Gate1、Up0、Up1 顺序交错。

## 4. 具体落地策略

odd 与 next-even producer 同时改成 `A0-G0-A1-G1-A2-U0-A3-U1`；其余 Case、grid、MMA 和 barrier 不变；无 async/foreign code。

## 5. Benchmark 对比

MetaX C500 `sc-16g` Case3 完整 padded-output 在计时前失败：`40,366,684 / 88,080,384` 元素不一致（45.8%），最大绝对差 `3.8955078125`。依据 correctness-first gate，不产生性能数字。

## 6. Profile / codegen 指标

改动进入 generated code，SHA `8e86fba4...`，bytes `32809`。Step1 资源从 v095 `226 MT / 54 ST / 2 waves` 膨胀到 `247 MT / 108 ST / 2 waves`。未采集 mcTracer/mcProfiler/Roofline，因为 correctness 已否决。

## 7. 实验总结

四路 shared fragment producer 不可行：不仅 correctness 失败，资源也显著恶化。下一步保留两个可靠的 64-row producer，只移动第二段相对 Gate1 的位置；若仍失败则触发 stall re-profile。
