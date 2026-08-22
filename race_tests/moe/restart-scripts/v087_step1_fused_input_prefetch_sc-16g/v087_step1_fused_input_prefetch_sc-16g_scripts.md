# v087 scripts

- `run_v59_paired.py`：同进程 AB/BA device-event benchmark，并在计时前执行 reference correctness。
- `run_v59_fullcheck.py`：把完整输出预填为 7，检查 valid 与 padding 行均被正确写回。
- `capture_codegen.py`：捕获三个官方 shape 的 generated-device C++、compiler log 与资源摘要。
- `extract_metax_isa.sh` / `analyze_metax_isa.py`：生成最终 xcore1000 ISA并检查寄存器、wave、async与private memory。
- `validate_oj_submission.py`：校验 OJ import/foreign/async 限制及三份 generated-device source。
- `profile_submission.py` / `run_paired_mctracer_tilemajor.py`：独立 JIT 后抓取 prepack、Step1、Step2 和 launch gap。
- `validate_iteration.py` / `summarize_iteration.py`：检查四目录证据结构并生成 artifact inventory。

Candidate：`restart-experiments/v087_step1_fused_input_prefetch_sc-16g/v087_step1_fused_input_prefetch_sc-16g_custom_fusedmoe.py`，SHA-256 `f60fb343837c5c69bb551f69191fc551bff57374a1d11877b1d9c74c730a4662`。
