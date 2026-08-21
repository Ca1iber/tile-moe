# v085 Step2 `up_logits` 行跨度去冲突报告

## Verdict

- 本地结论：三组 OJ shape 均稳定胜过 v084，满足 1.2% 本地候选门槛。
- SOTA 结论：`inconclusive`；外部 OJ 的逐 Case 数值尚未取得，因此不创建同 ID 的 `restart-submission`，也不声明全局 SOTA。
- 机制：只给 `up_logits` 的物理 leading dimension 增加 128 个 FP16 元素（256 bytes）；逻辑列范围、计算量、CTA grid、kernel 数和同步结构不变。
- 因果定位：Case3 mcTracer 中 Step1 中位仅改善 0.55%，Step2 中位改善 12.75%，端到端改善 4.44%。

## 1. 上版本遗留问题

v084 已通过 Step2 A-first 半块调度改善三个 Case，但 Step2 仍需要从 HBM/L2 读取 Step1 写回的 `up_logits`。其物理 FP16 行跨度是：

- Case1：8192 × 2 = 16,384 bytes；
- Case2/3：2048 × 2 = 4,096 bytes。

这两个跨度都是 2 的幂。此前把有效行物理压紧没有收益，说明 padding 洞本身没有造成需要消除的有效 HBM 字节；剩余问题更可能是 Step2 并发读多行时的地址映射，而不是逻辑流量过大。

## 2. 问题原因分析

### 已验证结论

- 候选不改变有效读写元素数，也不新增 kernel。
- Case3 行 pitch sweep 对地址扰动呈周期响应：+64B 为 -3.45%，+256B 为 -4.43%，+384B 为 -2.65%，+512B 回到 +0.08% 噪声。
- 最终 +256B 候选在三 Case 的重复 AB/BA 中均稳定改善约 4.3%--4.6%。
- Case3 paired mcTracer 把收益定位到 Step2：三对为 -12.08% / -12.75% / -13.00%；Step1 仅 -0.40% 到 -0.75%。

### 当前推测

周期响应强烈支持原 4KB/16KB pitch 触发了缓存 set、memory partition 或内部 bank 的别名冲突；+256B 使相邻逻辑行落到不同映射位置。mcTracer 只能证明阶段归因，不能直接给出硬件 cache/bank 冲突计数，因此这里保留为高置信推断而非硬件定论。

### 下一步需要验证的假设

- 若 mcProfiler 能稳定提供 VL1/L2 transaction、hit 或 stall 指标，应比较 v084 与 v085 的同一 Step2 kernel。
- 在 +256B pitch 上继续改变 Step2 的 CTA/row 映射，若收益还能叠加，说明冲突不只来自 leading dimension，还来自并发 CTA 的行选择。

## 3. 本版本解决方案

把 `up_logits` 的编译期 shape 与 host workspace shape 从 `(total_padded, intermediate)` 改为 `(total_padded, intermediate + 128)`。Step1/Step2 所有列索引仍严格限制在 `[0, intermediate)`；新增列只改变下一行的物理起点。

额外 workspace：Case1 0.75 MiB，Case2 1.5 MiB，Case3 3 MiB。它不增加逻辑流量，但会轻微增加显存占用和地址计算寄存器。

## 4. 具体落地策略

- 父版本：`v084_step2_all_cases_a_first_half_interleave_sc-16g`。
- 候选：`restart-experiments/v085_step2_up_logits_ldpad128_sc-16g/v085_step2_up_logits_ldpad128_sc-16g_custom_fusedmoe.py`。
- 候选 SHA-256：`6d4aa3a6f428d023adf6b681ea3a4429e5fd563d84f4fdd12fb85a8aab5be3d5`。
- 仅两处源代码变化：kernel 的 `intermediate_shape` 和 `_workspace` 分配都增加 128 列。
- 正常 OJ-allowed TileLang；无结果缓存、Torch 代算、foreign source、external call 或 async copy。

## 5. Benchmark 对比

机器为 MetaX C500 `sc-16g` 25% sGPU。计时使用同进程 device event、AB/BA 交替、warmup 10、repeat 200；Case1/3 三轮，波动较大的 Case2 五轮。负值表示候选更快。

| Case | Shape `(experts, hidden, intermediate)` | v084 median | v085 median | 相对 v084 | pstdev |
|---|---|---:|---:|---:|---:|
| 1 | `(16, 2048, 8192)` | 2.703960 ms | 2.585677 ms | `-4.374%` | `0.103%` |
| 2 | `(32, 7168, 2048)` | 4.589121 ms | 4.381121 ms | `-4.527%` | `0.029%` |
| 3 | `(64, 7168, 2048)` | 8.952974 ms | 8.558380 ms | `-4.412%` | `0.015%` |

- Case1：`-4.468% / -4.219% / -4.374%`；为排除空闲低频，归档源使用 warmup 1000、repeat 300。
- Case2：`-4.514% / -4.593% / -4.527% / -4.550% / -4.519%`。
- Case3：`-4.412% / -4.407% / -4.442%`。
- 上表和样本均来自归档路径、候选 SHA `6d4aa3...` 的精确文件；临时 staging 的首次长测分别为 `-4.315% / -4.602% / -4.438%`，与归档重测一致。
- 归档源第一次 Case1 尝试的首轮 parent 为 5.37 ms，随后回落，判定为空闲低频/DVFS 污染；原始 JSON 保留为诊断，不进入 verdict。提高持续 warmup 后 parent 恢复到 2.70 ms 且三轮均同向。
- 历史外部 OJ 基线为 v059 的 79.33 分；v085 尚无外部 OJ 分数，不能把本地延迟换算成 OJ 分数或声明超过该分数。

### Case3 pitch 因果对照

| 额外 FP16 列 | 额外 pitch | Case3 median change | Protocol |
|---:|---:|---:|---|
| 32 | 64B | `-3.448%` | 2× AB/BA, 5/100 |
| 64 | 128B | `-6.104%` | 3× AB/BA, 10/200；绝对时钟漂移明显 |
| 128 | 256B | `-4.429%` | 2× AB/BA, 5/100 |
| 192 | 384B | `-2.653%` | 2× AB/BA, 5/100 |
| 256 | 512B | `+0.077%` | 2× AB/BA, 5/100 |

128B 的长测受运行期间绝对时钟漂移影响，不能与其余短对照直接排序；但 512B 扰动回到基线、64/256/384B 均改善的周期性仍是关键证据。最终选择 +256B 是因为其短对照最稳且三 Case 长测全部通过。

## 6. Profile 指标变化

### mcTracer Case3

| 指标 | v084 -> v085 paired median | 三对样本 | 解释 |
|---|---:|---|---|
| Step1 | `-0.547%` | `-0.547% / -0.403% / -0.748%` | 次要影响 |
| Step2 | `-12.750%` | `-12.080% / -12.750% / -13.002%` | 主要收益来源 |

### ISA / resources

| Case | Kernel | v084 MT/ST | v085 MT/ST | v085 waves | Spill | MMA |
|---|---|---:|---:|---:|---:|---:|
| 1 | Step1 | 222/52 | 222/52 | 2 | 0 | 256 |
| 1 | Step2 | 206/52 | 204/60 | 2 | 0 | 256 |
| 2 | Step1 | 216/54 | 218/54 | 2 | 0 | 256 |
| 2 | Step2 | 222/52 | 222/54 | 2 | 0 | 256 |
| 3 | Step1 | 216/54 | 218/54 | 2 | 0 | 256 |
| 3 | Step2 | 222/52 | 222/54 | 2 | 0 | 256 |

- 三 Case generated-device gate PASS；最终 MetaX ISA 未发现 async/copy wait、spill/reload。
- kernel 数、256-thread block、2-wave 档位和每 kernel 256 个 MMA 均未改变。
- mcProfiler 新计数未采集；没有可稳定解释的 cache/bank counter，因此不编造 hit-rate 或 stall 数值。
- mx-smi 只保存了空闲态身份快照：KMD 3.8.30、MACA 3.7.1.5、25% compute、16,000 MiB quota、MC 1800 MHz。该快照不作为带宽证据。

## 7. 实验总结

方案在本地三 Case 上成功，并且收益远离 1.2% 门槛与噪声带。最强证据不是单次总延迟，而是三 Case 一致的长测、Case3 Step2 的 12.75% trace 缩短，以及 512B 周期扰动回到基线的因果对照。

完整 padded output correctness、OJ source/generated-code 检查、三 Case ISA 与资源门禁均通过。由于缺少外部 OJ 逐 Case数值，本版本按最新 SOTA contract 记为 `inconclusive`，保留为下一轮正常优化的本地候选父版本，不创建 `restart-submission/v085...`。

下一条最有价值的实验是保持 +256B pitch，改变 Step2 同时活跃 CTA 的 row/expert 映射，观察是否还能降低同类地址冲突；若不能，再尝试把 pitch 设为按 Case 选择的较小扰动，以减少 workspace 增量。
