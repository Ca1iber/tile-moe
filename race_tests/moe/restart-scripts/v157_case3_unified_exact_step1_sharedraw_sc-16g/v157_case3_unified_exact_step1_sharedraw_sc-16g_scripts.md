# v157_case3_unified_exact_step1_sharedraw_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v157_case3_unified_exact_step1_sharedraw_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `validate_oj_submission.py` | 静态检查 OJ 根包及 TileLang import 形式 | `OJ_SUBMISSION_SOURCE` | 标准输出；accepted 版另存到 `restart-submission/v157_case3_unified_exact_step1_sharedraw_sc-16g/oj_import_validation.txt` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v157_case3_unified_exact_step1_sharedraw_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、OJ import 校验、正确性、双 benchmark 和 profile | 上述命令变量；accepted 版设置 `REQUIRE_OJ_SUBMISSION=1` 与 `OJ_SUBMISSION_SOURCE` | 上述各目录 |

## 本版本实际命令

逐字可复现命令保存在 `commands.sh`。核心流程为：

1. `validate_oj_submission.py` 检查精确 candidate；
2. `run_v110_fullcheck.py` 对 Case3 跑 5x20 AB/BA，对 Case1/2 跑 1x10 side checks；
3. `capture_codegen.py --case 3` 记录 generated device source 与资源；
4. `mcTracer --mctx` 抓 Case3 单次正式调用；
5. `run_candidate_mcprofiler_subset.sh` 对 `kernel_kernel_3` 分别采 core/memory 最小指标集。

## 输入与依赖

- 机器 / sGPU：MetaX C500 sc-16g，sGPU id 3，25% compute，16 GiB。
- Git 起点：`46736908ef8a845c7ed28d934888d5f01f5c6ead`。
- Python：`/opt/conda/bin/python`；TileLang dev build：`/root/tilelang-metax/build`；MACA `3.7.1.5`。
- mcTracer：`/opt/maca-3.7.1/bin/mcTracer --mctx`，warmup 3。
- mcProfiler：`perf_exec --per-kernel --kernelnames kernel_kernel_3 --counts 1`，core/memory 分组 replay。

## 相对模板的修改

- 增加 v154 实际使用的 `profile_submission.py`、`run_v110_fullcheck.py`、`capture_codegen.py` 与 `run_candidate_mcprofiler_subset.sh`。
- `commands.sh` 固化精确 parent/candidate 路径与参数。

## 产物核对

- [x] 三 case 全有效行正确性与 OJ source validation
- [ ] accepted submission：外部 OJ pending，按约束禁止创建
- [x] Case3 正式 5x20 与 Case1/2 side-check JSON
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler core/memory 原始结果
- [x] mx-smi 环境快照
- [x] generated device source、compiler log、resources
- [x] Roofline manifest 与明确 `UNAVAILABLE.md`
