# v133_case1_workspace_control_simplify_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v133_case1_workspace_control_simplify_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `validate_oj_submission.py` | 静态检查 OJ 根包及 TileLang import 形式 | `OJ_SUBMISSION_SOURCE` | 标准输出；accepted 版另存到 `restart-submission/v133_case1_workspace_control_simplify_sc-16g/oj_import_validation.txt` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v133_case1_workspace_control_simplify_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、OJ import 校验、正确性、双 benchmark 和 profile | 上述命令变量；accepted 版设置 `REQUIRE_OJ_SUBMISSION=1` 与 `OJ_SUBMISSION_SOURCE` | 上述各目录 |

## 本版本实际命令

```bash
# 在这里粘贴逐字执行的命令；不要写入密码、token 或私钥。
```

## 输入与依赖

- 机器 / sGPU：待填写
- Git commit：待填写
- Python / TileLang / MXMACA：待填写
- mcProfiler / mcTracer 参数依据：待填写

## 相对模板的修改

- 待填写

## 产物核对

- [ ] 正确性日志
- [ ] accepted 版的 `restart-submission/v133_case1_workspace_control_simplify_sc-16g/submission.py`、import 校验输出与 SHA-256
- [ ] 官方 benchmark 原始日志
- [ ] OJ benchmark 原始日志
- [ ] mcTracer 原始 trace 与阶段摘要
- [ ] mcProfiler 原始结果与假设相关摘要
- [ ] mx-smi 同步采样
- [ ] lowering / generated device / assembly / resources
- [ ] Roofline points、PNG、SVG 与 manifest
