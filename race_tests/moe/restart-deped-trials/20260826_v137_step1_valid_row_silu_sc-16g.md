# 2026-08-26 v137 Step1 有效行 SiLU 谓词实验

## 结论

拒绝，不移动 v110 SOTA。v137 把 Step1 的 SiLU/`exp2` 计算放进已有的 `i < actual_rows` 分支，避免对 padding 行做无效激活。Case1 正确性与 OJ 源码/生成代码合规均通过，四轮 AB/BA 也稳定加速，但平均仅 **0.526%**，低于用户规定的 **1.2%** 候选门槛。

## 关键证据

- 官方 block 行数按 100/128/56 等频出现；该改动消除了 Step1 尾声 26.04% 的无效行激活。
- 四轮 candidate change：`-0.5191% / -0.4943% / -0.4462% / -0.6428%`。
- 均值 `-0.5256%`，中位数 `-0.5067%`，population stddev `0.0725%`；方向真实但幅度不足。
- Step1 资源仍为 `226 MT / 42 ST / 2 waves/PEU`，说明没有跨过 occupancy 门槛。
- 因 Case1 已证伪 1.2% 门槛，按流程不扩测 Cases2/3、不跑 mcProfiler、不创建 submission。

## 关闭的方向

不要再把“只对 Step1 padding 行谓词化 SiLU/写回”单独立为候选。它可以作为未来已过门槛候选的附加组合项，但必须重新 AB/BA，不能把本次 0.53% 线性相加或宣称为 SOTA 收益。

## 证据位置

- 源码、patch、假设卡：`restart-experiments/v137_step1_valid_row_silu_sc-16g/`
- AB/BA、资源与结论：`restart-rep/v137_step1_valid_row_silu_sc-16g/`
- 复现实验脚本：`restart-scripts/v137_step1_valid_row_silu_sc-16g/`
- Roofline 跳过原因：`moe-roofline/v137_step1_valid_row_silu_sc-16g/`
- 原始临时证据：`/root/moe_runs/v137_step1_valid_row_silu/`
- SOTA：仍为 `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`

