# v020_step1_prefetch_before_barrier_sc-16g 脚本说明

## 核心脚本

- `run_source_oj.py`：从显式 source snapshot 加载 kernel，运行指定 OJ case；输出 source SHA、正确性和平均时延。
- `run_paired_source_oj.py`：按 AB/BA 顺序启动独立进程，生成逐 pair 原始日志、统计和 paired change。
- `profile_one_case_source.py`：显式 source 的单 case profiler target，只在 `torch.cuda.profiler.start/stop` 区间发射一次 Step1+Step2。
- `run_paired_mctracer.py`：三轮 AB/BA mcTracer，解析 Step1、Step2、launch gap 和 device span。
- `run_mcprofiler_source.sh`：按 source、case、step 和 metric set 运行 mcProfiler，归档 raw output 与 target command。
- `summarize_mcprofiler.py`：抽取定向计数器，并检查 achieved/dispatched waves 与 private instructions 的一致性。
- `capture_codegen_source.py`：从显式 source 编译指定 OJ shape，保存最终生成 C++、compiler log 与资源报告。
- `extract_metax_isa.sh`：从生成 C++ 编译 device ELF，提取 embedded bitcode，并重放 backend 得到 xcore1000 ISA。
- `analyze_metax_isa.py`：统计 ISA 的资源、MMA、global/shared/private、barrier、`snop` 和 spill annotations。
- `collect_mxsmi.sh`：在 workload 生命周期内同步轮询 mx-smi。
- `render_roofline.py`：从 CSV 点数据生成 SVG/PNG（若 matplotlib 可用）及 render manifest。
- `collect_environment.sh`：记录 Git、Python、TileLang、PyTorch、mcProfiler/mcTracer 与 mx-smi 环境。

## 本轮主要复现命令

Case2 严格 OJ 配对：

```bash
/opt/conda/bin/python run_paired_source_oj.py \
  --runner run_source_oj.py \
  --parent-source /root/moe_runs/v020_step1_prefetch_before_barrier/v019_parent.py \
  --candidate-source /root/moe_runs/v020_step1_prefetch_before_barrier/v020_selective_32e.py \
  --output-dir <output> --pairs 4 --warmup 10 --repeat 100 --cases 2
```

Case2 mcTracer 配对：

```bash
/opt/conda/bin/python run_paired_mctracer.py \
  --repo /root/tilelang-metax \
  --profile-script profile_one_case_source.py \
  --parent-source /root/moe_runs/v020_step1_prefetch_before_barrier/v019_parent.py \
  --candidate-source /root/moe_runs/v020_step1_prefetch_before_barrier/v020_selective_32e.py \
  --output-root <output> --pairs 3 --warmup 3
```

targeted mcProfiler：

```bash
./run_mcprofiler_source.sh 2 1 <tag> <source.py> targeted audit1
```

ISA：

```bash
PROJECT_ROOT=/root/tilelang-metax MACA_ROOT=/opt/maca-3.7.1 \
  ./extract_metax_isa.sh <generated_device.cpp> <output_dir>
/opt/conda/bin/python analyze_metax_isa.py <output.metax.s> --output summary.json
```

## 注意事项

- elapsed-time 验收以 OJ AB/BA 为主；mcTracer 用于分阶段定位，mcProfiler 用于定向 counter，不互相替代。
- 首次长时间空闲后的 Case2 parent 出现 6.509 ms cold-state outlier，原始数据保留但未进入 verdict；复现时先完成一轮设备热身。
- 不要在 mcTracer/mcProfiler 运行期间并发 official/OJ 或另一工作树的 GPU workload。
- selective Case3 的生成 C++ 必须与 v019 parent 字节相同；这是防止 64-expert 回退的静态验收门。
