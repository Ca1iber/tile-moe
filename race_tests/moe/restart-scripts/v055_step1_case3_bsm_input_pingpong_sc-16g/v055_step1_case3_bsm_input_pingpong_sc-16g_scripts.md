# v055 scripts

- `v055_pair_benchmark.py`: alternating AB/BA correctness plus W20/R100 timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: exact numerical, import, OJ-shape timing, and official functional gates.
- `v055_run_paired_mctracer_used.py` and `profile_submission.py`: exact five-pair stage-timing capture. The runner retains historical internal v049/v050 labels; source paths and the normalized archive map them to v052/v055.
- `v055_run_mcprofiler_used.sh` and `v055_summarize_mcprofiler.py`: exact four-batch counter replay and wave-match comparison. The used runner retains its historical v052 scratch root; always pass absolute submission paths.
- `v055_capture_codegen.py`, `extract_metax_isa.sh`, and `v055_analyze_isa.py`: generated C++, resource, final MetaX ISA, and opcode evidence.
- `render_roofline.py`: fixed declared-schedule AI Roofline rendering.
- `v055_finalize_iteration.py`: creates the matching five-directory archive.

All in-flight outputs are under `/tmp/tile-moe-scratch-20260814/v055-work`, except the exact mcProfiler replay trees, which the used runner stores under `/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3`.
