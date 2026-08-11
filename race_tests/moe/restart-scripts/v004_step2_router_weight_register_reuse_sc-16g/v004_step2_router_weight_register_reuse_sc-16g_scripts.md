# v004_step2_router_weight_register_reuse_sc-16g 脚本说明

本目录保存本版本实际使用的复现实验脚本。密码、token 和私钥均未写入。

## 实际新增/使用脚本

| 文件 | 用途 | 关键参数/输出 |
|---|---|---|
| `run_v004_correctness.sh` | 三个 OJ case 正确性门禁 | warmup=0、repeat=1；输出到 `correctness/` |
| `run_v004_clean_benchmarks.sh` | 3 个独立进程跑 official + OJ verdict | warmup=10、repeat=100；输出原始日志 |
| `summarize_v004_benchmarks.py` | 提取中位数、范围、stdev | 输出 benchmark JSON/MD |
| `profile_one_case_v004.py` | 为 mcTracer/mcProfiler 运行单一 OJ case | `--case 1/2/3 --warmup 3` |
| `run_v004_mctracer.sh` | 采集三个 case 的 device timeline | `/opt/maca-3.7.1/bin/mcTracer --mctx` |
| `summarize_v004_mctracer.py` | 提取 Step1/Step2/gap/resource | 输出 stage summary JSON |
| `run_v004_mcprofiler_step2.sh` | 定向 profile Step2 | Case3、kernel_1、RoofLine、per-kernel、count=1 |
| `summarize_v004_mcprofiler.py` | 与 v002 同域比较 | 明确 raw proxy 不等于 bytes |
| `sample_v004_mxsmi.sh` | workload 期间显式采 HBM/AP | `--show-hbm-bandwidth`、`--show-ap-usage` |
| `summarize_v004_mxsmi.py` | active sample 统计及 v002 比较 | HBM/AP summary JSON |
| `dump_tilelang_codegen.py` / `profile_v004_codegen.py` | 导出 generated C++ 与资源 | 三个 OJ case |
| `dump_v004_lowering.py` | 导出 TileLang PrimFunc | 三个 OJ case |
| `dump_v004_llvm_ir.sh` | 同命令重编译 v002/v004 generated C++ | MXCC `-O3 -emit-llvm -maca-device-only` |
| `analyze_v004_codegen.py` | 统计 routed-weight loads、alloca、addrspace(5)、资源 | 输出 codegen comparison JSON |
| `build_v004_roofline.py` / `render_roofline.py` | 构造并渲染决策 Roofline | 479.232 TFLOP/s；1400/1843.2 GB/s roofs |
| `summarize_v004_comparison.py` | 汇总 v000/v002/v004 全部证据 | comparison JSON/MD |

初始化模板脚本也保留在目录中，便于核对流程；本报告只把上述实际运行脚本作为 v004 证据。

## 关键命令

```bash
cd /root/tilelang-metax/race_tests/moe
PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python oj_benchmark.py --cases 1,2,3 --warmup 0 --repeat 1
PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python fusedmoe_benchmark.py
PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100

# 三个 case 分别执行；完整路径和输出名见 profiler/mctracer/case*/command.txt
/opt/maca-3.7.1/bin/mcTracer --mctx ... profile_one_case_v004.py --case CASE --warmup 3

# Case3 Step2；脚本内固定 kernel_kernel_1、per-kernel、count=1、RoofLine
bash run_v004_mcprofiler_step2.sh 3

# 同步长负载采样
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python oj_benchmark.py --cases 3 --warmup 10 --repeat 2000
mx-smi --show-hbm-bandwidth -i 0
mx-smi --show-ap-usage -i 0
```

## 输入与依赖

- 机器 / sGPU：sc-16g，C500 16 GiB / 25% sGPU
- Git 起点：`70c51e5250fb5304615fa50c8e7d906590e423e2`
- Python：`/opt/conda/bin/python` 3.12.11
- TileLang：dev root `/root/tilelang-metax/build`，`0.1.9+cuda.git70c51e52`
- MXMACA / MXCC：3.7.1；PyTorch：`2.8.0+metax3.7.1.3`
- mcProfiler：`/opt/mcProfiler-ubuntu18.04`；mcTracer：`/opt/maca-3.7.1/bin/mcTracer`

## 相对模板的修改

- 增加逐 case profile runner，确保 tracer/profiler 只捕获目标 workload。
- 增加 v002/v004 exact generated C++ 的同命令 LLVM IR 对比和资源解析。
- 增加三进程 benchmark 汇总、同步 mx-smi 采样、双 roof 决策 Roofline 和跨版本总比较。
- 默认 `collect_mxsmi.sh` 仅得到 summary，失败证据保存在 `profiler/mxsmi/failed_default_summary_only/`；随后改用显式只读 query 完成采样。

## 产物核对

- [x] 正确性日志
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [x] mx-smi 同步采样
- [x] lowering / generated device / optimized LLVM IR / resources
- [x] 最终 ISA 不可用说明
- [x] Roofline points、native PNG、SVG 与 manifest
