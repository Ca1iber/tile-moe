# v036 scripts

- `v036_pair_benchmark.py`: exact submission Case1 AB/BA benchmark.
- `validate_submission.py`: three OJ-shape reference and padding correctness.
- `validate_oj_submission.py`: OJ import allowlist gate.
- `v036_run_paired_mctracer.py`: paired Step1/Step2 trace capture.
- `v036_run_mcprofiler_submission.sh`: broad targeted replay driver.
- `v036_run_mcprofiler_metrics.sh`: reduced metric-set replay used to audit profiler consistency.
- `v036_capture_codegen.py`: three-case device C++ and resource capture.
- `extract_metax_isa.sh`: final xcore1000 MetaX ISA extraction.
- `collect_mxsmi.sh`: workload-concurrent HBM/AP sampling; requires explicit counter command.
- `v035_stale_weight_diagnosis.py`: odd-B0 K-tile and output-band correlation diagnosis.
- `render_roofline.py`: common-work schedule-aware Roofline rendering.
- `v036_finalize_iteration.py`: creates this five-root package from frozen evidence.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict package gates.
