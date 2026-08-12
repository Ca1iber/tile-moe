# v021_step1_gate_input_up_order_sc-16g 脚本说明

本目录归档 v021 实际使用的 benchmark、mcTracer、mcProfiler、lowering/ISA、mx-smi 与 Roofline 辅助脚本。所有 source runner 都打印输入文件绝对路径和 SHA-256，避免 main 文件变化污染证据。

## 实际使用

| 文件 | 本轮用途 |
|---|---|
| `run_source_oj.py` | 单 source OJ screen、installed Case1/2/3 与 mx-smi workload |
| `run_paired_source_oj.py` | Case2 四对 AB/BA，warmup=10、repeat=100 |
| `profile_one_case_source.py` | 明确 source 的单 Case 编译、预热与 trace/profile target |
| `run_paired_mctracer.py` | Case2 三对 AB/BA，warmup=3，提取 Step1/Step2/gap/device span |
| `run_mcprofiler_source.sh` | parent/candidate Case2 Step1 targeted replay |
| `summarize_mcprofiler.py` | 检查 waves/private 一致性并生成方向性 summary |
| `capture_codegen_source.py` | parent/candidate Case1/2/3 generated C++ 与资源报告 |
| `extract_metax_isa.sh` | 将 Case2 generated C++ 编译到最终 xcore1000 ISA |
| `analyze_metax_isa.py` | 统计寄存器、静态指令、barrier、private/spill |
| `collect_mxsmi.sh` | installed Case2 repeat=2000 期间同步采样 |
| `collect_environment.sh` | Git、Python、TileLang、MXMACA、mx-smi 环境归档 |
| `run_official_source.py` | 候选 source 的官方 functional/performance 回归 |
| `render_roofline.py` | 使用 mcTracer 中位数和 1400 GB/s sensitivity roof 生成 SVG |

## 关键协议

```text
OJ paired: Case2, 4 pairs, AB/BA alternating, warmup=10, repeat=100, fresh process/sample
mcTracer: Case2, 3 pairs, AB/BA alternating, warmup=3, one captured Step1+Step2/sample
mcProfiler: kernel_kernel, Case2 Step1, targeted metrics, per-kernel, counts=1
installed OJ: Case1/2/3, separate process, warmup=10, repeat=100
mx-smi: installed Case2, warmup=10, repeat=2000
```

## 输入与依赖

- sc-16g：MetaX C500 25% sGPU，16000 MiB quota
- Parent commit：`c0e631a9e846a5bdeaae9aa8fa86207d8c3f9d5f`
- Python：`/opt/conda/bin/python` 3.12.11
- PYTHONPATH / project root：`/root/tilelang-metax`
- MACA / SDK：`/opt/maca` / `/opt/maca-3.7.1`
- mcTracer：`/opt/maca-3.7.1/bin/mcTracer`
- mcProfiler：`/opt/mcProfiler-ubuntu18.04/mcProfiler`

## 相对模板的修改

- `run_paired_source_oj.py` 标签和 summary 名改为 v020/v021，并固定只跑 Case2。
- `run_paired_mctracer.py` 标签、文件前缀和 summary 名改为 v020/v021。
- `run_mcprofiler_source.sh` iteration id 改为 v021，targeted metric 集合保持 v020 协议。
- ISA helper 沿用最终 ELF embedded-bitcode→xcore1000 assembly 路径。

## 产物核对

- [x] 正确性与官方 benchmark 日志
- [x] OJ screen、四对配对与 installed 三 Case
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与一致性摘要
- [x] mx-smi 同步活跃采样
- [x] generated C++、资源报告、最终 ISA 与统计
- [x] Roofline points、SVG、README 与 manifest
