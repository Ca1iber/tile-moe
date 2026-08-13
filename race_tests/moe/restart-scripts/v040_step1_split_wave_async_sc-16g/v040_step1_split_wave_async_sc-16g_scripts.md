# v040 scripts

- `v040_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding and OJ import gates.
- `v040_run_paired_mctracer.py`: paired Step1/Step2 trace capture; legacy labels are documented in the report.
- `v040_run_mcprofiler_step1.sh`: compact Step1 mcProfiler replay.
- `v040_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ benchmark adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v040_finalize_iteration.py`: create the five-root package.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict archive gates.
