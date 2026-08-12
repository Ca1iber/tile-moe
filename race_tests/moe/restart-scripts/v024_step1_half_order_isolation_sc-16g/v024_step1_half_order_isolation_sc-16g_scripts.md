# v024_step1_half_order_isolation_sc-16g 脚本说明

本目录保存 v024 实际使用的源码快照 benchmark、同进程比较、mcTracer、mcProfiler、codegen、ISA、环境采集与 Roofline 脚本。

## 关键脚本

| 文件 | 用途 | 本版本实际使用 |
|---|---|---|
| `run_source_oj.py` | 对显式源码快照运行 OJ | Case2 粗筛；Case1/2/3 完整验证 |
| `run_rotating_source_oj.py` | fresh-process 多候选轮转 | 发现设备时间相位，结果标为 confounded |
| `run_same_process_paired_oj.py` | 同进程共享输入的 AB/BA event windows | v023/v024 12×repeat200 与 4×repeat2000；AGU/AUG 反例 |
| `run_official_source.py` | 显式源码快照运行官方 benchmark | v024 functional/performance |
| `capture_codegen_source.py` | 生成 C++ 和资源报告 | Case1/2/3 |
| `extract_metax_isa.sh` | 从生成 C++ 提取最终 xcore1000 ISA | Case2 middle-swap |
| `analyze_metax_isa.py` | 汇总资源与静态指令 | parent/candidate/失败候选对照 |
| `run_paired_mctracer.py` | v023/v024 AB/BA 单次 trace | 4 pairs，warmup=5 |
| `profile_one_case_source.py` | mcTracer/mcProfiler 的单 case target | Case2 Step1 |
| `run_mcprofiler_source.sh` | 显式源码的 targeted replay | parent→candidate 与 candidate→parent 两轮 |
| `summarize_mcprofiler.py` | 同名指标比较和一致性检查 | 两轮 summary |
| `collect_environment.sh` | Git、版本、源码哈希、mx-smi | 归档环境快照 |
| `render_roofline.py` | 渲染多带宽屋顶的 SVG/PNG | 只画隔离的 mcTracer 诊断点 |

## 权威未插桩命令

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/moe/restart-scripts/v024_step1_half_order_isolation_sc-16g/run_same_process_paired_oj.py \
  --parent-source /root/moe_runs/v024_step1_half_order_isolation/v023_parent.py \
  --candidate-source /root/moe_runs/v024_step1_half_order_isolation/v024_middle_swap.py \
  --output /root/moe_runs/v024_step1_half_order_isolation/same_process_parent_vs_middle_swap.json \
  --pairs 12 --warmup 5 --repeat 200

PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/moe/restart-scripts/v024_step1_half_order_isolation_sc-16g/run_same_process_paired_oj.py \
  --parent-source /root/moe_runs/v024_step1_half_order_isolation/v023_parent.py \
  --candidate-source /root/moe_runs/v024_step1_half_order_isolation/v024_middle_swap.py \
  --output /root/moe_runs/v024_step1_half_order_isolation/same_process_parent_vs_middle_swap_repeat2000.json \
  --pairs 4 --warmup 20 --repeat 2000
```

## Profile 命令摘要

- mcTracer：`run_paired_mctracer.py --pairs 4 --warmup 5`。
- mcProfiler：Case2 Step1 targeted metrics，顺序为 parent→candidate，再 candidate→parent。
- mcProfiler executable：`/opt/mcProfiler-ubuntu18.04/mcProfiler`。
- mcTracer executable：`/opt/maca-3.7.1/bin/mcTracer`，版本 `3.7.1.5-ef9e10e`。

## 环境

- 机器：sc-16g，C500 25% compute slice，16,000 MiB quota。
- Hostname：`854dc172e599`。
- Python：3.12.11。
- TileLang：源码树 `/root/tilelang-metax`，采集时版本 `0.1.9+cuda.git697c12ad`。
- PyTorch：`2.8.0+metax3.7.1.3`。
- MXMACA：3.7.1.5。

## 产物核对

- [x] 三 case OJ 正确性和性能日志
- [x] 官方 benchmark 原始日志
- [x] 两种长度的未插桩同进程 AB/BA 数据
- [x] 失败排列及时间相位反例
- [x] mcTracer 原始 trace 与阶段摘要
- [x] 两轮 mcProfiler 原始报告与摘要
- [x] mx-smi 环境快照
- [x] Case1/2/3 生成 C++、资源和 Case2 MetaX ISA
- [x] 明确隔离的 Roofline points、SVG/PNG 与 render manifest
