# v031_step2_case3_hybrid_half_b_sc-16g 脚本说明

| 脚本 | 用途 |
|---|---|
| `v031_pair_benchmark.py` | 通用 parent/candidate 单进程 AB/BA 配对 benchmark；本版用于 Case3 两组 verdict |
| `v031_run_paired_mctracer.py` | 三组 Case3 v030/v031 独立进程 AB/BA mcTracer，汇总 Step1/Step2/gap/资源 |
| `v031_run_mcprofiler_submission.sh` | 对精确 submission 的 Case3 Step2 采集 targeted 与 RoofLine 指标；使用 absolute submission path 防止 profiler cwd 改写 |
| `v031_capture_submission_codegen.py` | 从精确 submission 捕获 Case3 generated C++ 与 MXCC resource usage |
| `extract_metax_isa.sh` | 将 generated C++ 编译到 xcore1000 device ELF，并从最终 device IR 导出 MetaX ISA 与资源日志 |
| `render_roofline.py` | 生成 schedule-aware 双带宽屋顶 SVG/可选 PNG |
| `collect_mxsmi.sh` | 在 Case3 W10/R2000 长负载期间同步采样只读 HBM bandwidth 与 AP usage |
| `validate_oj_submission.py` | OJ import allowlist 静态门（从 v030 已验证脚本复制） |
| `validate_submission.py` | 三 Case FP32 reference correctness 与 padding 检查（从 v030 已验证脚本复制） |
| `oj_submission_benchmark.py` | 精确 archived submission 的三 OJ distribution W20/R100 benchmark（从 v030 复制） |
| `official_submission_benchmark.py` | 将 archived `run_kernel` 适配到仓库 fusedmoe benchmark（从 v030 复制） |
| `profile_submission.py` | 为 mcTracer/mcProfiler 划定单次 Step1+Step2 profiler window（从 v030 复制） |

所有脚本在 sc-16g `/root/tilelang-metax` 运行，显式设置 `PYTHONPATH`、MACA library/path 和 `/opt/conda/bin/python`。benchmark/profile helper 可使用标准库；最终 `restart-submission/.../submission.py` 单独通过 OJ import allowlist。
