# v027_step2_input_pingpong_sc-16g 脚本说明

## 本版本新增/实际使用脚本

| 文件 | 用途 |
|---|---|
| `profile_one_case_source.py` | 从显式源码快照构造一个 OJ Case，并只 profile 一次 Step1+Step2 |
| `v027_run_paired_mctracer.py` | 以 AB/BA/AB 独立进程采父子 mcTracer，并汇总 Step1/Step2/gap |
| `v027_run_mcprofiler_source.sh` | 对显式源码和指定 Step 采 targeted 或 RoofLine metrics |
| `run_compile_order_balanced_oj.py` | 从 v026 复制；四实例 Latin-order 稳定时钟对称测试 |
| `v027_run_compile_order_balanced_case1.py` | Case1 临时专用平衡脚本 |
| `v027_run_compile_order_balanced_case3.py` | Case3 临时专用平衡脚本 |
| `capture_codegen_source.py` | 对显式源码捕获生成 C++、compiler log 和资源 JSON |
| `extract_metax_isa.sh` | 从生成 C++ 编译并提取 MetaX ISA |
| 模板脚本 | correctness、官方/OJ benchmark、mx-smi、mcTracer、mcProfiler、roofline 统一入口 |

## 关键命令约束

- 远端 login shell 会覆盖 cwd/PYTHONPATH；命令中显式使用 `cd /root/tilelang-metax`、绝对脚本路径和 `PYTHONPATH=/root/tilelang-metax`。
- 对称 verdict：8 rounds，warmup 20，repeat 80，precondition 3 cycles × 30 repeats。
- mcTracer：Case2，3 pairs，AB/BA/AB，warmup 5，逐次检查竞争 GPU workload。
- mcProfiler：Case2 Step2，`kernel_kernel_1`，targeted 与 RoofLine 各采父/子一次，`--per-kernel --counts 1`。
- mx-smi：Case2 warmup 100/repeat 1000，同时默认 `mx-smi` 采样；由于 CLI 采样慢，仅作环境证据。

## 产物核对

- [x] 三 Case 正确性与正式 OJ 日志
- [x] 官方 fusedmoe functional/performance 日志
- [x] 四组 balanced verdict JSON/log
- [x] mcTracer 六份原始 trace 与汇总
- [x] mcProfiler targeted/RoofLine 原始报告
- [x] mx-smi 同步采样和 workload log
- [x] 三 Case generated C++/resource，父子 Case2 ISA
- [x] RoofLine 原生父/子图片与限制说明
