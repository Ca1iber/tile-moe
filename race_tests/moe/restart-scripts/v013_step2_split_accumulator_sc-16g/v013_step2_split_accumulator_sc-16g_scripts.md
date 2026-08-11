# v013_step2_split_accumulator_sc-16g scripts

本版最初在 v012 子探针目录中发现并执行，提升为独立 v013 后保留原始脚本以保证命令可追溯。

- `run_v004_v012e_paired_all.sh`：严格两轮交替顺序、全 OJ case 配对；v012e 即 v013 最终源码，日志归档为 `paired_v004_v013_all/`。
- `profile_one_case_v012.py`、`run_v012_mctracer.sh`：用于 v013 Case1 成功 trace 和 Case3 失败采集；脚本中的旧 IID 仅反映执行时路径。
- `profile_v012_codegen.py`：生成三 case 的 device C++ 与资源 JSON。
- `extract_metax_isa_v012.sh`、`analyze_metax_isa_v012.py`：提取 v013 与 v004 Case3 后端 ISA，统计资源、private traffic、barrier 和 spill。
- `run_official_benchmark.sh`：调用仓库原生 `fusedmoe_benchmark.py`，输出 official log。
- 每个脚本的依赖为 `/root/tilelang-metax/build`、MACA 3.7.1 和 `/opt/conda/bin/python`；输出位置均在本版 `restart-rep` 中或从原始 v012 路径机械复制后重命名。
