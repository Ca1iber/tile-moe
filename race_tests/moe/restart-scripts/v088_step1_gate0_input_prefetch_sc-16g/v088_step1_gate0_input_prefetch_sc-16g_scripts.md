# v088 scripts

- `run_v59_paired.py`：同进程 AB/BA device-event benchmark，并在计时前执行 reference correctness。
- `run_v59_fullcheck.py`：完整 valid 与 padding 输出检查。
- `capture_codegen.py`：捕获三个官方 shape 的 generated-device C++、compiler log 与资源摘要。
- `extract_metax_isa.sh` / `analyze_metax_isa.py`：生成并分析 xcore1000 MetaX ISA、资源、spill 和指令结构。
- `profile_submission.py` / `run_paired_mctracer_tilemajor.py`：抓取 prepack、Step1、Step2 与 launch gap 的三组 AB/BA trace。
- `validate_oj_submission.py`：校验 OJ import、foreign-code、async-copy 以及三个 generated-device source。

Candidate：`restart-experiments/v088_step1_gate0_input_prefetch_sc-16g/candidate_submission.py`，SHA-256 `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`。

