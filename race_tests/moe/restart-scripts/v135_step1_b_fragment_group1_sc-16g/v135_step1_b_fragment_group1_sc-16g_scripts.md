# v135_step1_b_fragment_group1_sc-16g 脚本说明

- `run_v110_fullcheck.py`：从 exact v110 与 candidate 各自独立模块运行三例完整有效行 correctness，并做同进程 AB/BA device-event benchmark。
- `capture_codegen.py`：为每个官方 case 捕获 generated device C++、编译日志和 MT/ST/waves 资源报告。
- `validate_oj_submission.py`：扫描 candidate source 与三例 generated device source，确认 OJ import allowlist、无 async copy 和无 foreign injection。
- mcProfiler 命令：从 `/opt/mcProfiler-ubuntu18.04` 对 exact v110 Case1 Step1 采集最小指标集；原始输出归档在本版本 `profiler/v110_current_case1_step1/`。

本版本未运行 candidate mcProfiler、mcTracer、official benchmark 或 external OJ：三例本地严格 screen 均未达到 1.2% 门槛。
