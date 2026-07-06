# v21 PV 内部拆分实验

## 1. 上版本遗留问题

v20 在干净 64G 容器上确认：长上下文 case 中，`softmax + PV update` 的主要大头来自 PV 路径。

v20 关键数据：

| case | full | pv_dummyS | pv_dummyS/full |
|---:|---:|---:|---:|
| 21 | 2.625245 ms | 1.760192 ms | 67.0% |
| 29 | 2.626453 ms | 1.702315 ms | 64.8% |
| 31 | 10.214969 ms | 6.615479 ms | 64.8% |

遗留问题是：`pv_dummyS` 仍然包含 KV copy、PV 的 ldmatrix、PV MMA、Output_partial 写出和 combine，不能判断 PV 路径内部到底是哪一块重。

## 2. 问题原因分析

PV 路径可以粗略拆成：

1. KV/K_pe copy 到 shared；
2. dummy/真实 S 准备；
3. PV 的 `ldmatrix_b` 从 `KV_shared` 喂给 MMA；
4. PV MMA 与 `acc_o` accumulator 累加；
5. `Output_partial` 写出；
6. combine kernel 读 partial output 并合并 split。

如果 `pv_load_only`、`pv_no_mma_output` 接近 `copy_only`，就说明 ldmatrix-only、partial output 写出不是主因。
如果 `pv_no_combine` 接近 `pv_dummyS`，就说明 combine 不是主因。

## 3. 本版本解决方案

新增独立 timing-only 脚本：

```text
race_tests/mla/mla_experi/v21_pv_breakdown.py
```

variant 含义：

| variant | 中文含义 |
|---|---|
| `full` | 完整当前实现，只有这个 variant 做正确性校验 |
| `copy_only` | 只搬运 KV/K_pe 并消费 `KV_shared`，作为基础搬运下限 |
| `pv_dummyS` | 不算 QK/softmax，用常数 S 做 PV MMA，衡量 PV 路径总成本 |
| `pv_load_only` | 不做 PV MMA，只执行 PV 的 `ldmatrix_b` 读取并消费 fragment |
| `pv_no_mma_output` | 不做 PV MMA，只写 dummy `Output_partial`，估计 partial output 写出与 combine 成本 |
| `pv_no_combine` | 执行 dummyS + PV MMA 并写 `Output_partial`，但 combine kernel 只写零，用来估计 combine 成本 |

## 4. 具体落地策略

采样 case：

```text
21, 29, 31
```

运行命令：

```bash
cd /root/tilelang-metax
/opt/conda/bin/python race_tests/mla/mla_experi/v21_pv_breakdown.py \
  --cases 21,29,31 \
  --repeats 3 \
  --warmup 500 \
  --output race_tests/mla/mla_experi/v21_pv_breakdown_sample.csv
```

输出：

```text
race_tests/mla/mla_experi/v21_pv_breakdown_sample.csv
race_tests/mla/mla_experi/v21_pv_breakdown_summary.csv
```

## 5. Benchmark 对比

median latency，单位 ms：

| case | batch | kv_ctx | full | copy_only | pv_dummyS | pv_load_only | pv_no_mma_output | pv_no_combine |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 21 | 8 | 65536 | 2.620455 | 0.454041 | 1.760138 | 0.453875 | 0.453690 | 1.745026 |
| 29 | 32 | 16384 | 2.626638 | 0.470894 | 1.706890 | 0.470559 | 0.469873 | 1.704062 |
| 31 | 32 | 65536 | 10.210844 | 1.610551 | 6.619265 | 1.610949 | 1.605865 | 6.605824 |

关键差分：

| case | pv_dummyS - copy | pv_load_only - copy | pv_no_mma_output - copy | pv_dummyS - pv_no_combine |
|---:|---:|---:|---:|---:|
| 21 | 1.306097 | -0.000166 | -0.000351 | 0.015112 |
| 29 | 1.235996 | -0.000335 | -0.001021 | 0.002828 |
| 31 | 5.008714 | 0.000398 | -0.004686 | 0.013441 |

## 6. Profile 指标变化

本次仍然是 timing attribution，没有采硬件 counter。

已验证现象：

- `pv_load_only` 与 `copy_only` 几乎相同，说明单独 `ldmatrix_b`/fragment feed 不是明显额外大头；
- `pv_no_mma_output` 与 `copy_only` 几乎相同，说明不做 MMA 时，dummy partial output 写出和 combine 也不是大头；
- `pv_no_combine` 与 `pv_dummyS` 非常接近，combine 成本只有约 0.003-0.015 ms；
- `pv_dummyS - copy_only` 在 case31 达到 5.008714 ms，是主要差分。

下一步需要 profile 的硬件指标：

- PV MMA 指令数和 tensor/MMA utilization；
- `ldmatrix_b` 与 MMA 的 issue/latency 关系；
- register usage / occupancy；
- shared load conflict；
- scoreboard / wait stall；
- `acc_o` accumulator fragment 布局与寄存器压力。

## 7. 实验总结

结论：

1. PV 路径的大头进一步缩小到 **PV MMA + accumulator 更新本体**。
2. 不是 KV copy 主导：`copy_only/full` 约 15.8%-17.9%。
3. 不是 PV ldmatrix-only 主导：`pv_load_only` 与 `copy_only` 基本重合。
4. 不是 partial output 写出或 combine 主导：`pv_no_mma_output` 与 `copy_only` 基本重合，`pv_no_combine` 与 `pv_dummyS` 也基本重合。
5. case31 中 `pv_dummyS - copy_only = 5.008714 ms`，约占 full 的 49.1%，这是下一步最值得优化的区域。

下一步最有价值的实验：

- sweep PV MMA mapping：`pv_block_col_warps`、`pv_k_pack`、`pv_warp_col_tiles`；
- 检查 `acc_s_cast` layout 和 `acc_o` store layout；
- 如果 mapping sweep 没有收益，再做硬件 profile，确认是否受寄存器/occupancy 或 MMA issue 限制。
