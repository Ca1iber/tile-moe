# v011_inverse_swizzle_bsm_sc-16g 脚本说明

这些文件是版本初始化时复制出的模板。关闭版本前，必须把实际使用过的命令、参数和本版本对模板的修改写在本页；未执行的脚本不要伪装成已执行证据。

## 脚本清单

| 文件 | 用途 | 主要输入 | 默认输出 |
|---|---|---|---|
| `collect_environment.sh` | Git、软件、mx-smi 与源码身份 | `PROJECT_ROOT`、`PYTHON_BIN` | `restart-rep/v011_inverse_swizzle_bsm_sc-16g/` |
| `collect_mxsmi.sh` | 在目标 workload 运行期间同步采样 | `WORKLOAD_COMMAND`、可选 `MXSMI_SAMPLE_COMMAND` | `profiler/mxsmi/` |
| `run_correctness.sh` | 权威正确性门禁 | `CORRECTNESS_COMMAND` | `correctness/` |
| `run_official_benchmark.sh` | 官方 benchmark | 可选 `OFFICIAL_BENCHMARK_COMMAND` | `benchmark/*official*` |
| `run_oj_benchmark.sh` | 精确 OJ benchmark | 可选 `OJ_BENCHMARK_COMMAND` | `benchmark/*oj*` |
| `run_mctracer.sh` | 时间线、Step1/Step2 与 launch gap | `MCTRACER_COMMAND` | `profiler/mctracer/` |
| `run_mcprofiler.sh` | 针对假设的硬件计数器 | `MCPROFILER_COMMAND` | `profiler/mcprofiler/` |
| `dump_tilelang_codegen.py` | 归档 lowering、生成代码、汇编和资源报告 | 显式 artifact 路径 | `codegen/` |
| `render_roofline.py` | 生成双屋顶/多屋顶 SVG、渲染清单，以及可选 PNG（需要 matplotlib） | points CSV、compute/bandwidth roofs | `moe-roofline/v011_inverse_swizzle_bsm_sc-16g/` |
| `run_iteration_bundle.sh` | 顺序执行环境、正确性、双 benchmark 和 profile | 上述命令变量 | 上述各目录 |

## 本版本实际命令

```bash
cd /root/tilelang-pipeline
PROJECT_ROOT=/root/tilelang-pipeline \
  OJ_BENCHMARK_COMMAND="cd /root/tilelang-pipeline && PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100" \
  bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/run_oj_benchmark.sh
PROJECT_ROOT=/root/tilelang-pipeline \
  OFFICIAL_BENCHMARK_COMMAND="cd /root/tilelang-pipeline/race_tests/moe && PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python fusedmoe_benchmark.py" \
  bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/run_official_benchmark.sh

# 历史工作树中已实际执行，日志与精确命令已随产物复制：
bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/run_v009_v011b_paired_case3.sh
bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/run_v011b_v011c_paired.sh
bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/run_v011_mctracer.sh
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/profile_v011_codegen.py
bash race_tests/moe/restart-scripts/v011_inverse_swizzle_bsm_sc-16g/extract_metax_isa_v011.sh
```

## 输入与依赖

- 机器 / sGPU：sc-16g，MetaX C500，25% compute quota，16000 MiB VRAM quota，104 AP。
- Git commit：父证据 `9d7a30ab`；分支 `pipeline`；关闭态 kernel SHA-256 `ca089001...92b32`。
- Python / TileLang / MXMACA：Python 3.12.11，TileLang dev build，MACA 3.7.1.5，PyTorch 2.8.0+metax3.7.1.3。
- mcProfiler / mcTracer 参数依据：执行 Case3 mcTracer；mcProfiler 定向采集 v011b Step1/Step2 与 v011c Step1 的 ISU、VL1、WSM、occupancy 和 duty 指标，未采集新 RoofLine。

## 相对模板的修改

- 增加 inverse-source swizzle 专用 low-level `tl.maca_memcpy_async` helper。
- 保留 v011a/v011b/v011c 三个子探针以记录单缓冲、ping-pong 和 Step1 token 合并的演化。
- 独立 worktree 复跑通过 `PYTHONPATH=/root/tilelang-metax` 复用已验证 compiler build，kernel 始终从 `pipeline` worktree 加载。

## 产物核对

- [x] 正确性日志
- [x] 官方 benchmark 原始日志
- [x] OJ benchmark 原始日志
- [x] mcTracer 原始 trace 与阶段摘要
- [x] mcProfiler 原始结果与假设相关摘要
- [ ] mx-smi 同步采样（性能已明确拒绝，未执行）
- [x] lowering / generated device / assembly / resources
- [ ] Roofline points、PNG、SVG 与 manifest（未为被拒绝候选重算）
