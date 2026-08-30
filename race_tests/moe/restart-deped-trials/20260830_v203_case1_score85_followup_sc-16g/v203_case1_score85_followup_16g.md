# v203 Case1 冲击 85 分后续实验（16g）

## 1. 上版本遗留问题

外部 OJ SOTA v166 的 Case1 为 `2.015 ms / 0.848108 / 84 分`。在相同 OJ 基线下，85 分边界约为 `1.9855 ms`，还需要约 `1.47%` 的 OJ 时延下降；所有本地候选仍须独立满足用户规定的 `1.2%` direct-parent 门槛。

exact v203 保留 v166 的 Case1 主路径，只改善 Case2/3。已有 Case1 profile 显示 Step1/Step2 分别约 `5.935/5.316 Mcycles`；Step2 仅有 `192 CTA / 768 waves`，平均 wave life 约 `194,270 cycles`，因此本轮优先检查尾波调度、公开 launch raster 和仍可能缩短的 SiLU 依赖链。

## 2. 问题原因分析

已验证事实：

- Case1 Step1/Step2 资源分别约为 `226/202 MT registers`，都只能静态驻留 `2 waves/PEU`。
- Step2 只有 192 个 CTA 面向 104 个 AP，发射次序可能影响第二轮尾波；但旧 split-K=2 已证明简单增加 CTA 会增加工作与写流量。
- v166 的 degree-9 SiLU 已删除精确 exp/div 主链；继续降低多项式阶数只有在官方正确性容差内且真实节省端点时间时才有意义。
- 最初物理卡被其他 sGPU 占满（`97% / 331--337 W / P9`），出现 `8.81--10.50 ms` 的样本。本报告只采用恢复到 `0% / 52 W / P0` 后的数据。

当前推测：若不改变 MMA、HBM 字节和 CTA 数，Case1 只可能从 CTA 尾波顺序或硬件 raster 中取得小幅收益。该推测由本轮实验逐项证伪。

## 3. 本版本解决方案

本轮不是线性候选版本，而是四个 direct-v203 原子探针：

1. 把 Case1 Step2 的 grouped CTA 层从“全部 short 在前、long 两半相邻”改成每组 `short -> long-half0 -> long-half1`。
2. 将所有官方 shape 的 clamp-5.5 degree-9 SiLU 改成已归档的 clamp-5 minimax degree-7，并先按 OJ 的 `rtol=atol=0.05` 检查完整输出。
3. 只对 exact Case1 grouped Step2 启用公开 `T.use_swizzle`，筛 panel `4/8/10/16`。
4. 只对 unified Case1 Step1 的 shared-weight short/long macro 启用公开 `T.use_swizzle`。

任何探针若正确性失败、运行时异常或收益低于 1.2%，均只进入 `restart-deped-trials`，不建立 `restart-experiments`、`restart-submission` 或新 SOTA。

## 4. 具体落地策略

- 精确父源码：`race_tests/moe/restart-experiments/v203_case23_parallel_rank_builder_sc-16g/candidate_submission.py`。
- 父 SHA-256：`4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`。
- 探针源码：本目录 `sources/`。
- AB/BA 原始 JSON：本目录 `results/`。
- v203/v204 生成设备 C++、编译日志和资源 JSON：本目录 `codegen/`。
- OJ 容差 runner：本目录 `scripts/run_ojtol_fullcheck.py`。
- 统一测量命令骨架：

```text
/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax \
/opt/conda/bin/python race_tests/moe/restart-scripts/v203_case23_parallel_rank_builder_sc-16g/run_v110_fullcheck.py \
  --parent <v203> --candidate <probe> --case 1 --rounds <N> --warmup 10 --repeat <R>
```

所有可运行普通探针均通过 OJ source validator；Probe A/C 通过严格 `rtol=atol=1e-2`，Probe B 通过官方 `0.05`，Probe D 在正确性检查前触发运行时 ATU fault。

## 5. Benchmark 对比

环境：MetaX C500 `sc-16g`（25% compute sGPU，16 GiB 配额），官方 Case1：16 experts、hidden 2048、intermediate 8192、2272 valid tokens、FP16 输入/权重与 FP32 累加。

| 版本/探针 | Case1 时间或变化 | 相对上版本 | 相对 baseline | 结论 |
|---|---:|---:|---:|---|
| 外部 OJ baseline | `11.251 ms` | baseline | baseline | 外部时段数据 |
| 外部 OJ v166 | `2.015 ms` | - | `5.584x` | `0.848108 / 84 分` |
| clean local v203 parent | 5x50 约 `1.986 ms` | parent | 不与外部时段直接混算 | 已贴近理论 85 边界但无裕量 |
| Probe A CTA interleave | 5x50 mean `+2.4244%` | 回退 | - | 稳定拒绝 |
| Probe B degree-7 | 3x20 mean `-0.3052%` | 亚门槛/高波动 | - | 拒绝 |
| Probe C swizzle panel 4 | 1x20 `-0.0626%` | 噪声 | - | 拒绝 |
| Probe C swizzle panel 8 | 1x20 `-0.0058%` | 噪声 | - | 拒绝 |
| Probe C swizzle panel 10 | 1x20 `-0.4889%` | 亚门槛 | - | 拒绝 |
| Probe C swizzle panel 16 | 1x20 `-0.1223%` | 噪声 | - | 拒绝 |
| Probe D Step1 swizzle | 无有效时延 | runtime FAIL | - | ATU/Xnack fault |

Probe A 五轮变化为 `+2.4592/+2.1922/+2.4307/+2.3423/+2.6977%`，pstdev `0.1653 pp`，足以确认 incumbent 的 short-first/adjacent-long 顺序是有效调度优化。

## 6. Profile 指标变化

| 指标 | v203 parent | Probe A | 变化 | 解释 |
|---|---:|---:|---:|---|
| Step2 MT/ST registers | `202 / 52` | `202 / 52` | 不变 | 没有资源 cliff |
| static waves/PEU | `2` | `2` | 不变 | 回退来自发射顺序，而非 occupancy |
| generated source bytes | `58,224` | `58,248` | `+24 B` | `/3` 映射代数未进入主热循环的大型膨胀 |
| MMA sites | `12` | `12` | 不变 | 计算工作保持 |
| sync sites | `15` | `15` | 不变 | barrier 结构保持 |

Probe B/C 在 benchmark 阶段已低于 1.2%，Probe D 运行时失败，因此没有额外采集 mcProfiler；不以缺失 counter 编造性能结论。若未来出现新的后端或硬件条件，才需要重新采集 Step2 core 的 Total Cycles、AP active、MMA duty、VLS stall 与 per-kernel trace。

## 7. 实验总结

本轮没有得到可靠的 85 分代码候选：

- Step2 CTA 交错稳定慢 2.43%，证明现有顺序已在主动优化尾波/cache。
- degree-7 只有约 0.31% 均值且放宽数值风险，没有提交价值。
- Step2 launch raster 的全部 panel 都远低于 1.2%。
- Step1 launch raster 触发 `kernel_kernel_3` 的 `xnack(0x8)` / ATU 地址转换错误，属于不安全 lowering/runtime 组合。

clean local v203 的确多次落在约 `1.982--1.995 ms`，数值上跨过或贴近 OJ 85 分边界，因此在有利外部时段重跑可能显示 85；但这不是代码优化，不能写入 SOTA。可靠越过 85 仍需一个能稳定节省至少约 24 us 的新机制。本轮所有失败方向保留在 `restart-deped-trials`，不移动 `dorm` 性能 HEAD。
