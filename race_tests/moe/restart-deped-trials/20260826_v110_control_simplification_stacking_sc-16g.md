# 2026-08-26 v110 控制流简化叠加实验

## 结论

- 可靠基线：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 两个探针均通过 OJ source gate 与 Case1 严格正确性，但相对 exact v110 的直接收益都低于用户规定的 `1.2%` 门槛。
- Step2 range proof 单独只有 `-0.524046%` 中位变化；把它与 valid-row SiLU、unpredicated native workspace 写入一起叠加后也只有 `-0.737504%`。
- 这些控制流优化彼此明显重叠，不能线性相加。方向关闭，不编号、不创建 submission、不移动 v110 SOTA。

## 配对结果

| Probe | 协议 | Case1 paired changes | Median | Mean | Population stddev |
|---|---|---|---:|---:|---:|
| Step2 bounds-only | 4 轮 AB/BA，warmup 5，repeat 100 | `-0.694082% / -0.501781% / -0.478769% / -0.546311%` | `-0.524046%` | `-0.555236%` | `0.083759%` |
| control triple | 5 轮 AB/BA，warmup 5，repeat 100 | `-0.737504% / -0.777994% / -0.902643% / -0.624220% / -0.604247%` | `-0.737504%` | `-0.729322%` | `0.108781%` |

原始记录：

- `/root/moe_runs/probe_v110_step2_bounds_only_case1.json`
- `/root/moe_runs/probe_v110_case1_control_triple_case1.json`

## 改动消融

Step2 bounds-only 只对 expert-grouped Step2 添加 `bx/by`、`routed_base` 和 routed-weight 合法范围证明，并复用 `routed_base` 地址表达式；它不继承 v129/v145 已被外部 OJ 否决的全局 fast-math。

control triple 在上述改动上再叠加两项 Case1 Step1 控制优化：只对有效行计算 SiLU，以及对 consumer-native `up_logits` workspace 使用无谓词写入。它与既有证据的关系如下：

- v133 的“unpredicated native workspace + Step2 expert-grid range proof”中位收益为 `0.793638%`，低于门槛。
- v137 的 valid-row SiLU 中位收益为 `0.5067%`，低于门槛。
- 本次三项叠加仍只有 `0.737504%`，甚至没有超过 v133，说明它们主要删减同一批 safe-memory/尾部控制开销；额外分支和编译器重排抵消了理论叠加值。

## 复用约束

- 不再单独重试这些控制流简化，也不要把历史百分比相加宣称候选。
- 只有未来结构性改动改变 Step1/Step2 的 schedule、资源占用或 workspace 布局时，才值得把其中一项作为附加消融重新测量。
- 临时源码保留为 `/root/moe_runs/probe_v110_step2_bounds_only.py` 与 `/root/moe_runs/probe_v110_case1_control_triple.py`；归档副本与本报告同目录。
