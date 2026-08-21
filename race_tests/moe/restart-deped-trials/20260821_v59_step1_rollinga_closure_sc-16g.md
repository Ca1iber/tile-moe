# v59 Step1 rolling-A 路线关闭（sc-16g）

本检查点封存两个相关但独立的验证：

- v072：在BM256×BN64长核上，guarded rolling-A相对single-A将长核 `1.295488→1.227904 ms`（`-5.22%`），寄存器`222→210`，证明有效重叠真实存在；但端到端仍相对v59回退`7.499%`。
- v073：不拆kernel，直接把rolling-A用于v59原BM128×BN128/4-wave Step1；正确性通过，但寄存器`222→238`，端到端回退`2.560%`。

结论：同步rolling-A能改善缺乏重叠的single-A，但不能替代v59已经高度交错的双A调度；也不能弥补大/异形tile的CTA内部成本。不要继续堆rolling距离、peeling或同stripe变体。完整证据位于`restart-rep/v072...`与`restart-rep/v073...`。
