# v045 scripts

- `v045_pair_benchmark.py`: exact v043-v045 alternating AB/BA parent-equality and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, absolute OJ, and official functional gates.
- `profile_submission.py` and `v045_run_paired_mctracer.py`: stage-local Case1 timing capture under system `/tmp`.
- `v045_run_mcprofiler.sh` and `v045_summarize_mcprofiler.py`: four-batch Step1 memory/cache replay plus wave-count reliability check.
- `v045_capture_codegen.py` and `extract_metax_isa.sh`: exact generated MXMACA C++, resources, and MetaX ISA.
- `render_roofline.py`: fixed-declared-AI Step1 schedule Roofline.
- `v045_finalize_iteration.py`: creates the five matching archive directories and refuses overwrite.

All scratch output remains under `/tmp/tile-moe-scratch-20260814/v045-work`; no repository-local temp directories are created.
