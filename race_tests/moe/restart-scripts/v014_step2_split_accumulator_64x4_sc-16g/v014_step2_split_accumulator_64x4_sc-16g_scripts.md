# v014_step2_split_accumulator_64x4_sc-16g 脚本说明

## 目的

本目录保存 v014 的显式源码 correctness/OJ runner、同序配对 benchmark、codegen/ISA 抓取、mcTracer、mcProfiler 及汇总脚本。所有性能脚本都绑定 parent/candidate 源码快照，未替换工作树 `custom_fusedmoe.py`。

## 脚本

- `run_source_oj_v014.py`：加载显式源码后复用项目 `oj_benchmark.run_case`；输出 source SHA-256、正确性和 device-event 时间。
- `run_paired_source_oj_v014.py`：fresh-process AB/BA/AB clean OJ campaign；每个样本前检查竞争 GPU 任务，输出逐对和聚合 JSON。
- `capture_codegen_source_v014.py`：对显式源码编译指定 OJ case，开启 MXCC resource usage，保存 generated C++、compiler log 和资源 JSON。
- `extract_metax_isa_v014.sh`：从 generated C++ 生成 device object，提取 post-link bitcode并重新发射 xcore1000 MetaX ISA。
- `analyze_metax_isa_v014.py`：统计最终 ISA 的资源、MMA、global/shared/private、barrier/arrive 和 spill。
- `profile_one_case_source_v014.py`：mcTracer/mcProfiler target；warmup 后只 profile 一次指定 OJ case。
- `run_paired_mctracer_v014.py`：三对 AB/BA/AB Case3 trace并解析 Step1/Step2/gap。
- `run_mcprofiler_source_v014.sh`：显式源码、per-kernel、counts=1 的 targeted/roofline wrapper；本版实际使用 targeted。
- `summarize_mcprofiler_v014.py`：读取单个 paired campaign 的 targeted counters并标注 counter 适用范围。
- `combine_mcprofiler_v014.py`：合并正序与反序 campaign，避免采集顺序造成错误结论。
- `collect_v014_snapshot.sh`：只读采集 mx-smi memory/usage/clock/HBM/AP/sGPU 状态。
- `dump_tilelang_codegen.py`、`run_oj_benchmark.sh`、`run_official_benchmark.sh`、`render_roofline.py`：初始化模板；本版不把模板结果冒充实际运行。

## 关键命令

```bash
python run_paired_source_oj_v014.py \
  --runner run_source_oj_v014.py \
  --parent-source <v013_snapshot> --candidate-source <v014_snapshot> \
  --output-dir <benchmark/paired_oj> --pairs 3 --warmup 10 --repeat 100

python run_paired_mctracer_v014.py \
  --profile-script profile_one_case_source_v014.py \
  --parent-source <v013_snapshot> --candidate-source <v014_snapshot> \
  --output-root <profiler/mctracer/paired_case3> --pairs 3 --warmup 3

bash run_mcprofiler_source_v014.sh 3 2 <tag> <source> targeted <scope>
```

## 依赖与注意事项

- Python `/opt/conda/bin/python`，TileLang dev build，MACA 3.7.1，mcTracer，mcProfiler 3.8.1.4。
- `Total Cycles` 是多 pass/replay 累计 Kcycles，不可替代 clean latency；脚本明确将它标成 diagnostic。
- 首次 paired campaign 的祖先进程假阳性日志保留在 benchmark 目录；它未触碰 GPU。
- 本版为 rejected screen，官方 benchmark、版本专用 Roofline 与同步 mx-smi 长负载未运行，并有明确 `UNAVAILABLE.md`。
