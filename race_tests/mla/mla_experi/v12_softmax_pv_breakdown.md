# v12 softmax / PV breakdown

## 测量目的

继续拆 current split kernel 的内部成本，回答 PV、online softmax、partial/combine plumbing 哪个更值得继续优化。

## 变体定义

- `full`: 当前正式 `flashattn`，不做 correctness，只 benchmark。
- `qk_only`: 保留 content QK + QK_pe，并用 max-reduction + dummy Output 写回防止 DCE；跳过 exp/sum/PV/partial/combine。
- `qk_softmax`: 保留 QK + online softmax/logsum，并 dummy 写回；跳过 PV/partial/combine。
- `no_pv`: 保留 QK + online softmax/logsum + partial store + combine，但跳过 `acc_s_cast` 和 PV MMA。

因此：`qk_softmax - qk_only` 近似 softmax/reduce/exp2 成本；`full - no_pv` 近似 PV path 成本；`no_pv - qk_softmax` 近似无 PV 情况下 partial store + combine/plumbing 成本。

## 结果

| case | batch | kv_ctx | split | full | qk_only | qk_softmax | no_pv | softmax/full | PV/full | partial+combine/full |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 64 | 0.305988 | 0.098720 | 0.108973 | 0.127847 | 3.35% | 58.22% | 6.17% |
| 9 | 2 | 16384 | 32 | 0.312677 | 0.099836 | 0.110014 | 0.118207 | 3.26% | 62.20% | 2.62% |
| 13 | 4 | 8192 | 64 | 0.273505 | 0.088330 | 0.094121 | 0.127287 | 2.12% | 53.46% | 12.13% |
| 17 | 8 | 2048 | 32 | 0.113276 | 0.068716 | 0.073007 | 0.098476 | 3.79% | 13.07% | 22.48% |
| 21 | 8 | 65536 | 64 | 2.676297 | 0.696587 | 0.792234 | 0.828890 | 3.57% | 69.03% | 1.37% |
| 22 | 16 | 2048 | 32 | 0.158596 | 0.086794 | 0.095538 | 0.131582 | 5.51% | 17.03% | 22.73% |
| 25 | 16 | 32768 | 32 | 2.687971 | 0.672277 | 0.791084 | 0.820178 | 4.42% | 69.49% | 1.08% |
| 27 | 32 | 2048 | 32 | 0.279347 | 0.139659 | 0.155938 | 0.220746 | 5.83% | 20.98% | 23.20% |
| 29 | 32 | 16384 | 16 | 2.690823 | 0.696834 | 0.794785 | 0.804596 | 3.64% | 70.10% | 0.36% |
| 31 | 32 | 65536 | 16 | 10.401850 | 2.603698 | 2.988866 | 2.917384 | 3.70% | 71.95% | -0.69% |

## 汇总

| 指标 | 算术平均占比 | latency 加权占比 |
|---|---:|---:|
| softmax_delta | 3.92% | 3.78% |
| pv_delta | 50.55% | 68.87% |
| partial+combine(no_pv) | 9.15% | 0.96% |

## 注意事项

- 这些是 ablation 近似值，不是硬件 profiler 的精确 per-instruction attribution；变体改变了编译器 lowering 和寄存器/占用情况，因此负数或很小的 delta 应视为测量噪声。
- `qk_only` 为了防止 DCE 保留了 reduce_max 和少量 dummy output 写回，所以它不是纯 MMA 时间。
