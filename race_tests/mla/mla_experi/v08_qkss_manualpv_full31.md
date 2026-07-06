# v08 merge QKSS into main and full benchmark

## 改动

正式文件：

- `race_tests/mla/test_tilelang_mla.py`

本次把 v04 prototype 中验证过的 QK content 手写 MMA 合入正式 split path，同时保留当前主线已有的 manual PV 路径。

合入内容：

- 新增 `qk_mma = TensorCoreIntrinEmitter(..., b_transposed=True, chunk=dim, k_pack=2)`
- 新增 `qk_a_local` / `qk_b_local`
- `main_split` 中替换：

```python
T.gemm(Q_shared, KV_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)
```

为：

```python
T.clear(acc_s)
for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
    qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
    qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
    qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
```

未合入 QK-pe manual，因为 v06 显示收益很小且短 ctx 可能反向。

## 运行命令

```bash
cd /root/tilelang-metax
PYTHONPATH=/root/tilelang-metax \
PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True \
bash race_tests/mla/run.sh all
```

输出：

- 默认 CSV: `race_tests/mla/test_cases_mla_batch_ctx_results.csv`
- 本轮备份: `race_tests/mla/mla_experi/v08_qkss_manualpv_full31.csv`

## 全量结果

```text
Summary: 31/31 passed, 0/31 failed
sum latency: 43.552398 ms
avg latency: 1.404916 ms
```

代表 case：

| case | batch | kv_ctx | latency | TFLOPs |
|---:|---:|---:|---:|---:|
| 1 | 1 | 2048 | 0.064451 | 1.1063 |
| 5 | 1 | 32768 | 0.313017 | 3.6447 |
| 9 | 2 | 16384 | 0.321411 | 3.5495 |
| 13 | 4 | 8192 | 0.286569 | 3.9811 |
| 17 | 8 | 2048 | 0.135395 | 4.2130 |
| 21 | 8 | 65536 | 2.672237 | 6.8308 |
| 25 | 16 | 32768 | 2.745826 | 6.6478 |
| 29 | 32 | 16384 | 2.853136 | 6.3977 |
| 30 | 32 | 32768 | 5.406691 | 6.7522 |
| 31 | 32 | 65536 | 10.473472 | 6.9714 |

## 采样对比

| case | split64 base | manual PV only | QKSS only | current QKSS+PV | vs manual PV | vs QKSS only | vs base |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 5 | 0.391039 | 0.395281 | 0.324574 | 0.313017 | 1.263x | 1.037x | 1.249x |
| 9 | 0.431272 | 0.406030 | 0.343853 | 0.321411 | 1.263x | 1.070x | 1.342x |
| 13 | 0.365307 | 0.348669 | 0.296996 | 0.286569 | 1.217x | 1.036x | 1.275x |
| 17 | 0.145386 | 0.141881 | 0.143304 | 0.135395 | 1.048x | 1.058x | 1.074x |
| 21 | 3.733729 | 3.526046 | 2.853128 | 2.672237 | 1.320x | 1.068x | 1.397x |
| 25 | 3.803499 | 3.592743 | 2.910431 | 2.745826 | 1.308x | 1.060x | 1.385x |
| 29 | 3.994235 | 3.791520 | 3.024034 | 2.853136 | 1.329x | 1.060x | 1.400x |

## 结论

1. QKSS 合入正式 main 后 correctness 全量通过。
2. QKSS 和 manual PV 能叠加，当前正式版本比 manual-PV-only 在采样上快约 1.05x 到 1.33x。
3. 当前仍固定 `num_split=64`，尚未合入 v07 的 shape-based split dispatch。
4. 下一步可以把 v07 dispatch 规则叠加到当前正式 QKSS+PV 版本上，再跑 1-31。
