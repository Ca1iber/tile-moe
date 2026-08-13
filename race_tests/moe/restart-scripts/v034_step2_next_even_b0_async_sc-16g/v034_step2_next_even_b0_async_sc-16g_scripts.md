# v034 scripts

- `v034_pair_benchmark.py`: exact submission 的 OJ-shape AB/BA 配对 benchmark。
- `validate_submission.py`: 三 case reference 数值与 padding 正确性。
- `validate_oj_submission.py`: OJ import allowlist gate。
- `oj_submission_benchmark.py`: exact OJ benchmark 与长 workload。
- `official_submission_benchmark.py`: 仓库官方 benchmark adapter。
- `profile_submission.py`: mcTracer/mcProfiler 单次 profile 入口。
- `v034_run_paired_mctracer.py`: v033/v034 三轮 AB/BA Step1/Step2 trace。
- `v034_run_mcprofiler_submission.sh`: Step2 targeted 与 native Roofline replay。
- `v034_capture_submission_codegen.py`: 生成 device C++ 与 resource usage。
- `extract_metax_isa.sh`: 从最终 xcore1000 ELF 提取 MetaX ISA。
- `collect_mxsmi.sh`: workload 同期只读 HBM/AP 采样。
- `v034_k_tile_isolation.py`: odd/even K-tile 正确性隔离。
- `v034_moe_error_map.py`: B0/B1 输出空间错误图。
- `render_roofline.py`: 显式 compute/bandwidth roof 的 schedule-aware 图。
- `v034_finalize_iteration.py`: 从冻结原始证据生成本归档。
- `summarize_iteration.py` / `validate_iteration.py`: artifact inventory 与 strict 结构校验。

所有接受数据对应 byte-identical `restart-submission/v034_step2_next_even_b0_async_sc-16g/submission.py`（`55ddb8a06f4469a17bc64270a1836a82d5b8b769d0dfe1ee463802c3241ae0a6`）。
