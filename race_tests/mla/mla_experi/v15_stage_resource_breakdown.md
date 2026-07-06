# v15 stage resource breakdown

## 目的

把 QK 之后的 `online softmax + S_shared bridge + acc_o scale + PV MMA` 阶段拆成多个 ablation，判断主要时间来自 SFU/reduce、shared bridge、还是 PV MMA/ldmatrix。

## 变体定义

- `qk_only`: content QK + QK_pe 后只保留 max-reduction 和 dummy output，作为阶段前基线。
- `softmax`: 加回 `scores_scale`、`exp2(score)`、`reduce_sum`、`logsum`。
- `s_store`: 在 `softmax` 上加回 `T.copy(acc_s, S_shared)`。
- `pv_r1/r2/r4`: 在 `s_store` 上加回 `T.copy(S_shared, acc_s_cast)`、`acc_o *= scores_scale`，并分别重复 PV MMA 1/2/4 次，用于判断 PV MMA/ldmatrix 是否近似线性增重。
- 单独的 `S_shared -> acc_s_cast` 变体会触发 TileLang layout inference failure；它必须和 PV MMA operand 使用连在一起才有合法 layout，所以这里把它归入 `pv_path`。

## 结果

| case | batch | kv_ctx | split | full | qk_only | softmax | s_store | pv_r1 | pv_r2 | pv_r4 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 17 | 8 | 2048 | 32 | 0.575827 | 0.427644 | 0.292809 | 0.589627 | 0.571379 | 0.272327 | 0.690504 |
| 21 | 8 | 65536 | 64 | 2.936798 | 1.825024 | 1.559901 | 1.444100 | 3.268529 | 3.382648 | 5.020258 |
| 29 | 32 | 16384 | 16 | 2.832914 | 2.212685 | 1.516667 | 1.371532 | 2.869760 | 3.387691 | 4.538138 |
| 31 | 32 | 65536 | 16 | 13.167104 | 3.372749 | 3.886639 | 4.749452 | 10.970222 | 14.158336 | 17.095873 |

## Delta 占 full 比例

| case | softmax | acc_s->S_shared | pv_path = cast+scale+PV | r2 extra / pv_path | r4 extra / pv_path |
|---:|---:|---:|---:|---:|---:|
| 17 | -23.42% | 51.55% | -3.17% | 16.39x | -22.92x |
| 21 | -9.03% | -3.94% | 62.12% | 0.06x | 0.90x |
| 29 | -24.57% | -5.12% | 52.89% | 0.35x | 0.77x |
| 31 | 3.90% | 6.55% | 47.24% | 0.51x | 0.47x |

## 加权汇总

| 组件 | latency 加权占 full 比例 |
|---|---:|
| softmax/reduce/logsum | -2.98% |
| acc_s -> S_shared | 4.61% |
| pv_path = S_shared -> acc_s_cast + acc_o scale + PV | 48.82% |

## 工程结论

1. 这组实验不能把每个相邻 delta 当成精确时间分解，因为 ablation 会改变 TileLang lowering、fragment layout、寄存器压力和调度。`softmax` 与 `s_store` 在部分 case 出现负 delta，说明这些轻量阶段已经被编译形态噪声淹没。

2. 更可信的是长 context 下的粗粒度趋势：case21、case29、case31 的 `pv_path` 分别占 full 的 62.12%、52.89%、47.24%，加权后约 48.82%。因此 QK 后半段的主战场不是单纯 `exp2/reduce_sum`，而是 `S_shared -> acc_s_cast + acc_o scale + PV MMA/ldmatrix` 这一整条路径。

3. PV repeat 也支持这个判断。case29 从 `pv_r1=2.869760ms` 增到 `pv_r2=3.387691ms`、`pv_r4=4.538138ms`；case31 从 `pv_r1=10.970222ms` 增到 `pv_r2=14.158336ms`、`pv_r4=17.095873ms`。增长不是理想线性，说明里面混有 layout/调度/ldmatrix 开销，但重复 PV 后明显变重，证明 PV MMA/ldmatrix 是实质资源压力。

4. 单独拆 `S_shared -> acc_s_cast` 不成立：该变体会触发 TileLang layout inference failure。这和前面的 compatible mapping 实验一致，`acc_s_cast` 必须作为 PV MMA operand 才有合法 fragment layout。因此当前优化口径应把它和 PV MMA 合成 `pv_path` 分析。

5. 下一步不建议优先优化 softmax 标量逻辑。更值得做的是围绕 `pv_path` 继续拆：比较 PV MMA mapping、`KV_shared`/`S_shared` shared layout、`ldmatrix` bank conflict、以及是否能降低 `acc_s -> S_shared -> acc_s_cast` 的 materialization 成本。

## 解释口径

- ablation 会改变 lowering、寄存器压力和调度，delta 是定位主嫌疑人的工程近似值，不是精确 per-instruction profile。
- `pv_r2/pv_r4` 的额外时间如果接近 `pv_path` 的 1x/2x，说明 PV MMA/ldmatrix 确实构成主导资源压力；如果远低于线性，说明更多瓶颈在 bridge/softmax/调度。
