# v009_async_consumer_fence_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v009_async_consumer_fence_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v009_async_consumer_fence_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、正确性、双 benchmark 和 profile | 上述命令变量 | 上述各目录 |
| `dump_v009_lowering.py` / `profile_v009_codegen.py` | 三 case lowering/C++/resource | OJ case | `codegen/` |
| `run_v009_mctracer.sh` / `summarize_v009_mctracer.py` | Case3 阶段时间与资源 | Case3 | `profiler/mctracer/` |
| `run_v009_mcprofiler.sh` / `summarize_v009_mcprofiler.py` | 与 v004 对照的硬件计数器 | Case3/step | `profiler/mcprofiler/` |
| `extract_metax_isa_v009.sh` / `analyze_metax_isa_v009.py` | 最终 ISA/resource/spill | Case3 C++ | `codegen/final_isa_case3/` |
| `run_v009_roofline.sh` / `archive_v009_roofline.py` | 原生 RoofLine | Case3/step | `moe-roofline/.../native/` |
| `run_v008_v009_paired_case3.sh` | fresh-process 交替配对测量 | v008/v009 snapshot | `benchmark/paired_case3_*` |
| `summarize_v009_benchmarks.py` | official/OJ 结构化 verdict | logs | benchmark/correctness summaries |

## 本版本实际命令

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/test_submission_quick.py
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/oj_benchmark.py
./run_v008_v009_paired_case3.sh
./run_v009_mctracer.sh 3
./run_v009_mcprofiler.sh 3 1
./run_v009_mcprofiler.sh 3 2
./run_v009_roofline.sh 3 1
./run_v009_roofline.sh 3 2
./extract_metax_isa_v009.sh <case3.cpp> <output-dir>
```

## 输入与依赖

- 机器 / sGPU：sc-16g，C500 25% slice。
- Git commit：父提交 `92435226`，分支 `dorm`。
- Python / TileLang / MXMACA：`/opt/conda/bin/python`、仓库开发构建、xcore1000 MXCC。
- mcProfiler / mcTracer 参数依据：Case3 最大 OJ shape；假设只改变同步，按 Step1/Step2 采集 cycles、wave life、WSM/VLS stall、MTE/MMA duty 与 native RoofLine。

## 相对模板的修改

- 增加本版本专用 lowering/codegen、tracer、profiler、roofline、ISA、benchmark 汇总和 v008/v009 fresh-process 配对脚本；另归档 MACA barrier builtin 源码/ISA 追踪结论。

## 产物核对

- [x] 正确性 summary 与 quick gate
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志 + paired Case3
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [x] mx-smi 空闲/运行状态核验（关键字段写入报告）
- [x] lowering / generated device / assembly / resources / builtin trace
- [x] Roofline native PNG、metric JSON 与 manifest
