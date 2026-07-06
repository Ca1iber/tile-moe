# v06 QK-pe manual MMA experiment

## 目标

在 v04 QK SS prototype 基础上，把 split kernel 里的 RoPE score GEMM：

```python
T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)
```

替换为手写 `ldmatrix + mma`。

QK-pe 形状：

```text
Q_pe: [BLOCK_H, pe_dim] = [16, 64]
K_pe: [BLOCK_N, pe_dim] = [32, 64]
acc_s: [16, 32]
```

实现文件：

- `race_tests/mla/mla_experi/v06_qk_pe_manual_prototype.py`

结果文件：

- `race_tests/mla/mla_experi/v06_qk_pe_manual_sample.csv`
- `race_tests/mla/mla_experi/v06_qk_pe_manual_sample_extra.csv`

## 改动

新增一个 `chunk=pe_dim` 的 `TensorCoreIntrinEmitter`：

```python
qk_pe_mma = TensorCoreIntrinEmitter(..., chunk=pe_dim, k_pack=2)
```

然后在 content QK 手写 MMA 后继续累加 QK-pe：

```python
for ki in T.serial(0, pe_dim // (qk_micro_size_k * qk_k_pack)):
    qk_pe_mma.ldmatrix_a(qk_a_local, Q_pe_shared, ki)
    qk_pe_mma.ldmatrix_b(qk_b_local, K_pe_shared, ki)
    qk_pe_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
```

`pe_dim=64`，`qk_micro_size_k * qk_k_pack = 32`，所以只有 2 轮 K tile。

## 采样结果

| case | batch | kv_ctx | QK SS | QK SS + QK-pe manual | speedup | delta |
|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 0.323434 | 0.321631 | 1.0056x | -0.56% |
| 9 | 2 | 16384 | 0.339249 | 0.337257 | 1.0059x | -0.59% |
| 13 | 4 | 8192 | 0.300280 | 0.297631 | 1.0089x | -0.88% |
| 17 | 8 | 2048 | 0.141172 | 0.144100 | 0.9797x | +2.07% |
| 21 | 8 | 65536 | 2.849947 | 2.828087 | 1.0077x | -0.77% |
| 25 | 16 | 32768 | 2.914968 | 2.896344 | 1.0064x | -0.64% |
| 29 | 32 | 16384 | 3.024541 | 3.010651 | 1.0046x | -0.46% |

除 case17 外，其他采样都是小幅收益。case17 是短上下文小 latency 场景，额外手写 MMA 的 ldmatrix/fragment 调度开销超过了替换 `T.gemm` 的收益。

## 结论

QK-pe 手写 MMA 是正确的，但收益很小：大多数长 ctx 或较大工作量 case 只有约 0.5%-0.9% 加速。

原因符合 FLOPs 占比：

```text
QK content: 512
QK pe     : 64
PV        : 512
total GEMM K-equivalent = 1088
QK-pe 占比 = 64 / 1088 = 5.88%
```

所以 QK-pe 即使完全优化，也只能影响很小的一块。当前实现还可能增加一点 fragment / ldmatrix 调度压力，短 ctx 下会反向。

当前建议：

- 不直接无条件并入主线。
- 可以作为长 ctx / 大工作量路径的候选优化。
- 更高收益方向仍然是 PV 手写路径、combine/partial output round-trip、以及按 batch/ctx 分段选择 `num_split`。
