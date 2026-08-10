# v000_minibs_baseline_sc-16g 脚本说明

所有实际使用的脚本均按版本归档。模板脚本保留用于追溯；本轮主要使用带 `v000` 前缀的专用脚本。未写入密码、token、私钥或 SSH 地址。

## 脚本清单

| 文件 | 用途 |
|---|---|
| `collect_v000_hardware.sh` | Git/hash、mx-smi、sGPU、runtime 与工具版本快照 |
| `run_v000_clean_benchmarks.sh` | 三个独立进程运行官方与 OJ benchmark |
| `summarize_v000_benchmarks.py` | 解析正确性、原始样本、median/mean/range |
| `profile_one_case.py` | 单 OJ case、单 profiler range 的共同 workload |
| `run_v000_mctracer.sh` | 逐 case 生成 mcTracer 原始 trace |
| `summarize_v000_mctracer.py` | 过滤 range 内唯一 Step1/Step2，提取时间、gap、grid 与资源 |
| `run_v000_mcprofiler.sh` | 逐 case、两个 kernel 的 RoofLine metric 采集 |
| `summarize_v000_roofline.py` | 分离 native profiler 坐标与 decision Roofline 坐标 |
| `summarize_v000_mxsmi.py` | 汇总同步 HBM/AP active 样本 |
| `profile_v000_codegen.py` | 归档生成设备代码与 `-resource-usage` |
| `dump_v000_lowering.py` | 归档 TileLang PrimFunc |
| `dump_v000_llvm_ir.sh` | 用 MXCC O3 导出设备 bitcode 并用 llvm-dis 生成 LLVM IR |
| `render_roofline.py` | 生成 decision/native Roofline SVG 与 render manifest |

## 本版本实际命令

```bash
cd /root/tilelang-metax
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/collect_v000_hardware.sh
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_clean_benchmarks.sh
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mctracer.sh 1
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mctracer.sh 2
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mctracer.sh 3
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mcprofiler.sh 1
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mcprofiler.sh 2
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/run_v000_mcprofiler.sh 3
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/profile_v000_codegen.py
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/dump_v000_lowering.py
bash race_tests/moe/restart-scripts/v000_minibs_baseline_sc-16g/dump_v000_llvm_ir.sh
```

Benchmark 的精确 cwd/argv 已分别写入 `restart-rep/.../benchmark/*_command.txt`；mcTracer/mcProfiler 的目标命令保存在各自 raw 目录。

## 输入与依赖

- 机器 / sGPU：sc-16g，MetaX C500，25% compute quota，16000 MiB VRAM quota，10 ms best-effort timeslice。
- Git commit：`5fabf457e951abcf365fc8fe269016ac9bb22d40`。
- Python / TileLang / MXMACA：Python 3.12.11；dev TileLang `0.1.9+cuda.git5fabf457`；MACA 3.7.1.5。
- mcProfiler：3.8.1.4，`--per-kernel --counts 2 --kernelnames kernel_kernel kernel_kernel_1 --metrics RoofLine`。
- mcTracer：3.7.1.5-ef9e10e，`--mctx`，每个 trace 仅统计 `mcProfilerStart/Stop` 内的一对 kernel。

## 相对模板的修改

- benchmark 使用官方入口原样执行，并增加三独立进程汇总器。
- mcTracer target 改用独立 argv 数组，`--odname` 使用 trace cwd 下相对路径。
- mcProfiler 逐 case 串行运行，避免 profiler server 和 slice 争用。
- mx-smi workload 显式设置 repo `PYTHONPATH`；失败的首次系统 TileLang 尝试原样保留并命名 `attempt1_failed`。
- Roofline 分为 native 与 decision 两套，避免把 mcProfiler `case_flops` 误解释为端到端 TFLOP/s。
- 远端没有 matplotlib，因此 portable SVG 是汇总主图；mcProfiler 的六张 native PNG 同时保留。

## 产物核对

- [x] 正确性日志
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [x] mx-smi 同步采样
- [x] lowering / generated device / optimized LLVM IR / resources
- [x] Roofline points、native PNG、SVG 与 manifest
- [x] 后端 ISA 不可用说明
