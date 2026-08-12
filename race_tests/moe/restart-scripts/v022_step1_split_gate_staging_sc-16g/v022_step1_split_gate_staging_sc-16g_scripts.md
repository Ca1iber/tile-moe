# v022_step1_split_gate_staging_sc-16g 脚本说明

- `run_source_oj.py`：从显式源码快照运行官方 OJ shape，输出源码 SHA、正确性与耗时。
- `run_paired_interleave_oj.py`：以 AB/BA fresh-process 协议比较 v021 与最终 v022。
- `run_paired_mctracer.py`：三组交替顺序的 Case2 mcTracer 比较并汇总 Step1/Step2/device span。
- `profile_one_case_source.py`：从显式源码只运行一个配置，供 mcTracer/mcProfiler 包裹。
- `run_mcprofiler_source.sh`：以 explicit source、kernel name 和 metric set 驱动 mcProfiler。
- `summarize_mcprofiler.py`：比较 targeted replay 指标并检查 waves/private-instruction 一致性。
- `capture_codegen_source.py`：禁用 TileLang cache，保存 generated device C++、compiler log 与资源报告。
- `extract_metax_isa.sh`：从 generated C++ 生成最终 xcore1000 ELF/embedded BC/MetaX ISA。
- `analyze_metax_isa.py`：统计两个 kernel 的资源、MMA、global/shared/private、barrier 与 spill。
- `run_official_source.py`：从显式源码运行仓库官方 fusedmoe benchmark。
- `collect_mxsmi.sh`：在指定 workload 运行期间同步采样 mx-smi。
- `collect_environment.sh`：保存分支、版本、设备快照和关键源码哈希；sc-16g 工具使用绝对路径。
- `render_roofline.py`：用明确命名的带宽 roof 渲染 CSV 点为 SVG/PNG/JSON。
- `finalize_v022.py`：同步更新 evidence/roofline manifest，写入最终判定指标与哈希。

其余初始化模板脚本保留，便于从同一 iteration 目录复现实验。所有实际使用的 source-runner、profile、codegen、ISA、Roofline 与收口脚本均已在本目录归档。
