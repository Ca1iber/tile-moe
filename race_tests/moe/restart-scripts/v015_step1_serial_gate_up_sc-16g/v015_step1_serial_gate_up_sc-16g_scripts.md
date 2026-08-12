# v015_step1_serial_gate_up_sc-16g 脚本说明

- `run_source_oj_v015.py`：从显式源码快照加载 kernel，复用项目 `oj_benchmark` 的 CASES/run_case 和正确性语义。
- `run_paired_source_oj_v015.py`：fresh-process AB/BA 配对驱动；本轮 screen 使用 1 pair、warmup=5、repeat=30、cases=2,3。
- `profile_one_case_source_v015.py`：在 profiler start/stop 之间只发射一个显式 source 的 OJ case。
- `run_paired_mctracer_v015.py`：解析 Step1/Step2/gap/grid/dynamic-shared/register；本轮用于 candidate B case3。
- `run_mcprofiler_source_v015.sh`：对显式 source 和指定 Step 发射 targeted 或 Roofline metric set；本轮使用 case3 Step1 targeted。
- `capture_codegen_source_v015.py`：禁用 TileLang cache，注入 MXCC `-resource-usage`，保存生成 C++、编译日志和资源 JSON。
- `extract_metax_isa_v015.sh`：从生成 C++ 构建 xcore1000 ELF，提取 embedded bitcode 并生成最终 MetaX ISA。
- `analyze_metax_isa_v015.py`：统计最终 ISA 的 MMA/global/shared/private/barrier/arrive 与资源元数据。
- 其余 `collect_*`、`run_*`、`render_roofline.py` 为 ako4all-c500 初始化模板；未执行的 verdict/Roofline 路径由相应 UNAVAILABLE 文档说明。

脚本 provenance：`run_source_oj`、codegen/ISA 工具从 v014 已验证版本逐字节复制后改名；paired/profile 脚本在此基础上仅改 iteration/tag/case 参数化，benchmark 数学和测量语义未改变。
