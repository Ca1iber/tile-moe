# v013_step2_split_accumulator_sc-16g scripts

本版最初在 v012 子探针目录中发现并执行，提升为独立 v013 后保留原始脚本以保证命令可追溯。

- `run_v004_v012e_paired_all.sh`：严格两轮交替顺序、全 OJ case 配对；v012e 即 v013 最终源码，日志归档为 `paired_v004_v013_all/`。
- `profile_one_case_v012.py`、`run_v012_mctracer.sh`：用于 v013 Case1 成功 trace 和 Case3 失败采集；脚本中的旧 IID 仅反映执行时路径。
- `profile_one_case_v013.py`、`run_v013_mctracer.sh`、`summarize_v013_mctracer.py`、`summarize_v013_mctracer_repeats.py`：节点恢复后按 v013 IID 重采 Case3 三次，并生成单次与分布汇总。
- `profile_one_case_source_v013.py`、`run_v013_mcprofiler_source.sh`：不切换工作树，通过显式源码快照动态绑定 v004/v013；支持 targeted 与 RoofLine 两组 metric，并要求 `PROFILE_DONE` 和 `report.txt.json` 同时存在才判成功。
- `summarize_v013_mcprofiler.py`：汇总 paired targeted/roofline JSON，校验源码哈希、标记无效 counter、复制两版原生图并生成重绘 CSV。
- `render_roofline.py`：以 1916.928 TFLOP/s compute roof、1843.2/1400 GB/s 双带宽 roof 渲染 v004/v013 Case3 Step2 对照图。
- `run_v013_mxsmi_sampling.sh`、`summarize_v013_mxsmi.py`：同步 Case3 repeat=2000 与只读 HBM/AP 采样；持续到 workload 退出，并按 reference/用户 kernel 两个平台分段汇总。
- `profile_v012_codegen.py`：生成三 case 的 device C++ 与资源 JSON。
- `extract_metax_isa_v012.sh`、`analyze_metax_isa_v012.py`：提取 v013 与 v004 Case3 后端 ISA，统计资源、private traffic、barrier 和 spill。
- `run_official_benchmark.sh`：调用仓库原生 `fusedmoe_benchmark.py`，输出 official log。
- 每个脚本的依赖为 `/root/tilelang-metax/build`、MACA 3.7.1 和 `/opt/conda/bin/python`；输出位置均在本版 `restart-rep` 中或从原始 v012 路径机械复制后重命名。
- 失败记录：第一次 source-bound mcProfiler 使用相对源码路径，目标 cwd 改变后导入失败；第一次恢复后 mx-smi 采样固定 40 次且没有等待编译结束。两者原始目录均保留，后续脚本分别增加绝对路径和持续窗口校验。
