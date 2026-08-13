# v032 scripts

- `v032_pair_benchmark.py`: exact AB/BA OJ paired benchmark.
- `validate_submission.py`: three-case numerical and padding correctness.
- `validate_oj_submission.py`: OJ root-import allowlist validation.
- `oj_submission_benchmark.py`: exact OJ W/R benchmark.
- `official_submission_benchmark.py`: adapter for repository official benchmark.
- `profile_submission.py`: one selected case for mcTracer/mcProfiler.
- `v032_run_paired_mctracer.py`: three-pair Case1 Step1/Step2 trace capture.
- `v032_capture_submission_codegen.py`: generated C++ and resource report capture.
- `v032_run_mcprofiler_submission.sh`: targeted and RoofLine Case1 Step2 profiler replay.
- `extract_metax_isa.sh`: final xcore1000 ISA extraction from generated C++.
- `collect_mxsmi.sh`: workload-synchronized mx-smi sampling.
- `v032_summarize_profile.py`: concise mcProfiler/mcTracer/mx-smi/ISA JSON summaries.
- `render_roofline.py`: portable SVG schedule-aware Roofline renderer.
- `summarize_iteration.py`: SHA256 artifact inventory generation.
- `validate_iteration.py`: strict five-directory evidence validation.

All benchmark/profile scripts run the exact archived `restart-submission/v032_step2_case1_hybrid_half_b_sc-16g/submission.py` when used for acceptance evidence.
