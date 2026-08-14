# v052 scripts

- `v052_pair_benchmark.py`: alternating AB/BA correctness and W20/R100 timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: exact numerical, import, OJ-shape timing, and official functional gates.
- `v052_run_paired_mctracer_used.py`: exact runner used for the five stage-timing pairs. Its internal v049/v050 tags are historical; archived source paths and the normalized summary map them to v050/v052.
- `v052_run_mcprofiler.sh` and `v052_summarize_mcprofiler.py`: four-batch counter replay and value-normalized wave-match comparison. Always pass absolute submission paths because mcProfiler changes cwd.
- `v052_capture_codegen.py`, `extract_metax_isa.sh`, and `v052_analyze_isa.py`: generated C++, resource, final MetaX ISA, and Step1 opcode evidence.
- `render_roofline.py`: fixed declared-schedule AI Roofline rendering.
- `v052_finalize_iteration.py`: creates the matching evidence and submission archive.

All in-flight output is rooted at `/tmp/tile-moe-scratch-20260814/v052-work`.
