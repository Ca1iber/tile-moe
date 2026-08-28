# v152 Case3 short-Step1 N-tile 拐点封口（sc-16g）

状态：**拒绝推进；N64 有真实局部收益，但端到端低于 1.2% 门槛。**

## 身份与约束

- 远端分支/起点：`dorm` / `47536df0773fd993783252411c8ec5c787e53677`
- parent：`v152_dynamic_step2_m192n128_sc-16g`
- parent SHA-256：`ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- N64 SHA-256：`ce4473e80b90d7e053428fc0a4739236bc71d2a7abec11ea159e9d2221b461af`
- N64 半交错 SHA-256：`9e5af448f4286fb61469c44644fe0e5f41aa29a34e23490833d81d10104cf473`
- N32 SHA-256：`e6e1e776a92264028ac09c425033401e4dbd7ca4e9da2f76e545c4a78db1360c`
- 目标：Case3 的 32 个 short expert（每个 100 行）Step1。
- 合规：全部候选通过 OJ source validator；仅 TileLang primitive，无 async、注入、
  MXMACA builtin、结果缓存或权重预处理。
- 正确性：三份候选均通过完整有效行输出检查，`rtol=1e-2, atol=1e-2`。

## 假设卡

观察：parent short-Step1 只有 512 CTA、2048 waves，资源为 226 MT register、
32 KiB dynamic shared；mcProfiler 同时显示 80.76M VLS pipeline stall。

假设：把 `M128xN128` 缩成 `M128xN64`，在保持 Gate/Up 总 MFMA、权重字节和
数值路径不变的前提下，将 CTA/wave 数翻倍并降低 fragment/shared 资源，从而缩短
short-Step1。

预测：目标 kernel 的 wave life、VLS/VL1 stall 与时间下降；若额外 A 请求和 CTA
开销抵消并行收益，N32 将越过最优点。若端到端改善不足 1.2%，该方向不得推进。

## 干净配对筛选

| 候选 | 对照 | parent ms | candidate ms | 变化 | 判定 |
|---|---|---:|---:|---:|---|
| N64 | v152 | 7.030489 | 6.970560 | -0.8524% | 有信号，低于门槛 |
| N64 half-interleave | N64 | 6.964224 | 6.957671 | -0.0941% | 噪声 |
| N32 | v152 | 7.026855 | 6.989184 | -0.5361% | 已越过 N64 拐点 |

协议均为 Case3、AB/BA、1 round、warmup 5（最初 N64 筛选使用同项目原生
1x20 配对驱动），repeat 20；完整 JSON 保存在 `benchmark/`。

## mcTracer 归因

正式 profiler range 内七个 kernel；关键 `kernel_kernel_2`：

| 指标 | parent N128 | N64 | 变化 |
|---|---:|---:|---:|
| short-Step1 | 1.830144 ms | 1.755136 ms | -4.0985% |
| 七 kernel sum | 6.992640 ms | 6.917120 ms | -1.0800% |
| 首尾 span | 7.029248 ms | 6.975488 ms | -0.7648% |
| grid | 16x32 | 32x32 | 2x CTA |
| register/thread | 226 | 134 | -40.7% |
| dynamic shared | 32 KiB | 16 KiB | -50% |

N64 的 75.008 us 局部收益是真实的；该 stage 只占 parent 链路约 26%，所以即使
局部改善约 4.1%，端到端理论贡献也只有约 1.07%，与干净筛选一致。

## mcProfiler 因果对比

| 指标 | parent N128 | N64 | 变化/解释 |
|---|---:|---:|---|
| Total cycles | 6,518.60 K | 6,463.02 K | -0.8527% |
| workgroups / waves | 512 / 2048 | 1024 / 4096 | 2x |
| average wave life | 171,734.93 | 134,038.86 | -21.95% |
| VLS pipeline stall | 80,762,165 | 57,811,135 | -28.42% |
| WSM stall | 14,857,216 | 15,063,629 | +1.39% |
| MMA duty | 60.25% | 58.40% | 轻微下降 |
| MTE duty | 5.33% | 6.87% | 更多访存发射 |
| global read | 1,946,405,792 B | 2,029,197,728 B | +4.25% |
| global write | 13,107,520 B | 13,107,520 B | 不变 |
| DNOC read latency | 281.44 | 277.47 | -1.41% |
| VL1 partition stall sum | 99,705,876 | 64,875,007 | -34.93% |
| L2 hit | 26.50% | 39.93% | A 重读更多命中 L2 |

结论：N64 通过资源降压和更多独立 wave 显著缩短 wave life/stall，但也重复读取
更多 A、增加 AP active work；N32 进一步碎片化后净收益反而下降。N64 是这一族的
局部最优，不是可推进的全局优化。

## 停止理由

1. N64 干净端到端仅 -0.8524%，低于硬性 1.2% promotion floor。
2. mcTracer 的 stage-share 模型表明单靠该局部机制几乎没有跨门槛余量。
3. N32 已验证过度拆分回退；半交错未改善分区瓶颈。
4. 不推进 `dorm`，不创建版本号或 `restart-submission`，不声称 external-OJ SOTA。

后续若出现一个独立且自身过门槛的 Case3 改进，可重新评估 N64 是否作为组合项；
在此之前不得把多个亚门槛噪声项堆叠成“优化”。
