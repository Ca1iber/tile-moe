# v143 脚本清单

- `run_abba.py`：三种官方 shape 的 v110/v143 同进程 5x50 AB/BA 与完整正确性检查。
- `run_paired_mctracer.py`：Case3 三对 AB/BA mcTracer，按 prepack/Step1/Step2/GPU span 汇总。
- `run_mcprofiler.sh`：mcProfiler perfcount 采集；本版本的 Step2 selector 结果不可作阶段归因，见报告限制说明。
- `summarize_isa.py`：按 kernel 切分并比较 v110/v143 Case3 后端汇编静态指令。
- `capture_codegen.py`、`validate_oj_submission.py`、`profile_submission.py`：沿用项目标准脚本并归档到同目录。
