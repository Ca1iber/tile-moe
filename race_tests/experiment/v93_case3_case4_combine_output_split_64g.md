# v93 MLA Case 3/4 Combine 输出维拆分实验（64G）

## 1. 上版本遗留问题

v92 在 OJ 上的 case 3 和 case 4 已接近下一个整数分界，但尚未跨过：

| Case | KV Context | OJ Score Ratio | 当前百分比分数 | 目标分界 |
|---:|---:|---:|---:|---:|
| 3 | 8192 | 0.979609 | 97.96% | 98% |
| 4 | 16384 | 0.987625 | 98.76% | 99% |

两个 case 都使用 `batch=1, heads=16, dim=512, pe_dim=64, num_split=104`。split attention 主 kernel 已按 104 个 C500 计算单元组织为一波 CTA，但通用 combine 仍只启动 16 个 CTA，每个 CTA 串行扫描 104 个 split 并累加完整的 512 维输出。

## 2. 问题原因分析

64G 机器上使用 `torch.profiler` 各采集 20 次，v92 的设备端时间如下：

| Case | Split attention | 占比 | Combine | 占比 | Device 合计 |
|---:|---:|---:|---:|---:|---:|
| 3 | 23.629 us | 66.81% | 11.738 us | 33.19% | 35.366 us |
| 4 | 34.419 us | 74.57% | 11.738 us | 25.43% | 46.157 us |

已验证结论：

- 两例的 combine 耗时完全相同，因为它们都扫描 `num_split=104`，输出 shape 也相同。
- combine 只有 `heads * batch = 16` 个 CTA，远低于 C500 的 104 个计算单元。
- 每个 CTA 持有 512 维 FP32 accumulator，短 kernel 下寄存器占用和 CTA 并行度都不理想。

此前已经测试 `num_split=96/103/112/208`，均慢于 104；其中 103 对 case 3/4 分别只有 `0.9325x/0.9484x`，96、112、208 也有明显回退。因此本版本不重复修改已验证的 split 主 kernel 分区，而是处理占比仍达 25%-33% 的 combine。

## 3. 本版本解决方案

保持 split attention、`num_split=104`、QK/PV mapping 和数值路径不变，仅对 case 3/4 特化 combine：

- case 3：把 512 个输出列拆成 4 份，每份 128 维；使用 `D4/T256`。
- case 4：把 512 个输出列拆成 8 份，每份 64 维；使用 `D8/T64`。
- case 1 继续使用 v92 的 `D4/T128`。
- case 2/5/6 继续使用原通用 combine。

新 grid 分别为：

```text
case 3: (heads=16, batch=1, d_splits=4) -> 64 CTAs
case 4: (heads=16, batch=1, d_splits=8) -> 128 CTAs
```

每个输出切片 CTA 都独立扫描全部 104 个 `glse`，计算相同的全局 softmax 权重，但只读取和累加自己负责的 `Output_partial` 列。不同 CTA 写入互不重叠的输出区间，不需要原子操作或 CTA 间同步。

代价是 LSE max/sum 被重复计算 4 或 8 次；收益是 combine CTA 数量增大、单 CTA accumulator 从 512 维缩小到 128 或 64 维。实验表明后者占主导。

## 4. 具体落地策略

最终候选：

`race_tests/mla/mla_experi/submission_mla_v93_case3_d4t256_case4_d8t64_64g.py`

当前入口：

`race_tests/mla/submission.py`

dispatch 逻辑：

```text
kv_ctx == 2048:  combine D4/T128  # v92 路径
kv_ctx == 8192:  combine D4/T256  # v93 case 3
kv_ctx == 16384: combine D8/T64   # v93 case 4
otherwise:       generic combine
```

候选覆盖 `D-split={2,4,8}`、`threads={64,128,256}`，并额外测试通用 combine 直接从 256 threads 改成 128 threads。关键严格结果如下：

| 候选 | Case 3 Speedup | Case 4 Speedup | 结论 |
|---|---:|---:|---|
| D2/T256 | 1.0405x | - | 有效但次优 |
| D4/T128 | 1.0406x | 1.0176x | 有效但次优 |
| D4/T256 | **1.0507x** | 1.0248x | case 3 采用 |
| D8/T64 | 1.0246x | **1.0253x** | case 4 候选 |

case 4 对 `D8/T64` 与 `D4/T256` 又进行了 9 轮直接配对：`D8/T64` 为 0.057380 ms，`D4/T256` 为 0.058022 ms，前者再快 1.12%，因此 case 4 采用 `D8/T64`。

## 5. Benchmark 对比

环境：曦云 C500 64G，MACA 3.7.1.5，float16，官方六个 `batch=1` MLA case。

口径：`warmup=10, repeat=100, rounds=7`；每轮内部为 100 次平均延迟，表中为七轮中位数，v92 与 v93 交替测量。

命令：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/mla/mla_experi/benchmark_submission_official6_64g.py \
  --baseline race_tests/mla/mla_experi/submission_mla_v92a_case1_combine_d4_t128_64g.py \
  --candidate race_tests/mla/mla_experi/submission_mla_v93_case3_d4t256_case4_d8t64_64g.py \
  --cases 1,2,3,4,5,6 --warmup 10 --repeat 100 --rounds 7
```

| Case | KV Context | v92 | v93 | Speedup | 最大绝对误差 | 正确性 |
|---:|---:|---:|---:|---:|---:|---|
| 1 | 2048 | 0.030753 ms | 0.030676 ms | 1.0025x | 1.22e-4 | PASS |
| 2 | 4096 | 0.037747 ms | 0.037660 ms | 1.0023x | 1.22e-4 | PASS |
| 3 | 8192 | 0.048650 ms | **0.046285 ms** | **1.0511x** | 6.10e-5 | PASS |
| 4 | 16384 | 0.059492 ms | **0.057326 ms** | **1.0378x** | 6.10e-5 | PASS |
| 5 | 32768 | 0.084127 ms | 0.084012 ms | 1.0014x | 6.10e-5 | PASS |
| 6 | 65536 | 0.134689 ms | 0.134523 ms | 1.0012x | 1.22e-4 | PASS |

case 3 延迟降低约 4.86%，case 4 降低约 3.64%。case 1/2/5/6 没有进入新增 dispatch，测得差异在 0.25% 内，视为计时波动。

原始数据：

- `race_tests/mla/mla_experi/v93_case3-4_combine_sweep_smoke_64g.json`
- `race_tests/mla/mla_experi/v93_d4t256_vs_v92_case3-4_strict_64g.json`
- `race_tests/mla/mla_experi/v93_d8t64_vs_v92_case3-4_strict_64g.json`
- `race_tests/mla/mla_experi/v93_case4_d8t64_vs_d4t256_direct_64g.json`
- `race_tests/mla/mla_experi/v93_vs_v92_official6_strict_64g.json`

## 6. Profile 指标变化

同一 profiler 脚本分别对 v92 和 v93 各采集 20 次：

| Case | Kernel | v92 | v93 | 变化 |
|---:|---|---:|---:|---:|
| 3 | Split attention | 23.629 us | 23.488 us | -0.60% |
| 3 | Combine | 11.738 us | **10.419 us** | **-11.23%** |
| 3 | Device 合计 | 35.366 us | 33.907 us | -4.13% |
| 4 | Split attention | 34.419 us | 34.317 us | -0.30% |
| 4 | Combine | 11.738 us | **10.304 us** | **-12.21%** |
| 4 | Device 合计 | 46.157 us | 44.621 us | -3.33% |

split attention 基本不变，设备端收益集中在 combine，与本版本目标一致。端到端变化和两个 device kernel 合计变化方向一致。

Profile 数据：

- `race_tests/mla/mla_experi/v93_current_case3_torch_profile_64g.json`
- `race_tests/mla/mla_experi/v93_current_case4_torch_profile_64g.json`
- `race_tests/mla/mla_experi/v93_case3_torch_profile_64g.json`
- `race_tests/mla/mla_experi/v93_case4_torch_profile_64g.json`

## 7. 实验总结

v93 成功。case 3/4 的剩余瓶颈之一不是 split attention，而是只有 16 个 CTA 的通用 combine。沿输出维做 shape-specific 拆分后，combine 自身分别加速约 11.23% 和 12.21%，端到端分别获得 1.0511x 和 1.0378x，六个官方 case 全部通过正确性回归。

`race_tests/mla/submission.py` 已提升为 v93。该提升幅度明显大于 case 3 从 97.96% 跨到 98%、case 4 从 98.76% 跨到 99% 所需的分数差，但 OJ 分数与本地延迟并非线性对应，最终是否跨过整数分界仍以平台重新提交结果为准。
