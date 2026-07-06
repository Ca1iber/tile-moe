# MLA 使用说明

## 1. 文件定位

`test_tilelang_mla.py` 是当前 MLA 赛题的功能测试和性能测试入口，内部包含：

1. `flashattn(...)`：TileLang MLA decode kernel。
2. `ref_program(...)`：PyTorch golden reference。
3. `main(...)`：单个 shape 的正确性校验和 latency/TFlops 输出。
4. JSON mode：批量读取 case，生成 CSV 结果。

`test_cases_mla_batch_ctx.json` 是当前批量测试配置。现有 case 固定为：

- `heads = 16`
- `kv_heads = 1`
- `dim = 512`
- `pe_dim = 64`
- QK dim 为 `dim + pe_dim = 576`
- VO dim 为 `dim = 512`
- `batch` 覆盖 1, 2, 4, 8, 16, 32
- `kv_ctx` 覆盖 2048 到 65536

## 2. 运行方式

在仓库根目录运行单个 case：

```bash
python race_tests/mla/test_tilelang_mla.py --no-json --batch 1 --heads 16 --kv_heads 1 --kv_ctx 8192 --dim 512 --pe_dim 64
```

运行默认批量 case：

```bash
python race_tests/mla/test_tilelang_mla.py
```

指定自定义 JSON：

```bash
python race_tests/mla/test_tilelang_mla.py --json race_tests/mla/test_cases_mla_batch_ctx.json
```

批量运行会输出：

- 终端中的每个 case PASS/FAIL、latency、TFlops。
- CSV 文件，默认路径为 `race_tests/mla/test_cases_mla_batch_ctx_results.csv`。

## 3. 正确性标准

测试脚本使用 `profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)` 和 PyTorch reference 对比。

比赛优先级是 correctness gating，然后才是端到端 latency。遇到失败 case 时，先修正确性，不要基于失败实现继续调参。

## 4. 当前 baseline 结构

当前 kernel 是 decode MLA，输入输出布局为：

- `Q`: `[batch, heads, dim]`
- `Q_pe`: `[batch, heads, pe_dim]`
- `KV`: `[batch, seqlen_kv, kv_head_num, dim]`
- `K_pe`: `[batch, seqlen_kv, kv_head_num, pe_dim]`
- `Output`: `[batch, heads, dim]`

核心计算：

1. `Q @ KV^T`
2. `Q_pe @ K_pe^T`
3. online softmax
4. `P @ KV`

当前默认参数在 `main(...)` 中：

- `BLOCK_N = 32`
- `BLOCK_H = min(16, heads // kv_heads)`
- `num_split = 1`
- `softmax_scale = (dim + pe_dim) ** -0.5`

`run_regression_perf(...)` 里另有一组回归性能参数，当前是：

- `BLOCK_N = 64`
- `BLOCK_H = min(64, heads // kv_heads)`
- `num_split = 1`

调参前需要确认测试入口实际调用的是哪一组参数。

## 5. 优化记录建议

每次有意义的优化建议至少记录：

- git commit 或 diff 摘要
- 修改点，例如 `BLOCK_N`、`BLOCK_H`、`num_split`、`num_stages`、`threads`
- 测试命令
- batch / kv_ctx / heads / dim / pe_dim
- pass rate
- latency ms
- TFlops
- 观察到的瓶颈或回退原因

建议从低风险参数开始：

1. 先跑完整 baseline CSV。
2. 对 `batch=1/2` 的长 `kv_ctx` case 评估 split-KV。
3. 对大 batch case 评估主 kernel 的 `BLOCK_N`、`BLOCK_H`、pipeline stage 和线程数。
4. 再考虑更激进的布局、shared/fragment 放置、combine kernel 和 swizzle 调整。

## 6. 参考实现

仓库中可以对照的 MLA 示例：

- `examples/maca/deepseek_mla/example_mla_decode.py`
- `examples/maca/deepseek_mla/example_mla_decode_paged.py`
- `examples/maca/deepseek_mla/example_mla_decode_ws.py`
- `examples/maca/deepseek_mla/README.md`

比赛目录的代码应优先保持接口简单、结果可复现；优化实验可以另建文件，确认收益后再合并回测试入口。
