# v002_step2_input_locality_grid_sc-16g 脚本说明

本目录保存 v002 实际使用的可复现实验脚本。数据写入同名 `restart-rep`，图写入同名 `moe-roofline`。

## 本版专用脚本

| 文件 | 用途 |
|---|---|
| `run_v002_clean_benchmarks.sh`、`summarize_v002_benchmarks.py` | 3 个独立进程的官方/OJ verdict 与统计 |
| `profile_one_case.py`、`run_v002_mctracer.sh`、`summarize_v002_mctracer.py` | 三个 OJ case 的 Step1/Step2 timeline、grid 和资源 |
| `run_v002_mcprofiler_step2.sh` | 只采集 case3 `kernel_kernel_1`（Step2）的 Roofline counters |
| `collect_mxsmi.sh`、`summarize_v002_mxsmi.py` | case3 长负载同步 HBM/AP 采样与统计 |
| `profile_v002_codegen.py`、`dump_v002_lowering.py` | 最终源码的生成 C++、资源和 PrimFunc 归档 |
| `summarize_v002_comparison.py` | v001/v002 benchmark、trace、mx-smi 及 v000/v002 Step2 counter 对比 |
| `build_v002_roofline.py`、`render_roofline.py` | 生成 decision/native CSV、SVG 与 render manifest |
| 其余通用脚本 | 初始化模板提供的环境、正确性、benchmark/profile helper |

## 关键实际命令

```bash
cd /root/tilelang-metax
bash race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/run_v002_clean_benchmarks.sh
for c in 1 2 3; do bash race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/run_v002_mctracer.sh "$c"; done
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/summarize_v002_mctracer.py
bash race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/run_v002_mcprofiler_step2.sh 3
WORKLOAD_COMMAND="cd /root/tilelang-metax/race_tests/moe && PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python oj_benchmark.py --cases 3 --warmup 10 --repeat 2000" \
MXSMI_SAMPLE_COMMAND="mx-smi --show-hbm-bandwidth -i 0; mx-smi --show-ap-usage -i 0" \
bash race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/collect_mxsmi.sh
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/summarize_v002_mxsmi.py
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/profile_v002_codegen.py
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/dump_v002_lowering.py
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/summarize_v002_comparison.py
/opt/conda/bin/python race_tests/moe/restart-scripts/v002_step2_input_locality_grid_sc-16g/build_v002_roofline.py
```

Roofline 的两个 `render_roofline.py` 调用参数完整保存在 `*_render.json`。所有认证细节均未写入脚本或产物。

## 输入与依赖

- Machine：sc-16g；C500 25% compute quota；104 AP；16000 MiB VRAM quota。
- Git parent：`91ef383124a760f9664592ea56eeb1eb8e1e80cf`。
- Kernel SHA256：`bf61d3ce399ea7c685a0ed24df2245ef0745c92fe81bc1be9e18d453d07b7461`。
- Python 3.12.11；TileLang 0.1.9 dev；MACA 3.7.1.5。
- 定向理由：本轮唯一机制只改 Step2 grid，因此 mcProfiler 只采集最长的 case3 Step2；mcTracer 覆盖三例以确认泛化。

## 产物核对

- [x] 官方和 OJ 正确性/benchmark 原始日志
- [x] 三例 mcTracer 原始 trace 与摘要
- [x] case3 Step2 mcProfiler 原始输出与对比
- [x] 正确参数的 mx-smi HBM/AP 同步采样
- [x] lowering、生成 device code、资源；ISA unavailable 原因
- [x] Roofline CSV、原生 PNG、SVG 与 render manifest
