# v20 stage breakdown: softmax + PV update

## 1. 上版本遗留问题

v19 在干净 64G 容器上确认当前 MLA SOTA 基线稳定：

| 版本 | 结果 |
|---|---:|
| v19 run.sh full31 | 31/31 PASS, sum latency 41.214932 ms |

遗留问题是：之前关于 `softmax + PV update` 阶段的拆分实验在旧的脏环境上跑过，数据不可信。需要在干净机器上重新判断该阶段主要受什么资源限制。

## 2. 问题原因分析

`main_split` 的 k-loop 中，QK 之后的阶段包含：

- online softmax row max / exp2 / reduce_sum / logsum 更新；
- `S_shared` 中转与 `acc_s_cast` 转换；
- `acc_o *= scores_scale`；
- PV MMA：`acc_s_cast @ KV_shared -> acc_o`；
- k-loop 后 `acc_o / logsum` 和 split partial output 写出。

这些操作混在一个 pipeline 内，单看完整 latency 无法判断瓶颈来自 scalar softmax、PV MMA、shared 中转还是 copy。

## 3. 本版本解决方案

新增 timing-only 阶段拆分脚本：

```text
race_tests/mla/mla_experi/v20_stage_breakdown.py
```

实验 variant：

| variant | 含义 |
|---|---|
| `full` | 当前完整 split kernel，做 correctness |
| `copy_only` | KV/K_pe copy 后消费 `KV_shared`，防止 copy 被 DCE |
| `qk_only` | QK 后 reduce 消费 `acc_s`，防止 QK 被 DCE |
| `qk_softmax_no_exp` | QK + max/reduce/logsum 框架，用 dummy 值替代 exp2 |
| `qk_softmax_only` | QK + 真实 online softmax，不做 accscale/PV |
| `qk_softmax_accscale` | 再加 `acc_o *= scores_scale` 和 final normalize |
| `pv_dummyS` | dummy S + PV MMA，隔离 PV 路径 |

注意：除 `full` 外，其他 variant 不保证数学输出正确，只用于 timing attribution。

## 4. 具体落地策略

采样 case：

```text
5, 9, 17, 21, 29, 31
```

运行命令：

```bash
cd /root/tilelang-metax
/opt/conda/bin/python race_tests/mla/mla_experi/v20_stage_breakdown.py \
  --cases 5,9,17,21,29,31 \
  --repeats 3 \
  --warmup 500 \
  --output race_tests/mla/mla_experi/v20_stage_breakdown_sample_fixed.csv
```

输出：

```text
race_tests/mla/mla_experi/v20_stage_breakdown_sample_fixed.csv
race_tests/mla/mla_experi/v20_stage_breakdown_summary.csv
```

说明：`v20_stage_breakdown_sample.csv` 是第一次未加 DCE 防护的中间结果，不作为结论依据；最终以 `_fixed.csv` 和 summary 为准。

## 5. Benchmark 对比

median latency，单位 ms：

| case | batch | kv_ctx | full | copy | qk | no_exp | softmax | accscale | pv_dummy |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 0.295325 | 0.070085 | 0.100471 | 0.107960 | 0.112236 | 0.115859 | 0.197780 |
| 9 | 2 | 16384 | 0.291326 | 0.066116 | 0.096707 | 0.103817 | 0.108306 | 0.111643 | 0.196295 |
| 17 | 8 | 2048 | 0.090245 | 0.064805 | 0.073181 | 0.079321 | 0.080175 | 0.081861 | 0.075742 |
| 21 | 8 | 65536 | 2.625245 | 0.456541 | 0.688930 | 0.766936 | 0.788036 | 0.818936 | 1.760192 |
| 29 | 32 | 16384 | 2.626453 | 0.470030 | 0.682099 | 0.747993 | 0.790781 | 0.824021 | 1.702315 |
| 31 | 32 | 65536 | 10.214969 | 1.605253 | 2.535866 | 2.797366 | 2.964200 | 3.089442 | 6.615479 |

差分估计：

| case | qk-copy | noexp-qk | exp extra | accscale extra | full-accscale | pv_dummy/full |
|---:|---:|---:|---:|---:|---:|---:|
| 5 | 0.030386 | 0.007489 | 0.004276 | 0.003623 | 0.179466 | 67.0% |
| 9 | 0.030591 | 0.007110 | 0.004489 | 0.003337 | 0.179683 | 67.4% |
| 17 | 0.008376 | 0.006140 | 0.000854 | 0.001686 | 0.008384 | 83.9% |
| 21 | 0.232389 | 0.078006 | 0.021100 | 0.030900 | 1.806309 | 67.0% |
| 29 | 0.212069 | 0.065894 | 0.042788 | 0.033240 | 1.802432 | 64.8% |
| 31 | 0.930613 | 0.261500 | 0.166834 | 0.125242 | 7.125527 | 64.8% |

## 6. Profile 指标变化

本次没有采硬件 counter，只做 timing attribution。

从 timing 看：

- `pv_dummyS/full` 在长 ctx case 上约 64.8%-67.0%；
- `full - qk_softmax_accscale` 在 case21/29/31 上约 68.6%-69.8% full；
- `copy_only/full` 在长 ctx case 上约 15.7%-17.9%；
- `exp_extra/full` 在 case31 约 1.6%，case21 约 0.8%，case29 约 1.6%；
- `accscale_extra/full` 在 case31 约 1.2%，case21 约 1.2%，case29 约 1.3%。

这说明当前不是 exp2 或 accscale 主导。copy/memory floor 不低，但不能解释 PV 路径 65%-70% 的占比。

TODO: 如果要严格判断 PV 是 tensor/MMA compute bound 还是 shared-to-MMA feed bound，需要继续采集硬件 profile：

- tensor/MMA utilization；
- memory pipe utilization；
- shared load/store conflict；
- scoreboard / wait stall；
- register 和 occupancy；
- PV-only kernel 的 ldmatrix 与 mma 指令占比。

## 7. 实验总结

结论：

1. `softmax + PV update` 阶段主要不是 scalar softmax/exp2/reduction 限制。
2. 长 ctx 主体 case 中，PV 路径占 full 的约 65%-70%，是最主要优化目标。
3. `copy_only` 说明基础搬运有 15%-18% full 的下限，但 PV dummyS 明显高于 copy，因此瓶颈更可能在 PV MMA 及其 shared-to-MMA feed，而不是单纯 global copy。
4. 短 ctx case17 launch/固定开销占比很高，不适合作为 PV 主瓶颈判断依据。

下一步最有价值的实验：

- 继续拆 PV：增加 `pv_load_only` / `pv_mma_only` 或 profile 指令占比；
- 针对 PV MMA mapping、`acc_s_cast` layout、`KV_shared` shared layout 做小范围 sweep；
- 优先看长 ctx case 21/29/31，短 case 只做回归检查。
