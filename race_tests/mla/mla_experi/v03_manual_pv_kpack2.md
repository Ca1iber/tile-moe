# v03 MLA manual PV k_pack=2 实验

## 背景

本轮目标是把 re-gemm 的最终 SOTA 思路迁移到 MLA：

- 使用 `TensorCoreIntrinEmitter` 手写 MACA MMA。
- 对 RS 路径显式调用 `ldmatrix_b + mma`。
- 使用 `k_pack=2`，把 B operand 的 shared-to-local load 从更窄的分组改成一次加载两个 K-slice。

re-gemm 的关键结论是：`T.gemm` 本身已经会 lower 到 `__builtin_mxc_mma_16x16x16f16`，收益不是“启用 MMA”，而是改变 B operand 的喂数路径。

## 尝试路径

### 1. QK content GEMM

替换位置：

```text
Q_shared @ KV_shared.T -> acc_s
```

实验版本把 Q 从 shared 改成 fragment/register，并用 `qk_mma.ldmatrix_b + qk_mma.mma` 替换第一条 QK `T.gemm`。

结果：正确性通过，但性能稳定变慢。

| case | batch | kv_ctx | split64 base ms | manual QK ms | 变化 |
|---:|---:|---:|---:|---:|---:|
| 6 | 1 | 65536 | 0.718278 | 0.804106 | +11.95% |
| 11 | 2 | 65536 | 1.461257 | 1.599450 | +9.46% |
| 16 | 4 | 65536 | 2.218739 | 2.428645 | +9.46% |
| 21 | 8 | 65536 | 3.746724 | 4.185763 | +11.72% |
| 26 | 16 | 65536 | 7.420987 | 8.280250 | +11.58% |

判断：QK 的 `M=16,N=32,K=512` 与 MoE 的大 N GEMM 不同。把 Q 整块常驻 fragment 会增加寄存器/fragment 压力，而 MLA kernel 本来已经有 `acc_o[16,512]` 这个很大的 fp32 accumulator。该方向不进入代码。

### 2. PV GEMM

替换位置：

```text
acc_s_cast @ KV_shared -> acc_o
```

这是更接近 re-gemm Step2 的 RS 路径：

```text
A: fragment/register
B: shared
C: fragment/register accumulator
```

当前提交保留 QK 两条 `T.gemm`，只把 PV 的 `T.gemm` 换成手写 `TensorCoreIntrinEmitter(k_pack=2)`。

## 采样结果

每 4 个 case 采样：

| case | batch | kv_ctx | split64 base ms | manual PV ms | 变化 |
|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 0.394986 | 0.395281 | +0.07% |
| 9 | 2 | 16384 | 0.431811 | 0.406030 | -5.97% |
| 13 | 4 | 8192 | 0.365817 | 0.348669 | -4.69% |
| 17 | 8 | 2048 | 0.145739 | 0.141881 | -2.65% |
| 21 | 8 | 65536 | 3.737447 | 3.526046 | -5.66% |
| 25 | 16 | 32768 | 3.799605 | 3.592743 | -5.44% |
| 29 | 32 | 16384 | 3.996583 | 3.791520 | -5.13% |

排除 case1 后，stride-4 采样平均变化为 `-4.21%`。

额外长 KV 采样：

| case | batch | kv_ctx | split64 base ms | manual PV ms | 变化 |
|---:|---:|---:|---:|---:|---:|
| 6 | 1 | 65536 | 0.718278 | 0.721432 | +0.44% |
| 11 | 2 | 65536 | 1.461257 | 1.375604 | -5.86% |
| 16 | 4 | 65536 | 2.218739 | 2.095086 | -5.57% |
| 21 | 8 | 65536 | 3.746724 | 3.527296 | -5.86% |
| 26 | 16 | 65536 | 7.420987 | 6.964204 | -6.16% |

## Generated source 证据

source 统计：

| 版本 | `__builtin_mxc_mma` | `uint4` | `uint2` |
|---|---:|---:|---:|
| split64 base | 3 | 10 | 26 |
| manual QK | 3 | 12 | 22 |
| manual PV | 3 | 12 | 24 |

manual PV 的 PV 段 source 形态：

```cpp
for (int local_id = 0; local_id < 8; ++local_id) {
  pv_b_local[(j * 8) + local_id] = ...
}
for (int kp = 0; kp < 2; ++kp) {
  for (int j_1 = 0; j_1 < 16; ++j_1) {
    acc_o[j_1] = __builtin_mxc_mma_16x16x16f16(
      pv_b_local[j_1 * 2 + kp],
      acc_s_cast[kp],
      acc_o[j_1]
    );
  }
}
```

这和 re-gemm 的核心变化一致：MMA 指令不变，B local 翻倍，`ki` 外层减少，新增 `kp=0/1` 连续喂 MMA。

## 结论

- QK 手写 RS 不适合当前 MLA shape，稳定慢约 9-12%。
- PV 手写 RS `k_pack=2` 是有效方向，在 batch >= 2 的采样点通常有约 5-6% latency 下降。
- case1 / 很小 shape 的 split64 baseline 存在随机 correctness/timing 不稳定，本轮性能结论不使用 case1。

## 后续

1. 跑完整 1-30 case，确认 manual PV 的 correctness 和整体平均收益。
2. 尝试只在 batch >= 2 或更大工作量 case 启用 manual PV，小 batch 保留原 `T.gemm`。
3. 继续 profile manual PV 后的剩余占比，判断下一步是 combine 优化、Output_partial 写读优化，还是 QK/K_pe copy 优化。

CSV：

```text
race_tests/mla/mla_experi/v03_manual_qk_pv_sample.csv
race_tests/mla/mla_experi/v03_manual_pv_stride4_sample.csv
```
