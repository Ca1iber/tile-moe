# v108 scripts

- `run_v59_fullcheck.py`: 三 Case 完整 correctness 与 device-event AB/BA。
- `capture_codegen.py`: 捕获生成 C++ 与寄存器/occupancy 信息。
- `validate_oj_submission.py`: OJ AST/source 和生成代码约束检查。
- `profile_submission.py` + `run_paired_mctracer.py`: paired trace 原始采集。
- `summarize_three_kernel_trace.py`: 正确区分 prepack、Step1、Step2。
- `summarize_iteration.py` / `validate_iteration.py`: 生成 artifact inventory 并严格校验归档。
