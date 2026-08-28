# v152 Case2 动态 M192 Step2 拆分封口（sc-16g）

状态：**拒绝；不得进入 `restart-experiments/` 或 submission。**

## 假设

Case2 有 16 个 100-row short experts 和 16 个 184-row long experts。父版本用
两个 M128 CTA 处理每个 long expert，因此同一 Down panel 在逻辑上会读取两次。
本轮将 v152 已在 Case3 成功的动态 `M192xN128` long-Step2 机制移植到
Case2，目标是在不物化预处理权重的情况下复用一次 Down panel。

这符合 OJ 约束：所有映射均由同一次 `run_kernel` 中的 TileLang kernel 重建，
没有 warmup 预处理、跨调用缓存、async copy、代码注入或 MXMACA builtin。

## 试验 A：全部 long experts 改为 M192

- 精确源码：`sources/full_dynamic_m192.py`
- SHA-256：`a0517aa2c7fbbceb300455d976efb154121dac4d86c6b8da0c316be73c8a7f20`
- 整张输出：PASS，`rtol=1e-2, atol=1e-2`
- 首轮 paired screen：父 `3.935795 ms`，候选 `3.938688 ms`
- 变化：`+0.07350%`，低于 1.2% 门槛且略慢

初版映射 kernel 固定 64 threads，Case2 后 32 threads 越界读取
`group_sizes`，恰好导致一个 256x7168 物理块错误。最终源码增加
`map_thread < num_experts` 门禁后整张输出通过；报告中的性能只对应修正版。

mcTracer 的正式区间分解：

| 版本 | rank | prepack | Step1 | short Step2 | long Step2 | Step2 合计 |
|---|---:|---:|---:|---:|---:|---:|
| v152 | - | 0.126720 | 2.484224 | - | - | 1.322752 |
| full dynamic | 0.007680 | 0.127488 | 2.491648 | 0.597504 | 0.726528 | 1.324032 |

拆分后 Step2 本身没有变快，另增 7.68 us rank kernel；理论 Down 流量下降
没有转化为端到端收益。

## 试验 B：8 个 long 保持 M128，8 个改为 M192

- 精确源码：`sources/half_dynamic_m192.py`
- SHA-256：`044ee9f485c8e74714cde64097e4322891eef15715212a44883aaf343ad509d2`
- 整张输出：PASS，`rtol=1e-2, atol=1e-2`
- 网格：统一 M128 kernel 896 CTA，M192 kernel 448 CTA，总 CTA 数不变
- 首轮 paired screen：父 `3.924697 ms`，候选 `4.032051 ms`
- 变化：`+2.73533%`，明确回退

## 结论

Case2 的原统一 Step2 网格已经能较好隐藏或复用 Down 读取。将 short/long
拆成独立 kernel 会损失持续吞吐和局部性；无论全拆还是均衡拆分都不能兑现
权重流量收益。后续不要重复 Case2 的 M128/M192 Step2 比例扫参。

权重“预处理”在本题的有效形式应优先是 **CTA 内随用随变换、直接复用**，
而不是先物化完整 packed 权重。Case2 该复用点已经由本实验封口；Case3 的
同机制仍保留在 v152 本地候选中。
