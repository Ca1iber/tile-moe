# v041 scripts

- `v041_pair_benchmark.py`: exact AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding, and OJ import gates.
- `v041_run_paired_mctracer.py`: paired Step1/Step2 trace capture; legacy labels are documented.
- `v041_run_mcprofiler_step1.sh`: compact Step1 mcProfiler replay.
- `v041_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA, and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v041_finalize_iteration.py`: create the five-root package.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict archive gates.
