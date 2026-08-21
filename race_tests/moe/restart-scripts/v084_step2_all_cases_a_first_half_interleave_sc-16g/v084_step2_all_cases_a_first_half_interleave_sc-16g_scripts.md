# v084 scripts

本版本复用 v083 已归档的固定脚本：

- `run_v59_fullcheck.py`：同进程 AB/BA device-event benchmark 与完整 padded correctness。
- `profile_submission.py`、`run_paired_mctracer.py`：配对 mcTracer 阶段归因。
- `capture_codegen.py`：保存三个官方 shape 的 generated C++ 与资源。
- `validate_oj_submission.py`：源码与 generated-code 合规门禁。
- `extract_metax_isa.sh`、`analyze_metax_isa.py`：最终 xcore1000 ISA 提取和静态分析。

所有命令均以 `/root/tilelang-metax` 为 repo、`MACA_PATH=/opt/maca`、`PYTHONPATH=/root/tilelang-metax` 运行。
