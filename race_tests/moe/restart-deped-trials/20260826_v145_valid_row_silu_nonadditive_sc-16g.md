# v145 叠加 valid-row SiLU 探针（放弃）

## 结论

- 可靠基线：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 对照候选：locally-qualified、external-OJ-pending v145，SHA-256 `07fcf188586622475360c1b2f3cbe39b6694d3dd2b108945ae9c57738b8eaa09`。
- Probe：`probe_v110_fastmath_bounds_valid_silu.py`，SHA-256 `6f5e57df70cbadfe81174514b7f58ecb18b0fbf0947b1a692747bde3b7ce7f03`。
- 修改：从 exact v110 重新组合 v145 的 fast-math/Step2 range proof 与 v137 的 Step1 valid-row SiLU，把 `exp2` 激活计算移入既有 `i < actual_rows` 分支。
- OJ source gate 与 Case1 正确性通过。
- 相对 exact v110 的四轮 Case1 AB/BA 中位变化为 `-2.078570%`；但 v145 已有 `-1.957227%` 的五轮长测信号。
- 最关键的 v145→Probe 直接四轮 AB/BA 中位变化只有 `-0.075828%`，且样本跨零，属于噪声，远低于 `1.2%` direct-parent promotion 门槛。
- 不编号、不创建 submission；v145 保持唯一待 OJ 候选，可靠 SOTA 仍为 v110。

## 配对结果

协议均为同进程 AB/BA、`warmup=5`、`repeat=100`、四轮。

| Parent | Candidate | Case1 paired changes | Median | Mean | Population stddev |
|---|---|---|---:|---:|---:|
| exact v110 | combined probe | `-1.999589% / -2.044314% / -2.134536% / -2.112826%` | `-2.078570%` | `-2.072816%` | `0.053816%` |
| v145 | combined probe | `+0.082239% / -0.141903% / -0.130562% / -0.021093%` | `-0.075828%` | `-0.052830%` | `0.091142%` |

原始 JSON：

- `/root/moe_runs/probe_v110_fastmath_bounds_valid_silu_case1_screen.json`
- `/root/moe_runs/probe_v145_vs_valid_silu_case1_direct.json`

临时源码：`/root/moe_runs/probe_v110_fastmath_bounds_valid_silu.py`。

## 因果判断

v137 单独从 v110 出发时，跳过 padding 行的 SiLU 曾稳定改善约 `0.5256%`；本次直接配对证明该收益在启用 fast-math 后基本不再叠加。合理解释是两项优化作用于同一个 Step1 epilogue/SFU 路径：fast-math 已缩短活跃 wave 的 `exp2`/倒数序列，而 valid-row 分支只能减少少量尾部 lane 工作，额外分支控制抵消了大部分收益。

该写法还重新触发 TileLang `verify_parallel_loop` 对 consumer-native `up_logits` 写入的静态 data-race 警告。现有正确性通过不能把警告当作证明；既然性能增量也处于噪声区间，没有理由承担额外验证风险。关闭此组合方向，不继续叠加或编号。
