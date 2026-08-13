# v030_step2_hybrid_half_b_pipeline_sc-16g 脚本说明

| 脚本 | 用途 |
|---|---|
| `validate_oj_submission.py` | 对精确 submission 做 OJ import allowlist 静态门禁 |
| `validate_v027_submission.py` | 复用 v027 三 Case reference 协议验证精确 submission |
| `v030_oj_submission_benchmark.py` | 精确 OJ 100/184 rows 分布，warmup/repeat Event 计时 |
| `v030_pair_benchmark.py` | v027/v030 单进程 AB/BA 配对 Case2 benchmark |
| `v030_official_submission_benchmark.py` | 将 `run_kernel` 适配到仓库官方 fusedmoe benchmark；performance 按配置独立进程 |
| `v030_profile_submission.py` | 对精确 submission 的一次 Step1+Step2 调用划定 profiler window |
| `v030_run_paired_mctracer.py` | 三组 AB/BA 独立进程 mcTracer 并汇总 Step1/Step2 |
| `v030_run_mcprofiler_submission.sh` | Case2 Step2 targeted/Roofline 采集 |
| `v030_capture_submission_codegen.py` | 捕获精确 submission 的生成 C++ 和 resource usage |
| `extract_metax_isa.sh` | 从生成 C++ 提取最终 xcore1000 MetaX ISA |
| `v030_diagnose.py` | 精确 Case2 错误区域与生成源码诊断 |

所有执行命令、原始参数和 source SHA 均随相应 benchmark/profiler 目录保存。远端非交互环境显式设置 `PYTHONPATH=/root/tilelang-metax`、MACA library/path 和 `/opt/conda/bin/python`。
