# v011_inverse_swizzle_bsm_sc-16g scripts

- `run_v009_v011b_paired_case3.sh`：三轮交替顺序 Case3 配对；输入 v009/v011b 快照，输出 `benchmark/paired_case3/`。
- `run_v011b_v011c_paired.sh`：三轮 Case2/3 配对；输出 `benchmark/paired_v011b_v011c/`。
- `profile_one_case_v011.py`、`run_v011_mctracer.sh`、`summarize_v011_mctracer.py`：单 case trace 与 Step1/Step2/gap 汇总。
- `run_v011_mcprofiler.sh`：按 kernel 名只采集与 barrier、MMA/MTE、private traffic 有关的 targeted metrics。
- `profile_v011_codegen.py`、`extract_metax_isa_v011.sh`、`analyze_metax_isa_v011.py`：归档生成 C++、资源和 MetaX ISA，并统计 barrier/arrive/load/store/spill。
- 其余 `run_*`、`collect_*`、`render_roofline.py` 为 AKO4ALL-C500 模板副本；本版没有伪造未执行的 Roofline/mx-smi 输出。
