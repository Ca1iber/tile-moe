# v010_async_wait_fence_dedup_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v010_async_wait_fence_dedup_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `profile_v010_codegen.py` | 编译三个 OJ shape，收集 C++ 与 MXCC resource usage | 当前 `custom_fusedmoe.py` | `restart-rep/.../codegen/` |
| `probe_maca_async_copy_layout.py` | v006 原始 sync/async × identity/swizzle 对照 | rows、layout、copy mode | `/tmp/probe_*.cpp` |
| `probe_maca_async_direct_swizzle.py` | 对比 tileop 与手工 layout-aware dst 地址；证明两者都受 BSM lane 固定路由限制 | 32/64/128×64 | `/tmp/probe_direct_swizzle_*.cpp` |
| `probe_maca_async_inverse_source.py` | 对 global 源 chunk 应用 XOR 逆 swizzle，验证 BSM 直写 swizzled 物理布局 | 32/64/128×64 | stdout JSON + `/tmp/probe_direct_swizzle_*.cpp` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v010_async_wait_fence_dedup_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、正确性、双 benchmark 和 profile | 上述命令变量 | 上述各目录 |

## 本版本实际命令

```bash
PYTHONPATH=. python race_tests/moe/restart-scripts/v010_async_wait_fence_dedup_sc-16g/profile_v010_codegen.py
PYTHONPATH=. python race_tests/moe/oj_benchmark.py --cases 1,2,3 --warmup 5 --repeat 30
PYTHONPATH=. python /tmp/probe_maca_async_direct_swizzle.py
PYTHONPATH=. python /tmp/probe_maca_async_inverse_source.py
```

## 输入与依赖

- 机器 / sGPU：sc-16g，C500 16 GiB slice
- Git parent：`6aed14df`
- Python / TileLang：`/opt/conda/bin/python`，开发树 `/root/tilelang-metax/build`
- SDK：MACA 3.7.1；builtin 语义来自 `__clang_maca_device_functions.h`
- mcProfiler / mcTracer：未运行；候选未通过正确性门禁。

## 相对模板的修改

- 增加 `profile_v010_codegen.py` 与 ISA 提取脚本。
- 增加两个 BSM swizzle 隔离探针；逆 swizzle 探针成为 v011 的实现依据。

## 产物核对

- [x] 正确性日志与结构化子探针摘要
- [ ] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志（失败门禁；不作为性能结果）
- [ ] mcTracer 原始 trace 与阶段摘要
- [ ] mcProfiler 原始结果与假设相关摘要
- [ ] mx-smi 同步采样
- [x] generated device / resources；v010a 与 v009 byte-identical，故未重复 ISA
- [ ] Roofline points、PNG、SVG 与 manifest
