# v072 Step1 long-expert iso-area rolling-A 报告（sc-16g）

## Verdict

`rejected`。正确性/合规通过；相对 v59 端到端中位回退 `+7.499%`。rolling-A 相对 v071 single-A 有真实收益，但不足以救回 BM256×BN64 拆分 Step1。

## Mechanism and resources

保持 v071 长核 `BM256×BN64/4 waves`，循环前加载首个A tile，每个ki完成MMA后将下一K tile同一32-column stripe滚入已消费位置。短核与Step2不变，无async/foreign source。

long kernel 为 `210 MT / 52 ST registers`、16 KiB dynamic shared、private total 0；相对v071的222 MT进一步下降。

## Paired benchmark

协议：Case1，3轮AB/BA，warmup=3，repeat=100，device event。

| Round | v59 ms | v072 ms | Change |
|---:|---:|---:|---:|
|1|2.780984|2.989005|+7.480%|
|2|2.778117|2.986440|+7.499%|
|3|2.779021|2.987720|+7.510%|

中位 `+7.499%`，population stddev `0.0123%`。

## mcTracer

v59 Step1 `1.744640 ms`；v072 Step1 `1.956352 ms`，回退 `12.135%`。v072 short/long分别为 `0.728448/1.227904 ms`。相对v071 long `1.295488 ms`，rolling-A缩短 `67.584 us`（`5.22%`），证明有效重叠存在；但仍无法抵消拆核和fragment形状成本。

## Decision

关闭 BM256×BN64 路径。不推进 dorm kernel/submission。
