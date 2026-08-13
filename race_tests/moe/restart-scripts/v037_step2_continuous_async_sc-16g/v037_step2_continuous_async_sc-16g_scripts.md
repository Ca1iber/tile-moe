# v037 scripts

- `v037_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py`: three OJ-shape reference and padding correctness.
- `validate_oj_submission.py`: OJ import allowlist gate.
- `v037_run_paired_mctracer.py`: paired Step1/Step2 trace capture.
- `v037_run_mcprofiler_submission.sh`: compact targeted mcProfiler replay.
- `v037_capture_codegen.py`: device C++ and resource capture.
- `extract_metax_isa.sh`: final xcore1000 ISA and `.text` extraction.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: project and OJ benchmark adapters.
- `render_roofline.py`: common-work schedule-aware Roofline rendering.
- `v037_finalize_iteration.py`: creates the five-root archive from frozen evidence.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict package gates.
