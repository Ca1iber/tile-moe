# exact-v166 Case2/3 Step2 profile 与 v189 Down register-prefetch 闭环

## 身份与范围

- Parent: exact v166 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Candidate v189: `85de7b4333b00353ecd29788a8f50de2c88defc68b7cd1f2f1c7571acbbd9a9a`
- Dorm start: `41b40dd2`
- Target: MetaX C500 sc-16g，official Case2/3 unified M192 Step2
- 外部 OJ SOTA 仍是 v148；本轮不移动 dorm candidate，也不创建 submission。

## exact-v166 mcProfiler 证据

### Case2 Step1

| 指标 | 数值 |
|---|---:|
| Total cycles | 6,925.77 Kcycles |
| Workgroups / waves | 768 / 3,072 |
| Average wave life | 145,649.88 cycles |
| AP MMA / MTE / STE duty | 63.00% / 6.48% / 2.55% |
| VLS pipeline stall | 82,925,265 |
| WSM stall | 14,882,351 |

### Case2 Step2

| 指标 | 数值 |
|---|---:|
| Total cycles | 5,818.50 Kcycles |
| Workgroups / waves | 1,344 / 5,376 |
| Average wave life | 48,086.11 cycles |
| AP MMA / MTE / STE duty | 54.58% / 8.82% / 5.43% |
| VLS pipeline stall | 28,324,303 |
| WSM stall | 7,365,057 |
| Global read / write | 969,353,184 B / 88,089,856 B |
| DNOC read average latency | 280.65 cycles |
| L2C duty | 24.08% |
| VL1 partition stalls sum | 27,508,947 |

Case2 Step2 的 compulsory-byte 模型：

- Down weights: `32 * 7168 * 2048 * 2 = 939,524,096 B`
- consumer-native Up-logits: `48 * 32 * 4 * 256 * 8 * 2 = 25,165,824 B`
- 合计：`964,689,920 B`

实测只比上述两项高 `4,663,264 B`，约 `0.483%`。理论 padded output 写入为 `6144 * 7168 * 2 = 88,080,384 B`，实测仅高 9,472 B。由此确认：Step2 已接近最小全局字节，L2 duty 也只有 24.08%；瓶颈是约 281-cycle 读延迟的暴露与 VLS/MFMA 发射间隙，不是冗余 HBM 流量或带宽打满。

### Case3 Step2 缩放核验

| 指标 | Case2 | Case3 |
|---|---:|---:|
| Workgroups / waves | 1,344 / 5,376 | 2,688 / 10,752 |
| Average wave life | 48,086.11 | 48,246.90 |
| MMA duty | 54.58% | 55.69% |
| MTE duty | 8.82% | 9.00% |
| VLS pipeline stall | 28,324,303 | 57,392,198 |

Case3 expert 数翻倍后，workgroups、waves 和 VLS stall 近似翻倍，而每-wave 生命周期和 duty 几乎不变，证明 Case2/3 是同一稳定的 per-wave bottleneck，可用一个共同机制优化。

## v189 假设与实现

Unified kernel 为 short M128xN256 分配 256x64 Down shared tile；long M192xN128 分支只使用前 128x64。v189 利用已经分配但在 long 分支闲置的后半 shared：

1. K0 直接装入 shared half 0；
2. 当前 K64 的 A 装入 fragment，同时把下一块 Down K64 装入每线程 32-element local buffer；
3. 对当前 shared half 做 LDS+MFMA；
4. 把预取寄存器写入 alternate shared half，并同步一次。

目标是在不增加 shared、grid、global bytes、MFMA 数量的前提下隐藏 Down latency。该方向不同于历史失败的 second-A-fragment ping-pong。

## v189 门禁与结果

- OJ source validator：PASS
- 严格全 valid-row 正确性：PASS（rtol=1e-2、atol=1e-2）
- Step2 资源：220 MT / 56 ST、静态驻留指标 2，与 parent 相同；无 spill
- Shared：仍为 32 KiB
- 生成源码：66,190 B，13 MMA sites，17 sync sites，0 async-copy sites

Case2 direct-v166 1x20 筛选：

- Parent: `3.4461566925 ms`
- Candidate: `3.7164417267 ms`
- Change: `+7.8430860%`（回退）

Case2 已满足终止性否决条件，因此没有继续浪费 Case3 计时。

## 结论

同步 global→register 的“预取”没有转化为非阻塞搬运：数据在写入 alternate shared 前仍必须就绪，同时新增 local live range、地址计算和显式 register→shared 搬运。即使复用空闲 shared 且静态资源指标不变，端到端仍回退 7.84%。

关闭普通同步 Down register-prefetch/ping-pong。后续不得把“换一个顺序的同步 load”当作异步流水；若没有合规的非阻塞 TileLang primitive，Case2/3 Step2 应优先减少依赖链/指令开销或改变每-wave 工作映射，同时必须保持当前近最小 global bytes。

