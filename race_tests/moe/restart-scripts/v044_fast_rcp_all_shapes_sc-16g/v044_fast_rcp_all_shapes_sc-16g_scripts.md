# v044 scripts

- `v044_pair_benchmark.py`: exact candidate-vs-parent AB/BA timing and parent-equality check. Used with `--pairs 7 --warmup 20 --repeat 100` for Case2 and Case3.
- `validate_submission.py` and `validate_oj_submission.py`: three-shape FP32 reference and OJ import gates.
- `oj_submission_benchmark.py` and `official_submission_benchmark.py`: standard project-native absolute OJ timing and official functional adapter.
- `v044_capture_codegen.py` and `extract_metax_isa.sh`: generated MXMACA C++, compiler resources, and final MetaX ISA.
- `v044_run_paired_mctracer.py`: three-pair Case2 stage capture. It launches mcTracer from `/` because mcTracer 3.7.1 prepends cwd to `--odname`; all transient traces remain under system `/tmp`.
- `v044_finalize_iteration.py`: copies final evidence from `/tmp/tile-moe-scratch-20260814/v044-work` into the four matching version directories. It refuses to overwrite existing archives.
