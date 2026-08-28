# v152 Case2 单网格 mixed-slot Step1 封口（sc-16g）

状态：**正确但明确回退，拒绝。**

## 假设与实现

父版 Case2 Step1 使用单个 `16x48` M128xN128 网格。184-row long expert
占两个物理 M128 slot，因此相同 Gate/Up panel 会被逻辑读取两次。

候选保持完全相同的 `16x48` launch，不拆 short/long kernel：

- short slot 在同一 CTA 内串行计算两个 M192xN64 pass，覆盖原 N128；
- long expert 的两个物理 slot 分别解释成两个 N64 half，每个 CTA覆盖完整
  192 行；
- input prepack 在本次 `run_kernel` 内把每个 slot 打成 M192 consumer-native
  layout；
- long Gate/Up panel 的理论读取量减半；不增加 CTA 数或 launch 数。

源码只使用 OJ 允许的 TileLang primitive，无 async copy、注入、外部调用、
MXMACA builtin、warmup 预处理或跨调用缓存。

## 门禁

- 精确源码：`sources/trial_v152_case2_unified_step1_mixedslot.py`
- SHA-256：`df052f0bfd09f41b6a5c642bad26484cd9b4dc37898038fd4aa606132312dabe`
- OJ source validator：PASS
- 整张 padded output：PASS，`rtol=atol=1e-2`
- paired screen：父 `3.920422 ms`，候选 `4.559232 ms`
- 变化：**+16.2944%**

## mcTracer 归因

| 阶段 | v152 | mixed-slot | 增量 |
|---|---:|---:|---:|
| input prepack | 0.126720 | 0.182528 | +0.055808 ms |
| Step1 | 2.484224 | 3.031808 | +0.547584 ms |
| Step2 | 1.322752 | 1.333248 | +0.010496 ms |

候选 Step1 为 `224 MT registers/thread`、16 KiB dynamic shared、无 spill；父版
约 226 MT，因此失败不是寄存器 cliff。约 89% 的总回退来自 Step1 本体：
short CTA 串行两遍完整 K 流水、M192 行映射以及额外同步/控制开销，远大于
long Gate/Up 流量下降的收益。prepack 扩成 512-thread/M192 又增加约 56 us。

## 结论

Case2 不能通过通用 M192xN64 mixed-slot kernel同时保住 short M128xN128 的
效率。后续不要重试 N64 pass 数、M192 prepack panel 数或相同机制的小参数
扫；除非能保持现有 short M128xN128 指令流水和 accumulator layout不变，
否则减少 long 权重读取没有净收益。
