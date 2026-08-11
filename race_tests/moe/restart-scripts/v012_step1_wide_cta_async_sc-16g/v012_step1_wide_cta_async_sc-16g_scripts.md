# v012_step1_wide_cta_async_sc-16g scripts

- `run_v004_v012c_paired_case3.sh`：v004/v012c 三轮交替 Case3 配对；第三轮候选因主机 RAM 竞争中止，日志保留。
- `profile_one_case_v012.py`、`run_v012_mctracer.sh`、`summarize_v012_mctracer.py`：单 case trace 与阶段汇总。
- `profile_v012_codegen.py`、`extract_metax_isa_v012.sh`、`analyze_metax_isa_v012.py`：生成 C++、资源、MetaX ISA 及静态指令计数。
- `run_v004_v012e_paired_all.sh` 和 v012e 相关记录属于从本轮发现后提升出的 v013；为保持原始执行命令仍保留，但 v012 verdict 排除这些数据。
- 其余脚本是 AKO4ALL-C500 模板副本；未执行或失败的 evidence 均以 `UNAVAILABLE.md` 标明。
