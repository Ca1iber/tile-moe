# v154_case3_unified_m192_sharedreuse_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v154_case3_unified_m192_sharedreuse_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `validate_oj_submission.py` | 静态检查 OJ 根包及 TileLang import 形式 | `OJ_SUBMISSION_SOURCE` | 标准输出；accepted 版另存到 `restart-submission/v154_case3_unified_m192_sharedreuse_sc-16g/oj_import_validation.txt` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v154_case3_unified_m192_sharedreuse_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、OJ import 校验、正确性、双 benchmark 和 profile | 上述命令变量；accepted 版设置 `REQUIRE_OJ_SUBMISSION=1` 与 `OJ_SUBMISSION_SOURCE` | 上述各目录 |

## 本版本实际命令

核心正确性、5x20 benchmark 与 codegen 命令已固化在 `commands.sh`。mcTracer
使用 Case3、warmup 3、单次 `run_kernel`；mcProfiler 对父版
`kernel_kernel_5`/`kernel_kernel_6` 分别采集并求和，对候选统一
`kernel_kernel_5` 采集相同 memory/core metric 集合。所有命令均以精确源码
SHA `c1bb9f...e43e3d` 执行，未记录凭据。

## 输入与依赖

- 机器 / sGPU：C500 sGPU id 3，25% compute，16 GiB
- Git parent commit：`858ecaf497f58aeaca10aca021cf38635ccb6a6e`
- TileLang：`/root/tilelang-metax/build`；MACA 3.7.1.5
- mcProfiler：memory 与 core 最小假设相关集合；`--per-kernel --counts 1`
- mcTracer：`--mctx`，Case3 warmup 3 后捕获一次正式调用

## 相对模板的修改

- 增加 `profile_submission.py`、`run_v110_fullcheck.py`、
  `capture_codegen.py`、`run_candidate_mcprofiler_subset.sh` 和 `commands.sh`，
  均为本次实际执行路径。

## 产物核对

- [x] 正确性日志
- [ ] accepted 版的 `restart-submission/v154_case3_unified_m192_sharedreuse_sc-16g/submission.py`、import 校验输出与 SHA-256
- [x] 本地精确 OJ-shape benchmark JSON
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [x] mx-smi 环境快照
- [x] generated device code 与 resources
- [x] operational points 与 manifest；校准 roof image 明确记为 unavailable
