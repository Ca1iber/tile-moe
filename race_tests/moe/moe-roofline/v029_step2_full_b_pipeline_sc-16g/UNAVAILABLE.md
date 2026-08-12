# Roofline unavailable

- Iteration：`v029_step2_full_b_pipeline_sc-16g`
- 状态：未采集，不是工具生成失败。
- 原因：本版在 correctness、10 轮端到端配对和三对 mcTracer 后已明确退化；当时只采集了 targeted mcProfiler，没有运行 `RoofLine` metric set。targeted 结果不包含合法的 `case_I/case_flops/case_bandwidth`，因此不能合成或借用其他版本的 Roofline 图。
- 影响：本版不新增 memory-bound / compute-bound 分类；现有结论只依赖 clean benchmark、mcTracer、targeted counters 和 codegen/resource。
- 补采命令：在 sc-16g 空闲时，从 `restart-scripts/v029_step2_full_b_pipeline_sc-16g/` 执行：

```bash
bash run_mcprofiler_source_v029.sh 2 2 v029o \
  /root/moe_runs/v029o_overlap_reverse_producer_order.py \
  roofline v029roof
```

- 下一步：若以后重新启用 full-B 路线，先补采 parent/candidate 同窗口 Roofline，再用 `render_roofline.py` 生成 native 与 re-normalized 图。
