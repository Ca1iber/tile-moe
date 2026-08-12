# v023_step1_gate_input_up_half_interleave_sc-16g 脚本说明

本目录保存 v023 实际使用的初始化、benchmark、mcTracer、mcProfiler、mx-smi、codegen、ISA 和 Roofline 脚本。密码、token 和 SSH 私钥未写入仓库。

## 关键脚本

| 文件 | 本版本用途 |
|---|---|
| `run_paired_source_oj.py` | fresh-process AB/BA OJ 配对；运行 4-pair 两轮和 2-pair repeat=2000 长窗 |
| `run_source_oj.py` | 对任意源码快照运行指定 OJ case；用于屏幕、全 case 和安装态长窗 |
| `run_official_source.py` | 在不覆盖主文件时运行官方 functional/performance benchmark |
| `capture_codegen_source.py` | 捕获指定源码与 case 的生成 C++、编译日志和资源使用 |
| `extract_metax_isa.sh` | 从编译产物提取 MetaX backend assembly、text binary 和 ELF |
| `analyze_metax_isa.py` | 汇总函数资源、静态指令、barrier/arrive 和 spill 注释 |
| `run_paired_mctracer.py` | 单 kernel trace 的 AB/BA 配对和阶段汇总 |
| `v023_profile_one_case_repeat.py` | 在一个 trace 中重复 20 次 Step1/Step2，降低首样本误判 |
| `run_paired_mctracer_v023_repeat.py` | 对 repeated trace window 做配对、median 与 p95 汇总 |
| `run_mcprofiler_source.sh` | 对指定源码、case、step 和指标组运行 mcProfiler |
| `summarize_mcprofiler.py` | 对父版本/候选 report.txt.json 做定向指标差分 |
| `collect_mxsmi.sh` | workload 期间循环采样 mx-smi；用于安装态 repeat=2000 |
| `render_roofline.py` | 由 points CSV 生成 SVG 和 render manifest |

## 实际协议

```text
OJ screen: case=2, warmup=10, repeat=100
OJ strict round1: case=2, pairs=4, order=AB/BA, warmup=10, repeat=100
OJ strict round2: case=2, pairs=4, order=AB/BA, warmup=10, repeat=100
OJ long: case=2, pairs=2, order=AB/BA, warmup=10, repeat=2000
Official source: 2 functional + 2 performance configs
OJ all cases: cases=1,2,3, warmup=3/10, repeat=100
mcTracer standard: case=2, pairs=3, warmup=3
mcTracer warm: case=2, pairs=2, warmup=10
mcTracer window: case=2, pairs=2, warmup=10, profile_repeat=20
mcProfiler targeted: case=2, step=1, warmup=3
mx-smi: installed Case2 warmup=10, repeat=2000, requested interval=0.1s
```

## 环境注意事项

- 项目 Python：`/opt/conda/bin/python`
- 项目源码：`PYTHONPATH=/root/tilelang-metax`
- MACA：`MACA_PATH=/opt/maca`
- 远端 login shell 会把当前目录切换到 `/data` 并注入旧 TileLang 路径，因此安装态 OJ 必须把绝对脚本路径和 `PYTHONPATH` 放进实际 `OJ_BENCHMARK_COMMAND`。
- mcTracer/mcProfiler 对 v023 出现 instrumentation inversion；它们的时间只用于诊断，提交性能以无插桩 OJ 配对为准。

## 产物核对

- [x] 正确性日志
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志和配对汇总
- [x] mcTracer 原始 trace、单样本和 20-iteration window 摘要
- [x] mcProfiler 原始结果和定向差分
- [x] mx-smi 同步采样
- [x] generated device C++、assembly、text binary、ELF 和 resources
- [x] Roofline points、SVG 和 manifest
