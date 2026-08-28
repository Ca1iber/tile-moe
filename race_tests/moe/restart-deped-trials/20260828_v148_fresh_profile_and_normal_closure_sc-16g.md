# v148 Case2/3 新鲜剖析与正常路径封口（sc-16g）

## 1. 上一个问题

v148 已由外部 OJ 确认为当前 SOTA（显示分 `[83, 82, 82]`），但最近的本地探索偏重 Case1。本轮回到 v148，针对 Case2/3 重新采集 mcProfiler 数据，并尝试不依赖异步拷贝、注入、缓存结果或关闭竞态检查的正常优化方向。候选门槛仍为相对父版本至少 `1.2%`，门槛以下不建版本、不组合、不推进 submission。

环境：MetaX C500 16G sGPU，MXMACA 3.7.1.5，KMD 3.8.30；分支 `dorm`，父提交 `d6a3638e`。官方基线仅作上下文：Case2 `18.610 ms`，Case3 `35.875 ms`。本地配对结果只与同轮 v148 比较，不与 OJ 绝对时间混算。

## 2. 原因与剖析

重新剖析 v148 的 Case2 Step1/Step2 与 Case3 Step1。Case2/3 Step1 的静态工作结构相同，Case3 的指令数和工作组数几乎严格为 Case2 的两倍；差异主要来自缓存命中和总周期，而不是额外的指令形态。

| 指标 | Case2 Step1 | Case2 Step2 | Case3 Step1 |
|---|---:|---:|---:|
| workgroups / waves | 768 / 3072 | 1344 / 5376 | 1536 / 6144 |
| total instructions | 88,134,912 | 48,590,976 | 176,269,824 |
| MMA instructions | 36,700,160 | 18,350,080 | 73,400,320 |
| MTE instructions | 14,181,376 | 8,195,264 | 28,362,752 |
| BSM instructions | 11,927,552 | 5,963,776 | 23,855,104 |
| global read bytes | 2,379,240,480 | 1,201,433,504 | 5,252,607,264 |
| VL1 hit | 87.45% | 86.46% | 87.45% |
| L2 hit | 40.72% | 41.86% | 33.73% |
| MMA duty | 53.94% | 48.36% | 54.36% |
| MTE duty | 5.21% | 5.40% | 5.25% |
| shared efficiency | 100% | 100% | 100% |
| IPC | 31.72 | 32.42 | 32.68 |

Case3 的官方路由分布是 32 个 expert 各 100 行、32 个 expert 各 184 行。对后半类 expert，最后一个 `BM=128` tile 只有 56 个有效行，因此 Step1 的第 2/3 row-wave 不做 MMA。按指令计数反推，`1024 / 6144 = 16.7%` 的已派发 wave 没有执行 MMA；但这些 wave 仍参与 B 面板搬运和同步，不能直接删掉。`73,400,320 = 5120 × 14,336` 也与有效 row-wave 数精确一致。

## 3. 方案

本轮沿四条彼此独立的正常路径试探：

1. **Case3 长尾双 N tile/CTA**：让尾 tile 中空闲的 row-wave 计算相邻 N tile，Gate/Up 面板依次复用 32 KiB shared memory。
2. **Case2/3 Step1 1×4 column-wave**：把 `4 row × 1 col` 改成 `1 row × 4 col`，理论上每 K32 的 A/B shared feed 从约 `8+64 KiB` 变为 `32+16 KiB`。
3. **MXCC sink-load-extract**：在完全相同的 v148 源码上打开 `-mllvm -metaxgpu-sink-load-extract`。
4. **MXCC sched-mma-maxnum=2**：在完全相同的 v148 源码上打开 `-mllvm -metaxgpu-sched-mma-maxnum=2`。

## 4. 实现

- 双 N 方案保持 32 KiB shared memory，通过 Gate、Up 两阶段复用面板；由于复用，同一 K 步需要 4 次 barrier，而 v148 只需 2 次。
- 1×4 方案保留 Step2 与 consumer-native 目标不变，只替换 Case2/3 Step1；为了验证结构，临时使用 row-major prepack。生成代码含 8 个 MMA site，无异步拷贝。
- 两个编译器方案只改变 `TL_DEVICE_COMPILE_FLAGS`，生成资源与 v148 一致：prepack `78 MT / 11 ST / 6 waves`，Step1 `226 / 42 / 2`，Step2 `220 / 52 / 2`。
- 四个探针均通过源码规则检查与相应完整有效行正确性检查。

## 5. 性能对比

| 探针 | Case | v148 父版本 | 探针 | 相对变化 | 结论 |
|---|---:|---:|---:|---:|---|
| 双 N 长尾 | 3 | 7.610624 ms | 10.312789 ms | **+35.505%** | 回退，额外 barrier 破坏重叠 |
| Step1 1×4 column-wave | 2 | 3.925248 ms | 24.762538 ms | **+530.853%** | 回退，A 复制/布局转换/高 MT 成本压倒 BSM 节省 |
| sink-load-extract，3×20 AB/BA 中位 | 2 | 同轮配对 | 同轮配对 | **+0.0408%** | 噪声区，略慢 |
| sched-mma-maxnum=2，3×20 AB/BA 中位 | 2 | 同轮配对 | 同轮配对 | **+0.0934%** | 噪声区，略慢 |

sink-load-extract 三轮变化为 `+0.0486% / +0.0111% / +0.0408%`；sched-mma-maxnum=2 为 `+0.0033% / +0.3495% / +0.0934%`。两者都远低于 1.2% 门槛，且方向为回退。

## 6. 剖析指标变化

两个编译开关没有改变资源计数，也没有形成可重复的运行时间改善，因此不继续消耗 perfcount 配额做“噪声解释”。结构探针的结果给出更强的边界信息：

- Case3 尾部空闲 row-wave 是真实存在的，但同时承担协作搬运/同步；复用它们做第二个 N tile 会增加同步阶段，收益不足。
- 1×4 可以降低理论 BSM 广播量，却会复制 A、扩大线程资源并引入布局成本；当前 Step1 的 4×1 row-wave 是整体数据复用的较优平衡。
- shared efficiency 已是 100%，MTE duty 约 5%，MMA duty 约 54%；问题不是简单的 shared bank conflict，也不是靠一个后端调度开关即可释放。
- Case3 相比 Case2 的 L2 hit 从 40.72% 降到 33.73%，是后续若重开 Case2/3 优化时更可信的方向，但必须减少真实权重流量或改变跨 CTA 复用，而不是仅重排现有 load。

## 7. 总结

本轮没有任何探针达到 `1.2%` 候选门槛，因此不创建 v149、不组合噪声结果、不修改 `restart-submission`，SOTA 保持 v148。正常路径下，简单利用尾 wave、横向扩 N、后端 sink-load 或提高 MMA 调度上限均已封口。若后续重新开启，值得投入的方向应是能实质改变 Case2/3 权重流量/跨 CTA 复用的算法级方案，或平台正式暴露且 OJ 合规的异步 global-to-shared/BSM 原语。
