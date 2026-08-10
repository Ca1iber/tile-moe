# v95 MoE 官方三形状特化实验（64G）

## 1. 上版本遗留问题

上一版 OJ-safe inline MFMA 实现已经显著快于 PyTorch baseline，但三个官方测试点仍共用近似相同的调度：

| Case | Experts | Hidden | Intermediate | Valid Tokens | OJ Baseline | 上一版 OJ | Speedup |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | 16 | 2048 | 8192 | 2272 | 11.292 ms | 3.563 ms | 3.169x |
| 2 | 32 | 7168 | 2048 | 4544 | 18.697 ms | 6.407 ms | 2.918x |
| 3 | 64 | 7168 | 2048 | 9088 | 36.026 ms | 12.579 ms | 2.864x |

三个 shape 的长宽比差异很大。case 1 是窄输出、宽 intermediate，case 2/3 则是宽输出、窄 intermediate，因此继续用一套 Step2 tile 和 grid 顺序并不合理。

## 2. 问题原因分析

使用 `torch.profiler` 对上一版分别采集 20 次两个 device kernel：

| Case | Step1：gate/up/SiLU | 占比 | Step2：down/scale | 占比 |
|---:|---:|---:|---:|---:|
| 1 | 2055.898 us | 57.62% | 1511.910 us | 42.38% |
| 2 | 3812.659 us | 60.23% | 2517.248 us | 39.77% |
| 3 | 7482.509 us | 59.91% | 5006.810 us | 40.09% |

Step1 约占 60%，但它当前的 `M128 x N128 x K64` tile 已经较合适；Step2 虽只占约 40%，其 `M128 x N256 x K64` tile 同时存在三个问题：

- `N=256` 使每个 CTA 持有较宽的输出 accumulator，增加寄存器压力。
- `K=64` 使 reduction loop 次数偏多。
- case 2/3 的 grid 顺序未转置，Step1 和 Step2 单独改为转置均有小幅收益，两个阶段同时转置时收益叠加。

网格 smoke sweep 的关键结果：

| Case | 仅 Step1 转置 | 仅 Step2 转置 | 两阶段同时转置 | 结论 |
|---:|---:|---:|---:|---|
| 1 | 0.9986x | 0.9914x | 原路径 | 保持原有双转置 |
| 2 | 1.0141x | 1.0158x | **1.0303x** | 双转置 |
| 3 | 1.0188x | 1.0163x | **1.0360x** | 双转置 |

warp mapping 也分别扫描了 `4x1`、`2x2` 和 `1x4`。`4x1` 始终最好，说明沿 token 行分配四个 warp 比沿输出列拆散更适合当前权重和 fragment 复用方式。

## 3. 本版本解决方案

v95 对三个官方 shape 做精确 dispatch，其他 shape 保持上一版通用路径：

1. 三个官方 case 的 Step1/Step2 grid 都采用转置顺序。
2. Step1 保持 `M128 x N128 x K64` 和 `4x1` warp mapping。
3. Step2 从 `M128 x N256 x K64` 改为 `M128 x N128 x K128`。
4. case 2/3 把 routed weight 的逐 token 标量乘法前移到 Step1 intermediate 写回；case 1 仍在最终输出写回时乘。

Step2 新旧 weight shared tile 都是 32 KiB：

```text
旧：256 x 64  x fp16 = 32 KiB
新：128 x 128 x fp16 = 32 KiB
```

因此新 tile 没有增加 weight shared memory，却把 K loop 次数减半、输出 accumulator 宽度减半，并让输出列 CTA 数量翻倍。

对 case 2/3，routed weight 是每个 token 的标量，所以有：

```text
(hidden * routed_weight) @ W_down^T
    == (hidden @ W_down^T) * routed_weight
```

前移后只需缩放 2048 维 intermediate，而不再缩放 7168 维 output。case 1 的 intermediate 为 8192、output 为 2048，前移反而增加逐元素工作量，因此不启用。

## 4. 具体落地策略

最终入口：`race_tests/moe/submission.py`。

归档候选：`race_tests/moe/experiments/official3_specialize_64g/submission_moe_v95_prescale_case2-3_64g.py`。

调度分派如下：

```text
官方 case 1/2/3:
    step1_grid_transpose = True
    step2_grid_transpose = True
    step1 tile = M128 x N128 x K64
    step2 tile = M128 x N128 x K128

case 2/3:
    prescale_weight = True

其他 shape:
    保留上一版默认 schedule
```

所有调度参数和 `prescale_weight` 都进入 kernel cache key，避免不同 shape 误复用已编译 kernel。padding 行仍显式写零，`group_offsets` 与 `group_padded_offsets` 的索引语义保持不变。

主要 tile smoke sweep：

| 候选 | Case 1 | Case 2 | Case 3 | 结论 |
|---|---:|---:|---:|---|
| Step1 `K32` | 0.8106x | 0.8258x | 0.8054x | 淘汰 |
| Step1 `K128` | 0.5749x | 0.6145x | 0.6269x | 淘汰 |
| Step2 `N128` | 0.9957x | 1.0342x | 1.0394x | 需要与 K128 联合 |
| Step2 `N128/K128` | **1.0604x** | **1.0417x** | **1.0489x** | 采用 |

后续又扫描 Step2 `N32/N64`、`K256` 和 `2x2` warp mapping，均明显慢于 `N128/K128 + 4x1`，因此没有并入。

## 5. Benchmark 对比

环境：曦云 C500 64G，float16，使用与 OJ diagnostic 一致的 padded shape 和 block-to-expert 映射。

口径：`warmup=10, repeat=100, rounds=5`；表中为五轮中位数，旧版与候选在同一进程内配对测量。

| Case | 上一版 inline SOTA | v95 | Speedup | 最大绝对误差 | 正确性 |
|---:|---:|---:|---:|---:|---|
| 1 | 3.567596 ms | 3.364321 ms | **1.0604x** | 0 | PASS |
| 2 | 6.327391 ms | 6.037747 ms | **1.0480x** | 0.001953 | PASS |
| 3 | 12.494149 ms | 11.836418 ms | **1.0556x** | 0.001953 | PASS |

按本地相对提升等比例投影到用户给出的上一版 OJ 数据，预估而非平台实测结果为：

| Case | 预估新 OJ 延迟 | 预估相对 PyTorch speedup |
|---:|---:|---:|
| 1 | 3.360 ms | 3.361x |
| 2 | 6.114 ms | 3.058x |
| 3 | 11.917 ms | 3.023x |

OJ 的实际结果仍应以重新提交后的平台计时为准。

严格 benchmark 原始数据：

- `race_tests/moe/experiments/official3_specialize_64g/v95_vs_inline_sota_official3_strict_64g.json`
- `race_tests/moe/experiments/official3_specialize_64g/v95_prescale_realistic_magnitude_correctness_64g.json`

## 6. Profile 指标变化

同一 profiler 脚本对旧版和 v95 各采集 20 次：

| Case | 阶段 | 上一版 | v95 | 变化 |
|---:|---|---:|---:|---:|
| 1 | Step1 | 2055.898 us | 2055.040 us | -0.04% |
| 1 | Step2 | 1511.910 us | 1311.142 us | **-13.28%** |
| 2 | Step1 | 3812.659 us | 3737.779 us | -1.96% |
| 2 | Step2 | 2517.248 us | 2305.050 us | **-8.43%** |
| 3 | Step1 | 7482.509 us | 7264.909 us | -2.91% |
| 3 | Step2 | 5006.810 us | 4586.202 us | **-8.40%** |

case 1 的收益几乎全部来自 Step2 tile；case 2/3 则由 grid 转置、Step2 tile 和 prescale 共同贡献。Profile 与端到端 benchmark 的方向和幅度一致。

Profile 数据：

- `race_tests/moe/experiments/official3_specialize_64g/current_stage_profile_case{1,2,3}_64g.json`
- `race_tests/moe/experiments/official3_specialize_64g/v95_stage_profile_case{1,2,3}_64g.json`

## 7. 实验总结

v95 成功。它没有改动 MoE 数学语义或 inline MFMA 主体，而是根据官方三个固定 shape 重新选择 grid 顺序、Step2 tile 和 routed weight 的落点。严格 64G 测试中三个 case 分别提升 6.04%、4.80% 和 5.56%，正确性全部通过。

`race_tests/moe/submission.py` 已提升为 v95，并与归档候选文件哈希一致。该版本可作为下一次 OJ 提交基线；平台收益需通过正式提交确认。
