# v033 脚本说明

版本：`v033_step2_case1_swap_shared_halves_sc-16g`

## 复现顺序

1. `validate_oj_submission.py`：检查 submission 的 OJ 根包 allowlist 与 TileLang 导入形式。
2. `validate_submission.py`：分别验证三个固定 OJ case 的正确性。
3. `official_submission_benchmark.py`：运行项目官方 functional/performance fallback。
4. `oj_submission_benchmark.py`：运行 exact-OJ case 计时。
5. `v033_pair_benchmark.py`：对 v032/v033 做同进程 AB/BA paired benchmark。
6. `v033_run_paired_mctracer.py`：采集并汇总 Step1/Step2 的 3 对交错 trace。
7. `v033_run_mcprofiler_submission.sh`：采集基线与候选 mcProfiler 原始报告。
8. `v033_collect_mxsmi.sh`：用 `mx-smi --show-hbm-bandwidth` 与 `--show-ap-usage` 采样稳态 workload。
9. `v033_capture_submission_codegen.py`：冻结 TileLang lowering C++ 与资源报告。
10. `extract_metax_isa.sh`：从生成 device object 提取并归档 MetaX 汇编及相关二进制。
11. `v033_summarize_profile.py`：生成 mcProfiler、mcTracer、mx-smi 和 ISA 静态模式摘要，并隔离 replay 不一致的累计指标。
12. `render_roofline.py`：渲染 native profiler Roofline。
13. `v033_finalize_iteration.py`：生成 schedule-aware Roofline、patch、hash、manifest 与报告骨架。
14. `summarize_iteration.py`：更新 Git 身份和全量 SHA-256 artifact inventory。
15. `validate_iteration.py --strict`：检查五目录归档、证据和 OJ submission 的完整性。

`collect_mxsmi.sh`、`profile_submission.py`、`official_submission_benchmark.py`、`oj_submission_benchmark.py` 等通用脚本仍保留，是上述版本化入口的依赖。失败探针不是运行脚本，统一归档在 `restart-experiments/<id>/probes/`。
