# v204 hypothesis

Case1 的长 expert 最多有 192 个有效 token。v203 仍把这类 expert 的 Step2 映射成两组 M192xN128 半片，每个长 expert 需要 16 个 CTA 才能覆盖 hidden=2048。

v204 为 Case1 长 expert 单独使用 M192xN160，并对最后一个 N panel 做边界保护。这样每个长 expert 的 CTA 数从 16 降到 `ceil(2048/160)=13`；8 个短 expert 仍使用原有的 8 CTA 路径。Case1 Step2 总 CTA 因而从 192 降到 168，减少 12.5%，同时完整保留 v203 之外的 Case2/3 路径。

预期收益来自减少长 expert 的 CTA 数、重复装载和调度开销，而不是异步拷贝、缓存、内建函数或放宽正确性。
