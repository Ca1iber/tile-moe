# v028 Step2 half-B pipeline Roofline

本目录只保存 `v028_step2_half_b_pipeline_sc-16g` 这一版本的 Roofline 图，父版与候选分开归档，避免图片散落：

- `native_parent_v027/`：v027 Case2 Step2 原生 mcProfiler Roofline 图及 `report.txt.json`。
- `native_candidate_v028l/`：最终 v028l Case2 Step2 原生 mcProfiler Roofline 图及 `report.txt.json`。

工具口径下，v027 / v028l 的 `case_I` 分别为 769.800 / 740.426 FLOP/byte，均高于 `MAX_I=260`，因此均位于 compute-side。v028l 的 `case_flops` 从 526.900 提升到 541.333，`case_bandwidth` 从 684.463 提升到 731.110 GB/s。

本优化不改变数学 FLOPs；native replay 的 counted bytes 与时间会随指令路径变化。接受决策以同进程配对 benchmark、mcTracer Step2 与 targeted stall counter 为主，Roofline 用于说明 bound 分类和 throughput 方向，不单独裁决约 2% 的差异。
