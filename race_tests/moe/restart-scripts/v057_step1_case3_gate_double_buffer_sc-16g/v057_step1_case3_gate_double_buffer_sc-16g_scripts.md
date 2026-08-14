# v057 scripts

- `v057_pair_benchmark.py`: alternating correctness and W20/R100 performance gate.
- `validate_submission.py` and `validate_oj_submission.py`: changed-shape numerical and import gates.
- `v057_run_paired_mctracer_used.py` plus `profile_submission.py`: paired stage/resource capture; historical tags are normalized in the archive.
- `v057_capture_codegen.py`, `extract_metax_isa.sh`, and `v057_analyze_isa.py`: generated C++, resource, final ISA, and opcode evidence.
- `render_roofline.py`: diagnostic fixed-work Roofline rendering.
- `validate_iteration.py` and `v057_finalize_iteration.py`: strict structure and hashed four-directory archive.

All in-flight outputs are under `/tmp/tile-moe-scratch-20260814/v057-work`.
