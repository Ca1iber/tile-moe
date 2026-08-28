# v150 long-prepack producer-wave 对照（sc-16g）

性能父版本：v150 dynamic expert-rank，SHA-256
`99f88bf0215ff092676ac1b95cf77cb9eabe81ad5b3701ee226636d3b2c4c9b1`。

## 256-thread 对照

源码 SHA-256：
`cc73393a750068ba0865418cc227d6e9944a7e6489288ee4dbf458f638053235`。

该版本已经采用 24 KiB 两阶段 shared bridge，并让一个 CTA 处理两个相邻
128-column panel，但仍使用 256 threads / 4 producer waves。Case3 单轮
warmup=2/repeat=10 严格正确，变化只有 `-0.1399%`，低于 1.2% 晋级线。

随后只把 producer 扩到 512 threads / 8 waves，形成晋级候选 v151；精确
5x20 中位提升达到 `-1.4867%`。因此本组对照表明收益关键不是单独缩 shared
或合并 panel，而是**合并 panel 后仍维持足够的总 producer-wave 数**。不要再
重复 256-thread 双 panel 变体。
