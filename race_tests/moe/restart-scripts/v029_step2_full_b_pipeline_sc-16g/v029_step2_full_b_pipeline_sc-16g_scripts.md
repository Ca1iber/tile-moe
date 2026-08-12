# v029_step2_full_b_pipeline_sc-16g 脚本说明

## Benchmark 与正确性

- `run_source_oj.py`：从显式 source snapshot 注入 `custom_fusedmoe`，调用仓库原生 `oj_benchmark.py`。完整门禁使用 Cases 1,2,3、warmup 10、repeat 100。
- `run_official_source.py`：从显式 source snapshot 运行仓库原生 `fusedmoe_benchmark.py`，避免覆盖当前最佳 kernel。
- `run_paired_v028l_v029o.py`：同进程预编译 v028l/v029o，10 轮 AB/BA，单次 warmup 3、repeat 100，并输出完整 JSON 样本与配对统计。
- `run_v029[a-f]_case2.sh`：早期 full-B 子变体的 Case2 screen 入口；屏测结果不能代替 verdict。

## Correctness diagnostics

- `probe_bsm_full_pingpong_loop.py`：48 CTA、32 K tiles 的 full-B BSM copy-only 压力探针，用于隔离 producer copy/address 正确性。
- `probe_bsm_*.py`、`probe_inverse_swizzle_*.py`：上半 shared、两个区域、strided source 和 inverse-swizzle 的最小实验。
- `diagnose_v029*_spatial_pattern.py`：按输出列 `% 256` 汇总 mismatch，定位固定 33 列错误。
- `diagnose_v029*_stage_contributions.py`：隔离 output0/output1 与不同 stage 对错误的贡献。

## Profiling 与 codegen

- `run_paired_mctracer_v029.py`：v028l/v029o 三对 AB/BA mcTracer，解析 Step1、Step2、launch gap、device span 和资源字段。
- `profile_one_case_source.py`：从显式 source 构造 OJ case，在 profiler start/stop 区间执行两步 kernel。
- `run_mcprofiler_source.sh`：实验时实际使用的 wrapper 原件；它仍硬编码 v028 输出根，用来解释 targeted 原始数据为何最初落在 v028 目录，禁止直接重跑。
- `run_mcprofiler_source_v029.sh`：仅把归档 ID 改为 v029 的可复现版本；参数为 `CASE STEP SOURCE_TAG SOURCE_PATH targeted|roofline SCOPE`。
- `compare_mcprofiler_reports.py`：生成原始 profiler JSON 差分。它会从错误字符串中误解析数字，因此报告只使用双方都存在且语义有效的字段。
- `capture_codegen_source.py`：从显式 source 编译 OJ case，保存 generated device C++ 与 resource usage。
- `extract_metax_isa.sh`：把 generated device C++ 编译成 xcore1000 device ELF 并导出 MetaX ISA、后端日志与哈希。
- `dump_lowering_source.py`：从显式 source 归档 TileLang `PrimFunc.script(show_meta=True)`；本版补采 parent/candidate Case2 lowering。
- `summarize_iteration.py`：计算四目录 artifact inventory、SHA-256 和 Git identity，并合并到 evidence manifest。
- `validate_iteration.py`：按 AKO4ALL-C500 的四目录契约执行 strict validation。
- `render_roofline.py`：后续若补齐 RoofLine points，用于生成规范化图；本版本身没有伪造图片。

## 关键复现命令

```bash
/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 \
  PYTHONPATH=/root/tilelang-metax MOE_PROJECT_ROOT=/root/tilelang-metax \
  /opt/conda/bin/python run_source_oj.py \
  --kernel-source /root/moe_runs/v029o_overlap_reverse_producer_order.py \
  --source-tag v029o_verdict --cases 1,2,3 --warmup 10 --repeat 100
```

```bash
/opt/conda/bin/python run_paired_v028l_v029o.py \
  --v028l-source /root/moe_runs/v028l_step2_inverse_swizzle_sync_only.py \
  --v029o-source /root/moe_runs/v029o_overlap_reverse_producer_order.py \
  --rounds 10 --warmup 3 --repeat 100 --output /root/moe_runs/v028l_vs_v029o_case2.json
```

所有 profile/benchmark 前都必须确认没有竞争的 TileLang、mcProfiler、mcTracer 或 OJ 进程。16 GiB slice 上不要并行构造两个大 PrimFunc；本次一次并行重试曾因主机内存压力得到 RC=137，串行执行后 lowering 成功。
