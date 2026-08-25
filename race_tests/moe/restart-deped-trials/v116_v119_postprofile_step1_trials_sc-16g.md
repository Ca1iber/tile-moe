# v116-v119 v110 fresh-profile 后续 Step1 试验

基线为 v110 external-OJ-SOTA，Case2/3 fresh mcTracer 显示 Step1 约占 GPU 主路径 62%，资源为 226 MT / 42 ST / 2 waves。以下均为正常 TileLang、无 async、无注入、完整有效输出 correctness PASS 的隔离实验。

| 版本 | 机制 | 目标 Case | 配对中位变化 | 资源/代码证据 | 结论 |
|---|---|---:|---:|---|---|
| v116 | native-A 逐行谓词改为 32-row MMA-wave 谓词 | 2 | `+0.207%` | Step1 226/36/2 | 稳定无收益，reject |
| v117 | Step1 `4×1` wave 几何改为等面积 `2×2` | 2 | `+22.983%` | Step1 254/44/2，静态写回竞争告警 | A fragment 膨胀且失去 consumer-native A，reject |
| v118 | `T.Parallel(128,8)` 细粒度 Gate/Up 交错 | 3 | `+213.233%` | 216/32/2，`uint4` 52→44 | cooperative vector 映射被破坏，reject |
| v119 | 每线程四个 128-bit slot 的 Gate/Up 交错 | 3 | `-0.132%` | 224/30/2，`uint4=44` | correctness PASS 但噪声且首轮离群，reject |

结论：降低寄存器或交错两个权重基址都不是充分条件；必须保留 `T.copy` 的 cooperative vector mapping，当前 `4×1` MMA 几何也明显优于 `2×2`。下一方向转向跨 kernel 的 group metadata 去重，不再排列 Gate/Up producer。
