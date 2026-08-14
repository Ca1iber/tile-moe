# v049 scripts

- `v049_pair_benchmark.py`: alternating AB/BA correctness and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, OJ timing, and official functional gates.
- `profile_submission.py` and `v049_run_paired_mctracer.py`: paired stage-local timing capture.
- `v049_run_mcprofiler.sh` and `v049_summarize_mcprofiler.py`: four-batch replay and exact wave-match comparison.
- `v049_capture_codegen.py` and `extract_metax_isa.sh`: generated C++, resource, and MetaX ISA evidence.
- `render_roofline.py`: fixed-declared-AI Case3 Step2 Roofline renderer.
- `v049_finalize_iteration.py`: creates the five matching archive directories and refuses overwrite.

All in-flight output stays under `/tmp/tile-moe-scratch-20260814/v049-work`; no repository-local temp directories are created.
