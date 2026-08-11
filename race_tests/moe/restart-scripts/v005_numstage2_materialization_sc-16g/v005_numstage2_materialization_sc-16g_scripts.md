# v005_numstage2_materialization_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v005_numstage2_materialization_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v005_numstage2_materialization_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、正确性、双 benchmark 和 profile | 上述命令变量 | 上述各目录 |

## 本版本实际命令

```bash
PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/profile_v005_codegen.py
PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/dump_v005_lowering.py
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/extract_metax_isa_v005.sh race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/final_isa_case3
/opt/conda/bin/python race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/analyze_metax_isa_v005.py <assembly> --output <summary.json>
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_clean_benchmarks.sh
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mctracer.sh 1
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mctracer.sh 2
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mctracer.sh 3
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mcprofiler.sh 3 1 candidate_v005
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mcprofiler.sh 3 2 candidate_v005
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mcprofiler.sh 3 1 baseline_v004
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_mcprofiler.sh 3 2 baseline_v004
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_roofline.sh 3 1
race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/run_v005_roofline.sh 3 2
/opt/conda/bin/python race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/archive_v005_roofline.py
/opt/conda/bin/python race_tests/moe/restart-scripts/v005_numstage2_materialization_sc-16g/summarize_v005_evidence.py
```

## 输入与依赖

- 机器 / sGPU：sc-16g，C500 16 GiB slice。
- Git commit：父提交 `6e6715ce48ab6c8250aa157e0609ac702f4cafe9`，branch `dorm`。
- Python / TileLang / MXMACA：`/opt/conda/bin/python`；repo dev build；MXMACA 3.7.1.5 / MXCC 1.0.0。
- mcProfiler / mcTracer 参数依据：Case3 两个 kernel 分开 `--per-kernel --counts 1`；paired v004/v005 使用完全相同 17 指标。mcTracer 只采显式 profiler range 内的一次 Step1+Step2。

## 相对模板的修改

- 新增最终 MetaX ISA 提取和静态指令/resource 分析脚本。
- 新增 candidate/baseline 分目录的 paired mcProfiler、三进程 verdict benchmark、三 case mcTracer、原生 Roofline 与总证据汇总脚本。
- `collect_mxsmi.sh` 和通用模板脚本未执行；不把模板存在误写成执行证据。

## 产物核对

- [x] 正确性日志（官方 functional 与 OJ `status=PASS` 原始日志）
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [ ] mx-smi 同步采样（本假设不依赖瞬时功耗/频率，不伪造缺失证据）
- [x] lowering / generated device / assembly / resources
- [x] Roofline native PNG、metric JSON 与 manifest
