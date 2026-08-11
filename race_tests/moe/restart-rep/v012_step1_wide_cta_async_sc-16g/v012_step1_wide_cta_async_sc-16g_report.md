# v012_step1_wide_cta_async_sc-16g 证据报告

## Verdict

- 运行类型：iterative screen + partial paired verdict + stage isolation
- 结论：rejected_as_general_async_solution
- 一句话因果结论：宽 CTA 消除了 v011 的 CTA 翻倍，但 C500 上 gate/up 两条 BSM 的 token/fence 成本仍使 Step1 async 负收益；Step2 async 只在长 case 局部有效，不能作为三 case 通用方案。

## Identity

- Machine：sc-16g，MetaX C500 25% sGPU
- Git branch / parent：`dorm` / `9d7a30ab`
- 代表 kernel（v012d）SHA-256：`36567e970732917eade4352ece2f91da3d83a673eb320834eea4c862c5ebb226`
- OJ / official benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8` / `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- Toolchain：`/root/tilelang-metax/build`，MACA 3.7.1；KMD 未在本版重新采集。

## Correctness

- v012a-e 的三组 OJ shape 全部 PASS，记录到的 `max_abs` 均为 `0.001953125`。
- v012c 严格配对已有样本全部 PASS；第三轮候选进程因主机 RAM 竞争被 OS 杀死，不是数值错误。

## Benchmark

| probe | Case1 ms | Case2 ms | Case3 ms | 结论 |
|---|---:|---:|---:|---|
| v012a Step1 two-half | 3.389 | 6.135 | 11.985 | grid 修复显著有效 |
| v012b both steps | 3.178 | 5.702 | 11.080 | Step2 也受益 |
| v012c merged fences | 3.134 | 5.592 | 10.922 | async 内部最佳 |
| v012d sync S1 + async S2 | 3.100 | 5.318 | 10.510 | 长 case 有局部收益 |

- v012c vs v004 Case3，完成的两轮交替配对均值：10.9013 vs 10.6485 ms，v012c 慢 2.37%。
- v012d 相对历史 v004 3.059/5.447/10.652 ms：Case1 慢约 1.35%，Case2 快约 2.37%，Case3 快约 1.33%；未完成全 case 严格配对，因此只标 screen。
- 本目录的 official 日志实际对应后续 v012e（v013 候选），已复制到 v013 并在本版报告中排除。

## Profile

- v012a Case3：Step1 7.407616 ms，Step2 4.542464 ms，gap 0.028160 ms，span 11.978240 ms。
- v012d Case3：Step1 6.912512 ms，Step2 3.576064 ms，gap 0.002816 ms，span 10.491392 ms；相对 v004 trace 的 6.946304/3.720448 ms，收益仅来自 async Step2。
- v012d Case1：Step1 1.958912 ms，Step2 1.134336 ms；v004 为 1.961728/1.082368 ms，短 Step2 的 async overhead 约 +4.8%。
- mcProfiler：v012 async 路线没有获得可用的版本专用完整采集；后续 v013 尝试触发主机 `flush_workqueue/SRCU` 异常，不能反推 v012 指标。
- mx-smi / Roofline：无同步采样及版本专用点，见各自 `UNAVAILABLE.md`。

## Lowering and code generation

- v012a 恢复 Step1 grid x 32→16；Step1 资源升至约 178 MT / 28-30 ST、2 waves/PEU、无 spill。
- v012b Step2 恢复 grid x 56→28；Step2 约 190 MT / 28 ST、2 waves/PEU、无 spill。
- v012c 通过 fence 合并减少每 K 的通用 barrier，但严格配对仍慢于 v004，说明 barrier 数下降不足以覆盖 BSM token/address overhead。
- v012d 的 Step1 与 v004 相同；Step2 仍是 explicit inverse-swizzle BSM two-half pipeline。

## Causal interpretation

- 预测指标部分实现：grid、input/metadata 重复和 trace 均显著改善，但最终严格配对未超过 v004。
- 负优化原因被继续追踪而非放弃：v012c→v012d 证明 Step1 async 是主要问题；Case1/Case3 trace 又证明 Step2 async 的收益随工作量变化。
- 瓶颈迁移：恢复宽 grid 后，限制从 CTA 重复迁移到 explicit async 协议开销与寄存器压力。v004 ISA 暴露的 Step2 spill 触发独立 v013。
