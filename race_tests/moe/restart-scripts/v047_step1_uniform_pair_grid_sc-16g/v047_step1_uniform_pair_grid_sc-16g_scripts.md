# v047 scripts

- `v047_pair_benchmark.py`: five-pair W20/R100 clean rejection gate against exact v045.
- `v047_capture_codegen.py` and `extract_metax_isa.sh`: branchless uniform-pair lowering evidence.
- OJ/reference validators confirm the rejected candidate remains legal and correct.
- `v047_finalize_iteration.py`: copies only final evidence from system `/tmp` into the four matching rejected-version directories.
