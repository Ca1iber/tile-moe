# v056 scripts

- `v056_pair_benchmark.py` supplies alternating AB/BA correctness and W20/R100 timing gates.
- Validation and OJ/official benchmark scripts cover exact numerical, import, standalone timing, and functional gates.
- `v056_run_paired_mctracer_used.py` plus `profile_submission.py` capture five paired stage timings; historical internal v049/v050 labels are normalized in the archive.
- `v056_run_mcprofiler_used.sh` and `v056_summarize_mcprofiler.py` capture four-batch counters and enforce achieved-wave matching.
- `v056_capture_codegen.py`, `extract_metax_isa.sh`, and `v056_analyze_isa.py` preserve generated C++, resources, final ISA, and opcode deltas.
- `render_roofline.py` renders the fixed declared-schedule Roofline.
- `v056_finalize_iteration.py` creates and hashes the matching five-directory archive.

All in-flight files live under `/tmp/tile-moe-scratch-20260814/v056-work`; the inherited mcProfiler runner stores its raw replay tree under `/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3`.
