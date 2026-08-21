# v073 Case1 original 4-wave Step1 rolling-A（sc-16g）

## Observed evidence

- v59 Case1 的单 Step1 为 `64×24` 个 4-wave CTA，约1.74 ms、222 registers/thread。
- v071/v072 在不同长 tile 上证明：single-A 可消除private压力，guarded rolling-A又能把长核从1.295 ms降到1.228 ms，并把寄存器从222降到210。
- v072 的失败主要来自拆分 Step1 与不同 BM256×BN64 fragment形状，而不是 rolling-A 本身。
- 现有失败报告只验证了 rolling-A 在6/7/8-wave及BM256×BN64长核上，没有独立验证原始BM128×BN128/4-wave单核。

## Verified bottleneck

v59 Step1 的双 A fragment 与复杂half-row预取保持较好延迟隐藏，但资源为222 registers/thread；已有ISA/profile显示operand-feed与VLS/VL1等待仍有空间。

## Current hypothesis

在不改变v59 grid、CTA、权重流量和kernel数量的情况下，把Case1 Step1改为单A shared fragment的same-stripe rolling overwrite，可保留跨K tile的局部重叠，同时降低A live state和控制路径。

## Proposed mechanism

- Case1仍使用原始 `BM128×BN128 / 256 threads / 4 waves / grid 64×24`。
- 只关闭Case1原双A input-prefetch分支；循环前加载K=0 A。
- 每个ki完成Gate/Up MMA后，将下一K tile的同一32-column stripe写入已消费位置。
- 保留actual-row A load与wave-level MMA predicate，以及最后K tile边界保护。
- Case2/3、Step2、数学和workspace契约不变；无async/foreign/injected source。

## Predicted metric changes

- full-padding correctness与OJ generated-code检查通过。
- Step1 registers低于222，private保持0，grid/threads/shared不变。
- Case1 Step1时间低于v59；端到端改善至少1.2%才晋级。

## Falsifying result

正确性/合规失败、资源恶化，或3轮AB/BA端到端改善不足1.2%即拒绝；若有方向性收益但不足门槛，只记录机制，不生成submission。
