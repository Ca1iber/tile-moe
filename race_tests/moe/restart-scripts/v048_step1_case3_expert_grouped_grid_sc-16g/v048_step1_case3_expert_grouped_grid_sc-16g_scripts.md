# v048 scripts

- `v048_pair_benchmark.py`: exact v045-v048 alternating AB/BA parent-equality and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, absolute OJ, and official functional gates.
- `profile_submission.py` and `v048_run_paired_mctracer.py`: stage-local Case3 timing capture under system `/tmp`.
- `v048_run_mcprofiler.sh` and `v048_summarize_mcprofiler.py`: four-batch Step1 replay and period0 wave-match validation.
- `v048_capture_codegen.py` and `extract_metax_isa.sh`: exact generated MXMACA C++, resources, and MetaX ISA.
- `render_roofline.py`: fixed-declared-AI Case3 Step1 Roofline.
- `v048_finalize_iteration.py`: creates five matching archive directories and refuses overwrite.

All scratch output remains under `/tmp/tile-moe-scratch-20260814/v048-work`; no repository-local temp directories are created.
