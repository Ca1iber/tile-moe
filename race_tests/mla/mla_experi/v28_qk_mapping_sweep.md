# v28 QK mapping sweep

## 1. 上版本遗留问题

v27 profile 显示，合入 PV4 后，`PV mma plus` 已经不是最大头；`qk_only` 和 `qk_softmax` 仍然占据主要耗时。用户追问 QK 是否也可以使用 PV4 的 mapping 思路，因此本版本专门验证 QK MMA mapping 是否还有可迁移空间。

已知当前主线 QK mapping：

- `qk_block_row_warps = 1`
- `qk_block_col_warps = 2`
- `qk_k_pack = 2`
- 简写为 `1x2x2`

其中 PV4 指的是 PV 侧把 `pv_block_col_warps` 提到 4 后带来的大幅收益。需要验证 QK 侧是否也能通过增加列方向 warp 或调整 k packing 获得收益。

## 2. 问题原因分析

QK 和 PV 的 MMA 形状并不对称：

- QK 输出 score tile 是 `[block_H, block_N] = [16, 32]`。
- PV 输出 O tile 是 `[block_H, dim] = [16, 512]`。

PV 的列维是 512，`col_warps=4` 仍然有足够大的 N/列方向工作量给多个 warp 分摊；QK 的列维只有 32，继续增大 `qk_col_warps` 会让每个 warp 负责的列方向 tile 过窄，当前 TileLang/MACA MMA layout 推导甚至会出现非法形状。

本次实验还验证了两个额外维度：

- 降低 `qk_col_warps` 到 1：减少列方向并行度，理论上可能降低 fragment/layout 压力，但也可能减少 QK tile 内并行。
- 改变 `qk_k_pack`：影响每次 ldmatrix/mma 覆盖的 K 维宽度和内层循环次数。

已验证结论：

- `qk_col_warps=4` 在当前 QK tile 上不合法，编译期报 `Divide by zero`。
- `qk_k_pack=4` 不合法，报 `k_dim must be 16 currently but got 64`。
- 合法配置里，当前 `1x2x2` 在 full、qk_only、qk_softmax 三个口径下都是最快。

当前推测：

- PV4 的收益主要来自 PV 输出列维 512 足够宽，列方向 4 warp 能提高并行度和 MMA 覆盖。
- QK score tile 的列维只有 32，`col_warps=4` 会把列方向切得过细，不符合当前 MMA emitter 对 tile shape 的约束。

## 3. 本版本解决方案

本版本不改主线 kernel，只增加一个 QK mapping sweep 脚本和实验数据。实验脚本基于 v27 stage breakdown 变体，参数化：

- `qk_row_warps`
- `qk_col_warps`
- `qk_k_pack`
- `qk_layout_replicate = 256 // (64 * qk_row_warps * qk_col_warps)`

需要动态调整 `qk_layout_replicate` 的原因是：`acc_s` 的 MMA store layout 与后续 `scores_max/scores_scale` 等 fragment layout 要兼容。原来固定 `.replicate(2)` 只适配 `1x2x2`；当 `qk_col_warps=1` 时需要 `.replicate(4)`，否则会触发布局推导冲突。

## 4. 具体落地策略

新增脚本：

```text
race_tests/mla/mla_experi/v28_qk_mapping_sweep.py
```

输出数据：

```text
race_tests/mla/mla_experi/v28_qk_mapping_sweep.csv
race_tests/mla/mla_experi/v28_qk_mapping_sweep_col4.csv
```

实验命令：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/mla/mla_experi/v28_qk_mapping_sweep.py \
  --cases 21,29,31 \
  --configs 1x1x1,1x1x2,1x2x1,1x2x2,1x2x4 \
  --variants full,qk_only,qk_softmax \
  --repeats 2 \
  --warmup 300 \
  --output race_tests/mla/mla_experi/v28_qk_mapping_sweep.csv
```

补跑 PV4 直接对应的 QK col4 配置：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/mla/mla_experi/v28_qk_mapping_sweep.py \
  --cases 21,29,31 \
  --configs 1x4x1,1x4x2 \
  --variants full,qk_only,qk_softmax \
  --repeats 2 \
  --warmup 300 \
  --output race_tests/mla/mla_experi/v28_qk_mapping_sweep_col4.csv
```

配置含义：

| 配置 | 中文含义 | 结果 |
|---|---|---|
| `1x1x1` | 1 个 row warp，1 个 col warp，k_pack=1 | 合法，但明显慢 |
| `1x1x2` | 1 个 row warp，1 个 col warp，k_pack=2 | 合法，但慢于当前 |
| `1x2x1` | 1 个 row warp，2 个 col warp，k_pack=1 | 合法，但慢于当前 |
| `1x2x2` | 当前主线 QK mapping | 最快 |
| `1x2x4` | 当前列 warp，增大 k_pack 到 4 | 非法，`k_dim must be 16 currently but got 64` |
| `1x4x1` | 尝试把 PV4 的 col_warps=4 套到 QK，k_pack=1 | 非法，`Divide by zero` |
| `1x4x2` | 尝试把 PV4 的 col_warps=4 套到 QK，k_pack=2 | 非法，`Divide by zero` |

## 5. Benchmark 对比

测试环境：

- 远端机器：`vm-4a7p1AkFEGr7cjaK`
- 分支：`exp/mla-v20-stage-breakdown`
- 基准代码状态：v26 PV4 + acc_s replicate fix
- shape：采样 case 21、29、31
- 计时：每个配置 warmup 300，repeat 2，记录 median latency

### full latency

| case | shape 摘要 | `1x1x1` | `1x1x2` | `1x2x1` | `1x2x2` 当前 | 最优 |
|---:|---|---:|---:|---:|---:|---|
| 21 | batch=8, kv_ctx=65536 | 1.817028 ms | 1.205262 ms | 1.313485 ms | 1.113673 ms | `1x2x2` |
| 29 | batch=32, kv_ctx=16384 | 1.784144 ms | 1.199051 ms | 1.305112 ms | 1.092377 ms | `1x2x2` |
| 31 | batch=32, kv_ctx=65536 | 6.765248 ms | 4.592427 ms | 5.017465 ms | 4.179489 ms | `1x2x2` |

### qk_only latency

| case | `1x1x1` | `1x1x2` | `1x2x1` | `1x2x2` 当前 | 最优 |
|---:|---:|---:|---:|---:|---|
| 21 | 1.294147 ms | 0.888901 ms | 1.009018 ms | 0.807152 ms | `1x2x2` |
| 29 | 1.288309 ms | 0.882109 ms | 1.002301 ms | 0.797577 ms | `1x2x2` |
| 31 | 4.965632 ms | 3.339255 ms | 3.816438 ms | 3.005518 ms | `1x2x2` |

### qk_softmax latency

| case | `1x1x1` | `1x1x2` | `1x2x1` | `1x2x2` 当前 | 最优 |
|---:|---:|---:|---:|---:|---|
| 21 | 1.435342 ms | 1.026718 ms | 1.135478 ms | 0.927473 ms | `1x2x2` |
| 29 | 1.426863 ms | 1.016994 ms | 1.123724 ms | 0.918851 ms | `1x2x2` |
| 31 | 5.502389 ms | 3.882314 ms | 4.295517 ms | 3.502189 ms | `1x2x2` |

非法配置：

| 配置 | 失败原因 |
|---|---|
| `1x2x4` | `k_dim must be 16 currently but got 64` |
| `1x4x1` | `Divide by zero` |
| `1x4x2` | `Divide by zero` |

## 6. Profile 指标变化

本版本没有采集新的硬件 profile 指标，只做 mapping 级 benchmark sweep。可复用 v27 的阶段耗时结论作为背景：

| 指标 | v27 结论 | 对本实验的解释 |
|---|---:|---|
| `qk_only/full` | case21 约 74.4%，case29 约 73.0%，case31 约 71.9% | QK 仍值得尝试 mapping |
| `qk_softmax/full` | case21 约 84.7%，case29 约 84.0%，case31 约 83.5% | QK + online softmax 是主瓶颈段 |
| PV MMA 增量 | case21 约 0.0876 ms，case29 约 0.0720 ms，case31 约 0.3312 ms | PV4 后 PV 增量已经小于 QK 段 |

TODO：如果后续继续优化 QK，需要针对 `1x2x2` 采集更细的硬件 profile，例如 MMA utilization、shared bank conflict、register pressure、stall breakdown。

## 7. 实验总结

QK 没有复刻 PV4 的收益。当前 `1x2x2` 仍然是已测配置里的最优 mapping。

关键原因是 QK 的输出 score tile 只有 `[16, 32]`，列维太窄；PV 的输出 tile 是 `[16, 512]`，列方向有足够空间给 `col_warps=4` 展开。`qk_col_warps=4` 在当前 TileLang/MACA emitter 下直接非法，`qk_k_pack=4` 也因为 k 维约束非法。

工程判断：

- 不应把 PV4 合到 QK。
- QK mapping 暂时保留 `qk_row_warps=1, qk_col_warps=2, qk_k_pack=2`。
- 下一步不建议继续在 QK warp mapping 上大范围扫；更有价值的方向是拆 QK content / QK RoPE 的单独耗时，或者研究 `S_shared` 中转和 online softmax 之间的数据路径。
