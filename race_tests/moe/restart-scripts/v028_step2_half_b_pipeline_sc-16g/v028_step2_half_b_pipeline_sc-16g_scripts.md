# v028_step2_half_b_pipeline_sc-16g 脚本说明

- `capture_codegen_source.py`：从显式 kernel source 编译一个 OJ case，保存生成 C++ 和 resource usage。
- `extract_metax_isa.sh`：将生成 C++ 编译为 xcore1000 device ELF，并导出最终 MetaX ISA、资源日志与 SHA-256。
- `profile_one_case_source.py`：从显式 source 构造 OJ case，在 profiler start/stop 区间内执行一次两步 kernel。
- `run_mcprofiler_source.sh`：按 targeted 或 RoofLine metric set 运行 mcProfiler，并把完整输出复制到当前版本目录。
- `compare_mcprofiler_reports.py`：扁平化父/子 `report.txt.json`，生成 JSON 和 Markdown 指标差分。
- `run_paired_mctracer_v028k.py`：v027/v028k 三对 AB/BA mcTracer；用于先验证异步 half-B 机制。
- `run_paired_mctracer_v028l.py`：v027/最终 v028l 三对 AB/BA mcTracer。
- `run_three_way_benchmark_v028l.py`：同进程预编译 v027/v028k/v028l，12 轮六种轮转顺序，每次独立 warmup 和 event timing。

所有脚本拒绝覆盖已存在的 profiler 目录；失败重跑必须使用新 scope。benchmark 与 profiler 运行前应确认没有竞争 GPU workload，且不要并行启动另一 Python/TileLang 编译进程，以免 16 GiB slice 发生 OOM。
