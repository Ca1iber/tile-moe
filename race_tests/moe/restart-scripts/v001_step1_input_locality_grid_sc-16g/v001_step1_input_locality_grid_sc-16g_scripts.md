# v001_step1_input_locality_grid_sc-16g 脚本说明

本目录保存该版本实际使用的可复现实验脚本；原始输出统一写入同名 `restart-rep`，图写入同名 `moe-roofline`。

## 脚本清单

| 文件 | 实际用途 |
|---|---|
| `run_v001_clean_benchmarks.sh` | 依次运行 3 个独立进程的官方与 OJ verdict benchmark |
| `summarize_v001_benchmarks.py` | 解析原始日志，计算中位数、极差和正确性 |
| `run_v001_mctracer.sh` | 对 OJ case1/2/3 分别采集 Step1/Step2 timeline |
| `profile_one_case.py`、`summarize_v001_mctracer.py` | 触发单 case 并解析 kernel time、grid、gap、资源 |
| `run_v001_mcprofiler_step1.sh` | 只采集 case3 Step1 的 Roofline/计数器，避免把两个 kernel 混在一起 |
| `summarize_v001_mxsmi.py` | 解析与 case3 长负载同步的 HBM/AP 样本 |
| `profile_v001_codegen.py`、`dump_v001_lowering.py` | 归档生成 device C++、资源报告与 TileLang PrimFunc |
| `build_v001_roofline.py`、`render_roofline.py` | 生成 decision 与 mcProfiler-native 对比图及审计 CSV |
| `summarize_v001_comparison.py` | 统一汇总 v000/v001 benchmark、mcTracer、mcProfiler、mx-smi delta |
| 其余通用脚本 | 版本初始化时复制的环境、正确性、benchmark 和 profiler helper |

## 本版本实际命令

```bash
cd /root/tilelang-metax
bash race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/run_v001_clean_benchmarks.sh
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/summarize_v001_benchmarks.py
bash race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/run_v001_mctracer.sh
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/summarize_v001_mctracer.py
bash race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/run_v001_mcprofiler_step1.sh
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/profile_v001_codegen.py
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/dump_v001_lowering.py
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/build_v001_roofline.py
python race_tests/moe/restart-scripts/v001_step1_input_locality_grid_sc-16g/summarize_v001_comparison.py
```

所有 SSH 认证细节都不写入脚本或产物。

## 输入与依赖

- 机器 / sGPU：sc-16g；C500 25% compute quota；104 AP；16000 MiB VRAM quota。
- Git parent：`2de8d3d2d2a3df20092f904ca386eaa4b789fbf7`。
- Kernel hash：`7523054b8ba2534f2fd70e080f4fba86191bfeba5cc80aa831521a03538d6fbd`。
- Python / TileLang / MXMACA：Python 3.12.11；TileLang 0.1.9 dev；MACA 3.7.1.5。
- mcProfiler / mcTracer 参数依据：mcTracer 覆盖全部 OJ case 以验证阶段因果；mcProfiler 只覆盖最长的 case3 Step1，因为本轮假设只改变 Step1 局部性，且 case3 给出最稳定的硬件计数窗口。

## 相对模板的修改

- 增加三进程 verdict benchmark runner 和统计脚本。
- 增加逐 case mcTracer、定向 case3 Step1 mcProfiler、mx-smi 长负载解析。
- 增加最终源码 lowering/codegen 归档和 v000/v001 统一比较。
- Roofline 同时保留 schedule decision 坐标与 mcProfiler-native 相对坐标，禁止混用。

## 产物核对

- [x] 正确性日志
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [x] mx-smi 同步采样
- [x] lowering / generated device / resources；ISA unavailable 原因已记录
- [x] Roofline points、PNG、SVG 与 manifest
