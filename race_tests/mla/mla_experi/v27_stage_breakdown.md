# v27 v26 主线 stage breakdown profile

## 1. 目标

v26 合入 PV4 后，全量 31 case 总延迟从 `41.307723 ms` 降到 `17.915429 ms`。由于 PV 路径已经大幅变快，原来 v21/v22 的瓶颈结论不再可靠。

本轮目标是重新 profile 当前 v26 主线，判断新的主要耗时在：

- copy / KV load；
- QK content + QK RoPE；
- online softmax / S bridge；
- PV4 MMA；
- partial output / combine。

## 2. 方法

新增脚本：

```text
race_tests/mla/mla_experi/v27_stage_breakdown.py
```

数据：

```text
race_tests/mla/mla_experi/v27_stage_breakdown_sample.csv
```

命令：

```bash
cd /root/tilelang-metax
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/mla/mla_experi/v27_stage_breakdown.py \
  --cases 21,29,31 \
  --repeats 3 \
  --warmup 500 \
  --output race_tests/mla/mla_experi/v27_stage_breakdown_sample.csv
```

采样 case：

| case | batch | kv_ctx | 选择原因 |
|---:|---:|---:|---|
| 21 | 8 | 65536 | 长 ctx，中 batch |
| 29 | 32 | 16384 | 高 batch，中长 ctx |
| 31 | 32 | 65536 | 最大压力 case |

## 3. Variant 含义

| variant | 中文含义 |
|---|---|
| `full` | 完整 v26 实现，只有这个 variant 做 correctness 校验 |
| `copy_only` | 只搬运 KV/K_pe 并消费 KV_shared，估计基础 copy 下限 |
| `qk_only` | 只做 QK content + QK RoPE，并消费 score 防止 DCE |
| `qk_softmax` | 做 QK + online softmax + S bridge，不做 PV |
| `no_pv` | 做 QK + online softmax + partial/combine 框架，不做 PV |
| `pv_dummyS` | 不做 QK/softmax，用常数 S 做 PV4 MMA，估计 PV 路径 |
| `pv_load_only` | 不做 PV MMA，只做 PV ldmatrix_b 并消费 fragment |
| `pv_no_mma_output` | 不做 PV MMA，只写 dummy Output_partial，估计写出/combine |
| `pv_no_combine` | 做 dummyS + PV4 MMA + partial 写出，但跳过 combine reduce |

注意：这些 variant 是独立 ablation kernel，不能简单相加得到 full latency。它们用于判断相对重心和方向，不是严格的硬件 counter 分摊。

## 4. 结果

### case21

| variant | latency | full 占比 |
|---|---:|---:|
| full | 1.098551 ms | 100.0% |
| copy_only | 0.445705 ms | 40.6% |
| qk_only | 0.817500 ms | 74.4% |
| qk_softmax | 0.930449 ms | 84.7% |
| no_pv | 0.929185 ms | 84.6% |
| pv_dummyS | 0.534839 ms | 48.7% |
| pv_load_only | 0.447241 ms | 40.7% |
| pv_no_mma_output | 0.442333 ms | 40.3% |
| pv_no_combine | 0.520182 ms | 47.4% |

派生差值：

| 项 | 差值 |
|---|---:|
| qk_softmax - qk_only | 0.112949 ms |
| pv_dummyS - pv_load_only | 0.087598 ms |
| pv_dummyS - pv_no_combine | 0.014657 ms |

### case29

| variant | latency | full 占比 |
|---|---:|---:|
| full | 1.096269 ms | 100.0% |
| copy_only | 0.461426 ms | 42.1% |
| qk_only | 0.800783 ms | 73.0% |
| qk_softmax | 0.921110 ms | 84.0% |
| no_pv | 0.919894 ms | 83.9% |
| pv_dummyS | 0.533509 ms | 48.7% |
| pv_load_only | 0.461462 ms | 42.1% |
| pv_no_mma_output | 0.455244 ms | 41.5% |
| pv_no_combine | 0.526797 ms | 48.1% |

派生差值：

| 项 | 差值 |
|---|---:|
| qk_softmax - qk_only | 0.120327 ms |
| pv_dummyS - pv_load_only | 0.072047 ms |
| pv_dummyS - pv_no_combine | 0.006712 ms |

### case31

| variant | latency | full 占比 |
|---|---:|---:|
| full | 4.182895 ms | 100.0% |
| copy_only | 1.602071 ms | 38.3% |
| qk_only | 3.008190 ms | 71.9% |
| qk_softmax | 3.491281 ms | 83.5% |
| no_pv | 3.490759 ms | 83.5% |
| pv_dummyS | 1.930480 ms | 46.2% |
| pv_load_only | 1.599296 ms | 38.2% |
| pv_no_mma_output | 1.575415 ms | 37.7% |
| pv_no_combine | 1.926313 ms | 46.1% |

派生差值：

| 项 | 差值 |
|---|---:|
| qk_softmax - qk_only | 0.483091 ms |
| pv_dummyS - pv_load_only | 0.331184 ms |
| pv_dummyS - pv_no_combine | 0.004167 ms |

## 5. 结论

### 5.1 当前最大重心已经不是 PV

v21 时代 PV 路径是大头；v26 PV4 后，PV dummyS 相对 full 约：

| case | pv_dummyS / full |
|---:|---:|
| 21 | 48.7% |
| 29 | 48.7% |
| 31 | 46.2% |

但 `qk_softmax / full` 约：

| case | qk_softmax / full |
|---:|---:|
| 21 | 84.7% |
| 29 | 84.0% |
| 31 | 83.5% |

这说明当前 full 的主要重心已经转到 QK + online softmax + S bridge 这条路径。

### 5.2 QK content + RoPE 是最大单块

`qk_only / full`：

| case | qk_only / full |
|---:|---:|
| 21 | 74.4% |
| 29 | 73.0% |
| 31 | 71.9% |

这说明 QK content + QK RoPE 的成本非常高。由于 QK 维度是 `dim + pe_dim = 512 + 64`，其中 content QK 是 512 维，RoPE QK 是 64 维，下一步更值得先看 content QK 的 mapping / k_pack / layout，而不是继续盲调 PV。

### 5.3 softmax / S bridge 仍有可见成本

`qk_softmax - qk_only`：

| case | 差值 |
|---:|---:|
| 21 | 0.112949 ms |
| 29 | 0.120327 ms |
| 31 | 0.483091 ms |

这部分包括 online max、exp2、reduce_sum、`acc_s -> S_shared -> acc_s_cast`，以及相关 logsum 更新。它不是最大块，但已经是可优化目标。

### 5.4 PV4 MMA 本体相对较小

`pv_dummyS - pv_load_only` 粗略代表 PV4 MMA + accumulator update 的增量：

| case | 差值 |
|---:|---:|
| 21 | 0.087598 ms |
| 29 | 0.072047 ms |
| 31 | 0.331184 ms |

这比 v21 时代小很多。PV4 已经把原先的大头压下去了。

### 5.5 combine 几乎不是问题

`pv_dummyS - pv_no_combine`：

| case | 差值 |
|---:|---:|
| 21 | 0.014657 ms |
| 29 | 0.006712 ms |
| 31 | 0.004167 ms |

combine 不是下一步优化重点。

## 6. 下一步建议

下一步优先级：

1. 先拆 QK content 和 QK RoPE，确认 512 维 content QK 占比。
2. 重点看 QK content MMA mapping，尤其 `qk_block_col_warps`、`qk_k_pack`、`acc_s.replicate(2)` 后的 register/layout 代价。
3. 再看 softmax/S bridge，尤其 `T.copy(acc_s, S_shared)`、`T.sync_threads()`、`T.copy(S_shared, acc_s_cast)` 是否还能减少。
4. 暂时不要优先继续调 PV4；PV4 本体已经不是最大块。
5. combine 不需要优先动。
