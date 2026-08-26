# 2026-08-26 v110 SiLU 严格倒数替代实验

## 结论

- 可靠基线：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 在不启用全局 fast-math 的前提下，单纯改变精确 SiLU 的倒数写法没有收益：直接除法处于噪声区间，正分母 `rsqrt(d*d)` 反而回退。
- 这说明瓶颈不是 Python/TileLang 表达式中 `1 / d` 的表面写法；后端已经把精确路径降低成代价相近的 exp/div 序列。继续微调同一精确表达式没有价值。
- 两个探针均不编号、不 profile、不创建 submission。

## 配对结果

协议均为 Case1 同进程 4 轮 AB/BA，`warmup=5`、`repeat=100`；OJ source gate 与严格正确性通过。

| Probe | 改写 | Paired changes | Median | Mean | Verdict |
|---|---|---|---:|---:|---|
| direct division | `x * (1 / d)` → `x / d` | `-0.212518% / -0.146800% / +0.188075% / -0.065191%` | `-0.105996%` | `-0.059109%` | 跨零，噪声 |
| rsqrt reciprocal | `1 / d` → `rsqrt(d*d)`，其中 `d>0` | `+0.233770% / +0.354163% / +0.462469% / +0.207794%` | `+0.293967%` | `+0.314549%` | 稳定回退 |

原始记录：

- `/root/moe_runs/probe_v110_silu_direct_div_case1.json`
- `/root/moe_runs/probe_v110_silu_rsqrt_recip_case1.json`

## 与其他数学路径的关系

- v129 在 exact v110 上启用全局 `TL_ENABLE_FAST_MATH`，本地有收益但已经由用户确认 external OJ `WA`；因此不能把 fast-math 重新包装成正常候选。
- 本轮随后转向显式、可审计的 Case1 sigmoid 多项式。该方向不是“换一种倒数写法”，而是从静态指令层面移除精确 exp/div 链；最终入选实现单独归档为 v146，并保持 Case2/3 精确 v110 路径。
- degree-11 的分段尾部版本虽通过严格验证，但生成更多标量 store/branch，Case1 五轮中位仅约 `-2.2335%`；改为无分支 clamp 后约 `-2.3944%`，因此前者仅作为被替代实现。
- 另一组 minimax 系数虽然把区间内理论逼近误差压低，但在真实 MoE 输出上的 `max_abs` 增至约 `0.006835`，Case1 screen 中位收益也降至约 `-2.054%`；不采用。

## 复用约束

不要继续尝试 `x/d`、`rsqrt(d*d)`、一次 Newton 倒数或全局 fast-math 的简单变体。若要继续优化 SiLU，应从显式近似的误差分布、尾部策略、指令调度或只针对官方 shape 的 compile-time specialization 入手，并继续以外部 OJ AC 为最终正确性门禁。
