# v006_maca_async_copy_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v006_maca_async_copy_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v006_maca_async_copy_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、正确性、双 benchmark 和 profile | 上述命令变量 | 上述各目录 |
| `probe_maca_async_copy_layout.py` | 最小化验证 sync/async 与 identity/swizzle 的正确性矩阵 | rows、swizzle、async 开关 | `/tmp/probe_*` 及 `codegen/maca_async_layout_probe/` |
| `dump_v006_lowering.py` / `profile_v006_codegen.py` | 导出三组 lowering、C++ 与资源 | OJ case | `codegen/` |
| `run_v006_mctracer.sh` / `summarize_v006_mctracer.py` | Case3 时间线和资源汇总 | Case3 | `profiler/mctracer/` |
| `run_v006_mcprofiler.sh` / `summarize_v006_mcprofiler.py` | Step1/Step2 假设相关计数器及 v004 对比 | Case3、step | `profiler/mcprofiler/` |
| `extract_metax_isa_v006.sh` / `analyze_metax_isa_v006.py` | 从最终 device ELF 的 llvmbc 重放后端并统计 ISA/spill | Case3 C++ | `codegen/final_isa_case3/` |
| `run_v006_roofline.sh` / `archive_v006_roofline.py` | 采集并归档原生 RoofLine | Case3、step | `moe-roofline/.../native/` |
| `summarize_v006_benchmarks.py` | 结构化官方/OJ verdict 日志 | benchmark logs | benchmark/correctness summary |

## 本版本实际命令

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/oj_benchmark.py
OFFICIAL_BENCHMARK_COMMAND='cd /root/tilelang-metax/race_tests/moe && PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python fusedmoe_benchmark.py' ./run_official_benchmark.sh
./run_v006_mctracer.sh 3
./run_v006_mcprofiler.sh 3 1
./run_v006_mcprofiler.sh 3 2
./run_v006_roofline.sh 3 1
./run_v006_roofline.sh 3 2
./extract_metax_isa_v006.sh <case3_generated_device.cpp> <final_isa_case3>
```

## 输入与依赖

- 机器 / sGPU：sc-16g，C500 25% slice。
- Git commit：父 checkpoint `4b777967`，分支 `dorm`。
- Python / TileLang / MXMACA：`/opt/conda/bin/python`、仓库开发构建、xcore1000 MXCC。
- mcProfiler / mcTracer 参数依据：Case3 是最长 OJ 形状；分别定位 `kernel_kernel` 与 `kernel_kernel_1`，只比较与 async/shared/register 假设相关的 cycles、latency、duty、stall、bytes、private 指令。

## 相对模板的修改

- 增加针对 MACA async-copy correctness 的 layout 微探针。
- 增加显式 Case3 mcTracer、mcProfiler、RoofLine 与最终 MetaX ISA 提取/结构化对比脚本；所有路径固定到本 iteration id，拒绝覆盖已有 profile。

## 产物核对

- [x] 正确性日志/summary
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [ ] mx-smi 同步采样（本版明确未采）
- [x] lowering / generated device / assembly / resources
- [x] Roofline native PNG、metric JSON 与 manifest
