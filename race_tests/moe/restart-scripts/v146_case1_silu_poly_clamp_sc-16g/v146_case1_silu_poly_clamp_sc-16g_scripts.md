# v146 复现脚本

- `run_formal_validation.sh`：OJ source gate、三 Case 5x50 ABBA、Case1 PyTorch reference/stress 与三 Case generated-code gate。
- `run_v59_fullcheck.py`：同进程 AB/BA 驱动。
- `validate_case1_reference.py`：四个种子和四种 expert 顺序，直接比较 PyTorch `F.silu`。
- `validate_case1_stress.py`：八种顺序/尺度组合与 deterministic 检查。
- `fit_silu_poly.py`：复现 `[-6,6]` degree-11 odd sigmoid 最小二乘系数。
- `capture_codegen.py`、`extract_metax_isa.sh`、`summarize_isa.py`：生成代码、资源与后端 ISA 证据。
- `run_paired_mctracer.py`：Case1 三对 AB/BA stage trace。
- `run_mcprofiler.sh`、`summarize_mcprofiler.py`：预编译同一 source-tag 后采集/汇总 Case1 Step1 perfcount。
- `validate_oj_submission.py`：OJ 源码与 generated-device 结构门禁。
- `profile_submission.py`：单 Case trace/profile workload。

主复验命令：

```bash
bash race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/run_formal_validation.sh
```

mcTracer 示例：

```bash
python race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/run_paired_mctracer.py \
  --repo /root/tilelang-metax \
  --profile-script /root/tilelang-metax/race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/profile_submission.py \
  --baseline /root/tilelang-metax/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py \
  --candidate /root/tilelang-metax/race_tests/moe/restart-experiments/v146_case1_silu_poly_clamp_sc-16g/candidate_submission.py \
  --output-root /root/moe_runs/v146_vs_v110_case1_mctracer_retry \
  --pairs 3 \
  --warmup 5
```
