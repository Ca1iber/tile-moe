# v103 Case3 Gate/Up 半权重交错报告（sc-16g）

## 1. 上版本遗留问题

v102 已成为外部 OJ 全局 SOTA，但三个 case 的稳态 mcTracer 都显示 Step1 约占 GPU span 的 62%。Case3 中 Step1 约 4.73 ms、Step2 约 2.64 ms，Step1→Step2 空泡仅约 0.003 ms，继续压缩 Step1 比算子融合更有价值。

## 2. 问题原因分析

已验证结论：v102 Case3 生成代码每个 K tile 连续发出 `Gate0 → Gate1 → Up0 → Up1`；Step1 使用 226 MT registers/thread、32 KiB dynamic shared、2 waves/PEU，无 private allocation。当前推测：native-A 全量生产提前到 Gate0 前后，两个连续 Gate 地址流缺少独立流量分隔，可能限制访存延迟隐藏。

## 3. 本版本解决方案

仅对官方 Case3 将半权重 producer 改成 `Gate0 → Up0 → Gate1 → Up1`，交错两个独立基地址流。Case1/2、tile、grid、MMA 数量与顺序、barrier、Step2 和算术均保持不变。

## 4. 具体落地策略

在 `candidate_submission.py` 的 Step1 even/odd K 路径中用编译期 `num_experts == 64` 分支提前 Up0。生成代码确认 Case3 顺序改变；Case1/2 生成 SHA 与 v102 完全一致。

## 5. Benchmark 对比

机器：MetaX C500 25% sGPU，`sc-16g`。Case3 配置为 experts=64、hidden=7168、intermediate=2048、valid tokens=9088，FP16。协议：同进程 AB/BA 3 轮，warmup=20，repeat=50，device event；完整 padded output 以 `rtol=atol=1e-2` 校验。

| 版本 | 数据来源 | Case3 时间 | 相对上版本 | 相对 OJ baseline | 备注 |
|---|---|---:|---:|---:|---|
| OJ baseline | 外部 OJ | 35.875 ms | baseline | baseline | 官方 baseline |
| v102 | 外部 OJ | 7.690 ms | SOTA | -78.565% | AC |
| v102 | 本地 screen 中位附近 | 7.635 ms | parent | 不跨协议比较 | 本轮配对 parent |
| v103 | 本地 screen 中位附近 | 7.624 ms | **-0.148993% paired median** | 不跨协议比较 | correctness PASS |

三轮变化为 `-0.053771% / -0.267891% / -0.148993%`，population stddev `0.087592%`。改善远低于用户规定的 1.2% 门槛。

## 6. Profile 指标变化

| 指标 | v102 | v103 | 变化 | 解释 |
|---|---:|---:|---:|---|
| Case3 Step1 MT registers/thread | 226 | 226 | 0 | 资源不变 |
| static waves/PEU | 2 | 2 | 0 | occupancy 档位不变 |
| generated weight order | G0,G1,U0,U1 | G0,U0,G1,U1 | 已物化 | 编译器未消除改动 |
| 端到端 paired median | baseline | -0.148993% | 噪声级 | 未达到 profile 晋级条件 |

本版在 clean screen 已被门槛否决，因此没有继续采集候选 mcTracer/mcProfiler；缺失项已用 `UNAVAILABLE.md` 明确记录，避免把 profiler 成本投入噪声候选。

## 7. 实验总结

结论：`rejected_performance_noise`。交错 Gate/Up 独立地址流确实改变了生成代码，但仅带来约 0.15% 的中位变化，无法证明是有效优化。该方向关闭，不创建 submission；正式 SOTA 保持 v102。下一步应改变更实质的数据量、CTA 工作量或 producer/consumer 重叠，而不是继续排列四个等量权重 copy。
