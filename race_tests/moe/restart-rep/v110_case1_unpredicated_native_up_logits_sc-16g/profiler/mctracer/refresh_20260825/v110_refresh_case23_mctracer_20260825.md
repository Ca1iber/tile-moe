# v110 Case2/3 fresh mcTracer（2026-08-25）

连续三个 v110 follow-up 未跨 1.2% 门槛后，按 stall rule 对正式 SOTA 重新采集。精确 submission SHA256 为 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`，每个 Case warmup 5 后 profile 1 次调用；trace 中包含 6 组稳定迭代。

| Case | prepack median | Step1 median | Step2 median | 三 kernel 和 | Step1 占比 |
|---:|---:|---:|---:|---:|---:|
| 2 | 0.130176 ms | 2.488576 ms | 1.323008 ms | 3.941760 ms | 63.13% |
| 3 | 0.252672 ms | 4.745472 ms | 2.582784 ms | 7.580928 ms | 62.60% |

资源保持：Case2/3 prepack 78 MT、Step1 226 MT、Step2 220 MT；dynamic shared 分别 64/32/32 KiB，无 private allocation。Step1/Step2 都仍为 2 waves/PEU。

结论：两个大 shape 的瓶颈仍稳定落在 Step1，本轮后续优先检查 native-A 谓词、MMA wave 几何和 Gate/Up 权重 producer；prepack 与 launch gap 不是主目标。
