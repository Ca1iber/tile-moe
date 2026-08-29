# v166 scripts

本目录冻结本次实验所用的 OJ validator、完整正确性/ABBA benchmark、codegen、mcTracer、mcProfiler 与环境采集脚本。`commands.sh` 给出精确 v160 parent、v166 development candidate 和正式 Case2 协议。

2026-08-29 submission packaging 补充使用：

- `run_v110_fullcheck.py`：从 exact `run_kernel` source 对 v148/v166 逐 Case 做全有效行正确性和 5×50 AB/BA 正式计时。
- `capture_codegen.py`：从 exact `candidate_submission.py` 分别编译 Case1/2/3，保存 generated C++、compiler log 和 resource JSON。
- `validate_oj_submission.py`：先扫 exact source，再同时传入三个 generated C++ 做复检。
- `extract_metax_isa.sh`：从每个 generated C++ 提取最终 xcore1000 `.metax.s`，用于 BSM async-load 与 spill 审计；脚本复用仓库既有稳定流程。
- `collect_environment.sh`：采集本次 Git/C500/MXMACA/TileLang/PyTorch 环境快照；`mcProfiler version` 因仓库 `config/.version` 缺失报辅助版本错误，`mcTracer` 未进入非交互 PATH，但此前 exact-v166 profiler 证据已归档，本次不重跑 profiler。

Exact staging source：

```text
race_tests/moe/restart-experiments/v166_gateup_pairload_sc-16g/candidate_submission.py
SHA256 02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a
```

正式本地 SOTA gate：

```bash
for c in 1 2 3; do
  PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax \
  /opt/conda/bin/python run_v110_fullcheck.py \
    --parent ../../restart-submission/v148_allcase_silu_degree9_clamp55_sc-16g/submission.py \
    --candidate ../../restart-experiments/v166_gateup_pairload_sc-16g/candidate_submission.py \
    --case "$c" --rounds 5 --warmup 10 --repeat 50 \
    --output "../../restart-rep/v166_gateup_pairload_sc-16g/benchmark/v166_candidate_vs_v148_case${c}_formal.json"
done
```

外部 OJ pending，因此没有 submission promotion 命令，也没有创建 same-ID `restart-submission` 目录。
