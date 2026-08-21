# v083 scripts

- `capture_codegen.py`：采集三 case 生成 C++ 与编译资源。
- `validate_oj_submission.py`：检查 OJ import、TileLang-only surface 与生成代码禁用片段。
- `run_v59_fullcheck.py`：全 padded-output correctness 与 AB/BA device-event timing。
- `profile_submission.py`：单次 mcTracer/mcProfiler 目标调用。
- `run_paired_mctracer.py`：三组 AB/BA Step1/Step2 trace 归因。
- `extract_metax_isa.sh`：从 Case3 generated C++ 提取最终 xcore1000 `.metax.s`。
- `analyze_metax_isa.py`：统计函数级资源、指令、private traffic 与 spill annotation。
