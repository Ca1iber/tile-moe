# v038 scripts

- `v038_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding and OJ import gates.
- `v038_run_paired_mctracer.py`: paired Step1/Step2 trace capture (legacy JSON labels documented in report).
- `v038_run_mcprofiler_submission.sh`: compact targeted mcProfiler replay.
- `v038_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ benchmark adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v038_finalize_iteration.py`: create this five-root package.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict archive gates.
