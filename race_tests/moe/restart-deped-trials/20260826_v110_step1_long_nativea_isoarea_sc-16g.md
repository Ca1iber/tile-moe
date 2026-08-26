# v110 Case3 Step1 长 expert 等面积原生 A 探针（放弃）

## 结论

该方向不晋级。Case3 长 expert 从 v110 的两个 `M128xN128` 行块改成一个逻辑 `M256xN64` tile（内部为两个原生 `M128xN64` 半片），虽然复用 Gate/Up 权重并显著减少观测流量与 VLS stall，但完整 Case3 仍回退约 2.3%。把下一 K tile 的上下半片 A load 错开放到独立 MMA 之间也没有得到可区分收益。

- 不创建编号版本；
- 不创建 `restart-submission`；
- `dorm` 的有效 submission 仍是外部 OJ AC 的 v110；
- 未达到本项目规定的稳定候选门槛（至少 1.2%），更未达到本轮目标的整体 7%。

## 假设与实现

Case3 固定分布为前 32 个 expert 各 100 行、后 32 个 expert 各 184 行。v110 对长 expert 使用两个 padding 到 128 行的 Step1 CTA。探针把后半 expert 的两个行块合并为一个逻辑 `M256xN64` tile：

- 上下各用一个 `M128xN64` 原生 A fragment；
- 两个行半片共享每个 K64 的 Gate/Up `N64xK64` shared tile；
- bottom 仅保留覆盖 56 个有效行的 wave；
- 采用 rolling-A，已消费的 K32 stripe 原位装入下一 K64；
- 最终变体在 Up(top) 后装下一 top stripe、在 Up(bottom) 后装下一 bottom stripe，尝试用独立 bottom MMA 覆盖 top load 延迟；
- 只使用 TileLang primitive，无 async copy、注入、结果缓存或规则绕过。

最终归档源码 SHA-256：`f5500d9abf608e33b94112e85100d251b6007f0a33e7457e35c66eb158bb6452`。

## 正确性

使用与最近实验相同的固定 seed Case3 reference，FP32 比较：

- `max_abs = 0.001953125`；
- `strict_mismatch = 0`（`rtol=1e-2, atol=1e-2`）；
- `oj_mismatch = 0`（`rtol=5e-2, atol=5e-2`）。

TileLang 对 consumer-native `up_logits` 映射仍给出与 v95/v110 同类的静态 race warning；未关闭 race checker。逐元素结果证明本次固定输入正确，但由于性能失败，本探针不进入 OJ 候选流程。

## 资源与生成代码

最终错开加载变体 Case3 codegen：

| kernel | 作用 | MT registers | ST registers | static max waves/PEU |
|---|---|---:|---:|---:|
| `kernel_kernel` | prepack | 78 | 11 | 6 |
| `kernel_kernel_1` | short-expert Step1 | 226 | 42 | 2 |
| `kernel_kernel_2` | long-expert Step1 | 198 | 23 | 2 |
| `kernel_kernel_3` | Step2 | 220 | 52 | 2 |

生成源码 40,683 bytes，12 个静态 MMA site，11 个 `syncthreads` site，0 async-copy site。未观察到 spill；因此失败不能归咎于寄存器溢出。

## mcTracer 与短测

未错开 rolling load 的基础探针，稳定 trace 中各段约为：

- prepack：0.246--0.252 ms；
- short-expert Step1：1.815--1.821 ms；
- long-expert Step1：3.066--3.077 ms；
- Step2：2.569--2.600 ms。

长、短 Step1 合计约 4.888 ms，而 v110 单 Step1 约 4.697 ms，约回退 4.1%。

同进程短 AB（warmup 3、repeat 10）：

| 变体 | v110 parent | candidate | candidate 相对变化 |
|---|---:|---:|---:|
| rolling-A 基础探针 | 7.554073 ms | 7.724262 ms | +2.2529%（更慢） |
| 上下半片 stagger load | 7.575373 ms | 7.749837 ms | +2.3030%（更慢） |

两个结果几乎相同，stagger 改动没有产生超出噪声的正向信号，因此不再为该变体追加长测。

## mcProfiler 线索

对基础等面积探针的长-expert Step1 kernel 做 metrics replay，并与 v110 Case3 Step1 报告对照：

| 指标 | v110 | M256xN64 长-expert探针 | 变化 |
|---|---:|---:|---:|
| Total cycles (Kcycles) | 9,043,580.14 | 9,735,842.21 | +7.65% |
| Roofline `during` | 69,589,716 | 70,131,508 | +0.78% |
| Global read bytes | 38.295 GB | 33.075 GB | -13.63% |
| Global write bytes | 13.185 GB | 13.185 GB | 基本不变 |
| VLS pipeline stall | 1.518 B cycles | 1.068 B cycles | -29.65% |
| VL1 partition stall 合计 | 1.542 B cycles | 1.135 B cycles | -26.39% |
| AP MTE duty | 44.28% | 44.14% | -0.14 pp |
| AP MMA duty | 24.54% | 24.38% | -0.16 pp |
| Average wave life | 4,477.56 cycles | 4,480.27 cycles | +0.06% |

这组证据说明：共享 B 确实减少了真实读流量和 VLS stall，但这些节省没有转化为 wall-clock。`M256xN64` 把原来两个独立的行 CTA/半片工作合并到同一 CTA 后，执行链的可见并行度与调度重叠抵消了流量收益；单纯把 rolling load 插到相邻 MMA 间不能修复。

## 后续若重启该方向

只有在能改变 wave 级并行结构时才值得重开，例如让不同 wave 独立负责上下半片、而不是同一 wave 顺序执行两个 fragment；否则不应继续微调 load 顺序。任何新方案仍需先通过 codegen 资源门、严格正确性和至少 1.2% 稳定 ABBA 门槛。
