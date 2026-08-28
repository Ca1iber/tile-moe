# v152 动态 long-expert M192xN128 Step2 候选（sc-16g）

状态：**本地候选，等待外部 OJ；尚未写入 `restart-submission/`。**

## 身份

- 性能父版本：v151 dynamic-map + 8-wave two-panel prepack
- 父版本 SHA-256：`bd123e3d5accd98bb572ab64acfa9bffcc37578d04b4f6ef9f812230f01f2fd5`
- v152 精确源码 SHA-256：`ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- 可靠外部 OJ-AC 祖先：v148
- 设备：MetaX C500，25% compute slice，16 GiB sGPU

## 改动

Case3 的 long expert 有 184 个有效 token、占两个物理 M128 workspace block。
v151 的通用 Step2 为两个 block 分别发 CTA，因此相同 Down tile 会被处理两次。

v152 复用 v150/v151 每次调用重建的运行期 `expert_rank` 表：

1. short rank 仍使用 M128xN256 Step2；
2. long rank 使用一个真正的 M192xN128 fragment，一次覆盖两个物理 block；
3. 运行期读取真实 expert ID、padded offset、raw offset 和 group size，不假设
   short/long expert ID 排列；
4. 一个 long CTA 只加载一次 N128 Down tile，并将 192..255 padding 行显式清零。

这重新利用了历史 v143 的 Down-weight reuse 思路，但移除了导致 v143 外部 WA
的静态 expert-ID、静态 row count 和静态 offset 假设。

## 正确性与合规

- OJ source + generated-device validator：PASS。
- interleaved `[100,184,100,184,...]` expert 排列：整张输出（含 padding）
  `torch.testing.assert_close` PASS，`rtol=1e-2, atol=1e-2`。
- Case1/2 整张输出严格 PASS。
- 未关闭 race checker；未使用 async copy、代码注入、外部代码、MXMACA
  builtin 或跨调用缓存。
- 生成代码：`memcpy_async_sites=0`、`barrier_wait_sites=0`、无 spill。

TileLang 静态 verifier 会对 v151 已有的 short-Step1 native workspace 写索引
给出一条 false-positive race warning；该映射对 `(row,col)` 是一一映射，本轮
没有禁用 checker。整张输出和交错 expert 检查均通过，但仍将该 warning 作为
外部 OJ 风险显式保留。

## 正式 AB/BA

精确 v152 相对精确 v151，Case3 使用 5 轮、每轮 warmup=3/repeat=20：

| 轮次 | 顺序 | v151 ms | v152 ms | 变化 |
|---:|---|---:|---:|---:|
| 1 | AB | 7.240422 | 7.028032 | -2.9334% |
| 2 | BA | 7.227546 | 7.028147 | -2.7589% |
| 3 | AB | 7.235290 | 7.020928 | -2.9627% |
| 4 | BA | 7.230618 | 7.034547 | -2.7117% |
| 5 | AB | 7.236992 | 7.029453 | -2.8678% |

- 中位变化：**-2.8678%**
- 平均变化：**-2.8469%**
- population stddev：`0.0973%`
- 五轮全部超过 1.2% 晋级门槛。

旁路 Case 使用精确源码、warmup=5/repeat=10：

| Case | v151 ms | v152 ms | 变化 | 判定 |
|---:|---:|---:|---:|---|
| 1 | 2.180634 | 2.189133 | +0.3898% | strict PASS，噪声等价 |
| 2 | 3.961037 | 3.942912 | -0.4576% | strict PASS，噪声等价 |

相对可靠 OJ-AC v148 的本地累计倍率为：

`1.03550788 * 1.01509160 * 1.02952426 = 1.08216934`

即 v148→v150→v151→v152 的有效 hop 连乘约 **+8.2169%**。

## Codegen 与 mcTracer 因果闭环

Case3 生成 7 个 kernel：

| Symbol | 角色 | Grid | MT | ST | 静态 wave 上限 |
|---|---|---|---:|---:|---:|
| `kernel_kernel` | 动态 expert-rank | 1x1 | 4 | 18 | 8 |
| `kernel_kernel_1` | short input prepack | 28x32 | 18 | 20 | 8 |
| `kernel_kernel_2` | short Step1 | 16x32 | 226 | 42 | 2 |
| `kernel_kernel_3` | long 2-panel prepack | 28x32 | 28 | 30 | 8 |
| `kernel_kernel_4` | long Step1 | 32x32 | 202 | 32 | 2 |
| `kernel_kernel_5` | short Step2 M128xN256 | 28x32 | 220 | 52 | 2 |
| `kernel_kernel_6` | long Step2 M192xN128 | 56x32 | 190 | 32 | 2 |

最终 SHA 的 mcTracer 中位时长：

| Kernel | 时间 |
|---|---:|
| 动态映射 | 0.012800 ms |
| short prepack | 0.134912 ms |
| short Step1 | 1.822464 ms |
| long prepack | 0.156416 ms |
| long Step1 | 2.477568 ms |
| short Step2 | 1.041152 ms |
| long Step2 M192 | 1.362432 ms |

v152 的 Step2 合计 `2.403584 ms`，相对 v151 的 `2.617344 ms` 减少
`213.760 us`（约 **8.17%**）。端到端正式计时减少约 207–214 us，量级完全
闭合。未晋级的双 M128/M256-equivalent 对照使用 224 MT registers，Step2
合计反而为 `2.632192 ms`；真正 M192 fragment 将 long kernel 降到 190 MT
registers，是收益能够兑现的关键。

## 晋级状态

v152 已通过本地 1.2% 门槛、整张输出、动态 expert 排列、codegen 和 mcTracer
门禁，可交给外部 OJ。只有三 Case 外部 AC 且总分不回退后，才更新
`restart-submission/` 和全局 SOTA。
