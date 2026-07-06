# v22 PV mapping sweep

## 1. 上版本遗留问题

v21 已经把 “softmax + PV update” 继续拆开，结论是长上下文 case 中 PV 路径的大头不是 KV copy、不是 `ldmatrix_b` only、不是 partial output 写出，也不是 combine，而是 `PV MMA + acc_o accumulator 更新` 本体。

v21 关键数据：

| case | full | copy_only | pv_dummyS | pv_load_only | pv_no_combine | 结论 |
|---:|---:|---:|---:|---:|---:|---|
| 21 | 2.620455 ms | 0.454041 ms | 1.760138 ms | 0.453875 ms | 1.745026 ms | PV MMA/update 是主成本 |
| 29 | 2.626638 ms | 0.470894 ms | 1.706890 ms | 0.470559 ms | 1.704062 ms | combine 几乎不是瓶颈 |
| 31 | 10.210844 ms | 1.610551 ms | 6.619265 ms | 1.610949 ms | 6.605824 ms | `pv_dummyS - copy_only = 5.008714 ms` |

所以 v22 的问题是：当前手写 PV GEMM 的 MMA mapping 是否还有低风险参数空间。

## 2. 问题原因分析

当前 PV 核心代码是：

```python
for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
```

固定条件：

- `block_N = 32`
- `block_H = 16`
- `dim = 512`
- `pv_micro_size_k = 16`
- `pv_block_row_warps = 1`
- QK mapping、split dispatch、swizzle、online softmax 逻辑都不变

可调空间：

- `pv_block_col_warps`：输出列方向分成几组 warp。直观含义是一个 CTA 内把 512 个输出维度沿列方向分给多少组 warp。
- `pv_k_pack`：K 维一次 MMA 打包多少个 16 宽 micro tile。`block_N=32` 时，`k_pack=1` 会拆成 2 轮 MMA，`k_pack=2` 一轮完成。

当前推测：

- `pv_block_col_warps=1` 可能列方向并行度不足，单组 warp 要负责 512 输出列，accumulator/register 压力和串行列覆盖都更重。
- `pv_k_pack=1` 可能降低单轮压力，但会把 K=32 拆成两轮，增加循环和 MMA 发射次数。
- `pv_block_col_warps=4` 理论上列方向并行度更高，但可能不满足当前 `TensorCoreIntrinEmitter` 对 `acc_o` store layout / warp_col_tiles 的隐含约束。

## 3. 本版本解决方案

写独立实验脚本 `race_tests/mla/mla_experi/v22_pv_mapping_sweep.py`，不修改主 benchmark 文件。

实验矩阵：

| 配置 | 中文含义 |
|---|---|
| `1x1` | 列方向 1 组 warp，每组约 512 个输出列；`k_pack=1`，K=32 拆成 2 轮 MMA |
| `1x2` | 列方向 1 组 warp，每组约 512 个输出列；`k_pack=2`，K=32 一轮完成 |
| `2x1` | 列方向 2 组 warp，每组约 256 个输出列；`k_pack=1`，K=32 拆成 2 轮 MMA |
| `2x2` | 当前 baseline：列方向 2 组 warp，每组约 256 个输出列；`k_pack=2`，K=32 一轮完成 |
| `4x1` | 列方向 4 组 warp，每组约 128 个输出列；`k_pack=1`，K=32 拆成 2 轮 MMA |
| `4x2` | 列方向 4 组 warp，每组约 128 个输出列；`k_pack=2`，K=32 一轮完成 |

成功标准：

- 先跑 case21 smoke，筛掉 correctness fail 的 mapping。
- 对 correctness PASS 的 mapping 跑 case21/29/31，每个配置 3 次，取 median。
- 如果某配置相对 `2x2` 平均提升超过 3%，再考虑进入主线。

## 4. 具体落地策略

文件：

- `race_tests/mla/mla_experi/v22_pv_mapping_sweep.py`
- `race_tests/mla/mla_experi/v22_pv_mapping_sweep.csv`
- `race_tests/mla/mla_experi/v22_pv_mapping_summary.csv`
- `race_tests/mla/mla_experi/v22_pv_mapping_all_smoke.csv`
- `race_tests/mla/mla_experi/v22_pv_mapping_all_smoke_summary.csv`

脚本变化：

- 在 `flashattn(...)` 中新增 `pv_block_col_warps_override` 和 `pv_k_pack_override`。
- 只替换：
  - `pv_k_pack = pv_k_pack_override`
  - `pv_block_col_warps = pv_block_col_warps_override`
- 每个 case/config 的第 0 次 repeat 做 correctness；如果失败，后续 repeat 跳过，避免给错误 kernel 计时。
- CSV 中记录 `mapping_desc`，用中文解释每个参数组合的含义。

smoke 命令：

```bash
/opt/conda/bin/python race_tests/mla/mla_experi/v22_pv_mapping_sweep.py \
  --cases 21 \
  --configs 1x1,1x2,2x1,2x2,4x1,4x2 \
  --repeats 1 \
  --warmup 200 \
  --output race_tests/mla/mla_experi/v22_pv_mapping_all_smoke.csv \
  --summary-output race_tests/mla/mla_experi/v22_pv_mapping_all_smoke_summary.csv
```

正式 sweep 命令：

```bash
/opt/conda/bin/python race_tests/mla/mla_experi/v22_pv_mapping_sweep.py \
  --cases 21,29,31 \
  --configs 1x1,1x2,2x1,2x2 \
  --repeats 3 \
  --warmup 500 \
  --output race_tests/mla/mla_experi/v22_pv_mapping_sweep.csv \
  --summary-output race_tests/mla/mla_experi/v22_pv_mapping_summary.csv
```

## 5. Benchmark 对比

正式 sweep 结果，median latency：

| case | batch | kv_ctx | mapping | latency | 相对 2x2 | 备注 |
|---:|---:|---:|---|---:|---:|---|
| 21 | 8 | 65536 | `1x1` | 11.229088 ms | -76.647% | 正确但很慢 |
| 21 | 8 | 65536 | `1x2` | 11.085504 ms | -76.345% | 正确但很慢 |
| 21 | 8 | 65536 | `2x1` | 2.733282 ms | -4.060% | 正确但慢于 baseline |
| 21 | 8 | 65536 | `2x2` | 2.622300 ms | baseline | 当前最优 |
| 29 | 32 | 16384 | `1x1` | 11.377120 ms | -76.935% | 正确但很慢 |
| 29 | 32 | 16384 | `1x2` | 11.080992 ms | -76.319% | 正确但很慢 |
| 29 | 32 | 16384 | `2x1` | 2.735526 ms | -4.073% | 正确但慢于 baseline |
| 29 | 32 | 16384 | `2x2` | 2.624099 ms | baseline | 当前最优 |
| 31 | 32 | 65536 | `1x1` | 45.593472 ms | -77.599% | 正确但很慢 |
| 31 | 32 | 65536 | `1x2` | 44.494591 ms | -77.046% | 正确但很慢 |
| 31 | 32 | 65536 | `2x1` | 10.650283 ms | -4.103% | 正确但慢于 baseline |
| 31 | 32 | 65536 | `2x2` | 10.213347 ms | baseline | 当前最优 |

smoke correctness：

| mapping | case21 结果 | 现象 |
|---|---|---|
| `1x1` | PASS | latency 11.212289 ms |
| `1x2` | PASS | latency 11.084064 ms |
| `2x1` | PASS | latency 2.731422 ms |
| `2x2` | PASS | latency 2.621739 ms |
| `4x1` | FAIL | mismatch 从输出列 256 开始，约 50% 元素错误 |
| `4x2` | FAIL | mismatch 从输出列 256 开始，约 50% 元素错误 |

## 6. Profile 指标变化

本版本没有采集硬件 profile counter，只做 correctness + latency sweep。

与 v21 的 profile/拆分结论结合看：

| 指标 | v21 结论 | v22 观察 | 解释 |
|---|---:|---:|---|
| PV copy / ldmatrix only | 约等于 copy_only | 未单独重采 | mapping 变化主要影响 MMA/update，不是 copy |
| combine | case31 约 0.013 ms | 未单独重采 | 不影响本次 mapping 选择 |
| `2x1` vs `2x2` | TODO | 慢约 4.1% | `k_pack=1` 多一轮 K 循环，没有换来足够的压力下降 |
| `1x*` vs `2x2` | TODO | 慢约 76% 到 78% | 列方向并行度不足，单组 warp 覆盖 512 列代价太高 |
| `4x*` correctness | TODO | FAIL | 当前 layout/mapping 不能直接扩到 4 组列 warp |

TODO: 如果后续要继续拆 PV mapping，需要采集寄存器数、occupancy、MMA utilization、以及 generated code 中 `acc_o` store layout 覆盖列范围。

## 7. 实验总结

本实验没有找到比当前 `2x2` 更快的合法 PV mapping。

已验证结论：

- `pv_block_col_warps=2, pv_k_pack=2` 仍是这组自然 mapping 里的最优点。
- `k_pack=1` 在 `pv_block_col_warps=2` 下稳定慢约 4.1%，说明把 K=32 拆成两轮没有收益。
- `pv_block_col_warps=1` 虽然正确，但慢约 4 倍，不值得继续。
- `pv_block_col_warps=4` 不是合法替换，case21 从输出列 256 开始出现约 50% mismatch，推测是当前 `TensorCoreIntrinEmitter` layout 对 `dim=512` 的列覆盖/存储映射不兼容。

工程判断：

- 当前主线不合入任何 PV mapping 参数改动。
- `2x2` 应保留为 baseline。
- 下一步如果继续攻 PV，方向不应该是简单扫 `pv_block_col_warps/k_pack`，而应该看更结构性的方案，例如：
  - 调整 `acc_o` 的 store layout 与列覆盖方式，让 `4x*` 先正确；
  - 拆 dim=512 的 PV 输出列 tile，让每个 CTA 只负责部分输出列，再考虑是否能降低 accumulator 压力；
  - 对 PV path 采集更细的 profile counter，确认是 MMA issue、accumulator register pressure、还是 store layout 导致的吞吐损失。
