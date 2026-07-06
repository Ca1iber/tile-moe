# v04 QK SS k_pack=2 与 case1 正确性诊断

## 1. 上版本遗留问题

v03 已经验证了 PV GEMM 的手写 RS `k_pack=2` 有收益，但还留下两个问题：

1. case1 偶发 correctness fail，不能直接把 split64/manual-PV 当成最终可提交版本。
2. QK 手写 RS 版本正确性通过但性能稳定变慢，和 re-gemm 手写 GEMM 的预期不一致。

v03 采样中观察到：

```text
QK RS k_pack=2: 正确性通过，但 case6/11/16/21/26 慢约 9-12%
PV RS k_pack=2: batch >= 2 时通常快约 5-6%
```

## 2. 问题原因分析

### 2.1 case1 fail 的原因

先确认同一输入是否存在非确定性。固定同一组输入，manual-PV split64 连续运行 5 次：

```text
run0_vs_run1: bit_equal=True max_abs=0.00000000
run0_vs_run2: bit_equal=True max_abs=0.00000000
run0_vs_run3: bit_equal=True max_abs=0.00000000
run0_vs_run4: bit_equal=True max_abs=0.00000000
```

结论：不是 race condition，也不是 kernel 输出随机抖动。

然后搜索 case1 的 bad seed，找到 seed=11：

```text
seed=11
kernel_vs_half_ref: 122/8192 = 1.4893% mismatch, max_abs=0.00024414
kernel_vs_fp32_ref:   0/8192 = 0.0000% mismatch, max_abs=0.00012207
fp32_ref_vs_half_ref:146/8192 = 1.7822% mismatch, max_abs=0.00030518
```

这说明 case1 的 fail 主要来自官方 `ref_program` 使用 half 路径：

```text
half einsum -> half/torch softmax -> half einsum
```

而 TileLang kernel 的 online softmax + fp32 accumulator 更接近 fp32 reference。很多 mismatch 是 1 个 half ULP：

```text
diff=0.00012207, tolerance ~= 0.000116 ~ 0.000121
```

所以 profiler 每次生成不同随机输入时，有些 seed 会让超过 1% 的元素刚好越过 tolerance 边界，看起来像“随机 fail”。

### 2.2 num_split 不是根因

case1 对不同 `num_split` 的 mismatch 扫描：

| num_split | latency ms | bad_avg | bad_max | max_abs_max |
|---:|---:|---:|---:|---:|
| 1 | 1.175250 | 0.3059% | 1.4648% | 0.00027466 |
| 2 | 0.672886 | 0.3777% | 1.5381% | 0.00027466 |
| 4 | 0.361073 | 0.3700% | 1.6968% | 0.00027466 |
| 8 | 0.203680 | 0.3487% | 1.5625% | 0.00027466 |
| 16 | 0.128925 | 0.3403% | 1.5137% | 0.00027466 |
| 32 | 0.062185 | 0.3120% | 1.5015% | 0.00027466 |
| 64 | 0.057041 | 0.3311% | 1.4893% | 0.00024414 |

`num_split=1` 也会出现 bad_max > 1%，因此不能简单归因到 split64 或 combine。

当前判断：

- 已验证：同一输入输出确定；kernel 与 fp32 reference 更一致；half reference 自身与 fp32 reference 会超过 1% mismatch。
- 当前推测：官方测试如果固定使用当前 half `ref_program` 和 1% mismatch 阈值，case1 需要让 kernel 更贴近 half reference 的 rounding order，或者调整验证策略。
- 下一步验证：尝试在 kernel 末尾或 combine 前后引入与 half reference 更一致的 rounding，但这可能损失大 shape 性能或精度。

### 2.3 QK RS 为什么慢

v03 的 QK RS 原型把 Q 从 shared 改成 fragment/register：

```text
Q_fragment @ KV_shared.T -> acc_s
```

这不是原始 QK 的同构替换。原始 QK 是 SS：

```text
Q_shared @ KV_shared.T -> acc_s
```

QK RS 虽然减少了部分 shared-to-local load，但让 `Q[16,512]` 的 fragment live range 变长。MLA kernel 内本来就有很大的 `acc_o[16,512]` fp32 accumulator，Q fragment 会进一步增加寄存器/fragment 压力。对于 `M=16,N=32,K=512` 的小 N QK GEMM，这个代价超过了 `k_pack=2` 的收益。

## 3. 本版本解决方案

本版本没有改正式 kernel，只做两个诊断和实验记录：

1. case1 correctness 归因：
   - 证明 fail 不是同一输入下的随机输出。
   - 证明 bad seed 下 kernel 与 fp32 reference 完全通过，fail 来自 half reference 边界。
2. QK SS `k_pack=2` 原型：
   - 保持 Q/KV 都在 shared。
   - 手写 `ldmatrix_a + ldmatrix_b + mma`。
   - 用 `k_pack=2` 同时把 A/B 的 shared-to-local load 从 `uint2` 改为 `uint4`。

预期收益：

```text
避免 QK RS 的长 live Q fragment，同时保留 k_pack=2 的喂数优势。
```

## 4. 具体落地策略

原型文件：

```text
race_tests/mla/mla_experi/v04_qk_ss_kpack2_prototype.py
```

核心结构：

```python
qk_mma = TensorCoreIntrinEmitter(
    a_dtype=dtype,
    b_dtype=dtype,
    accum_dtype=accum_dtype,
    a_transposed=False,
    b_transposed=True,
    block_row_warps=1,
    block_col_warps=2,
    warp_row_tiles=block_H,
    warp_col_tiles=block_N // 2,
    chunk=dim,
    k_pack=2,
)
```

替换位置：

```python
T.gemm(Q_shared, KV_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)
```

替换为：

```python
for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
    qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
    qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
    qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
```

QK RoPE GEMM 和 PV GEMM 在该原型中保持 baseline，用于单独隔离 QK SS 的影响。

Generated source 统计：

| 版本 | `__builtin_mxc_mma` | `uint4` | `uint2` | 说明 |
|---|---:|---:|---:|---|
| split64 base | 3 | 10 | 26 | QK content 默认 `ki<32`，A/B 均 `uint2` |
| QK SS k_pack=2 | 3 | 14 | 22 | QK content `ki<16`，A/B 均 `uint4` |

QK SS generated source 的关键片段：

```cpp
for (int ki = 0; ki < 16; ++ki) {
  *(uint4*)(qk_a_local + 0) = ...
  *(uint4*)(qk_b_local + 0) = ...
  for (int kp = 0; kp < 2; ++kp) {
    acc_s = __builtin_mxc_mma_16x16x16f16(
      qk_b_local[kp],
      qk_a_local[kp],
      acc_s
    );
  }
}
```

## 5. Benchmark 对比

环境：

```text
MetaX C500
TileLang dev root: /root/tilelang-metax/build
PYTHONPATH=/root/tilelang-metax
PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
```

采样策略：每 4 个 case 取一个点，排除 case1，因为 case1 correctness 已确认受 half reference 边界影响。

命令：

```bash
bash -lc "cd /root/tilelang-metax && PYTHONPATH=/root/tilelang-metax PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True /opt/conda/bin/python /tmp/mla_compare_qk_ss_runner.py"
```

结果：

| case | batch | kv_ctx | split64 base ms | QK SS ms | 变化 |
|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 0.391039 | 0.324574 | -17.00% |
| 9 | 2 | 16384 | 0.431272 | 0.343853 | -20.27% |
| 13 | 4 | 8192 | 0.365307 | 0.296996 | -18.70% |
| 17 | 8 | 2048 | 0.145386 | 0.143304 | -1.43% |
| 21 | 8 | 65536 | 3.733729 | 2.853128 | -23.59% |
| 25 | 16 | 32768 | 3.803499 | 2.910431 | -23.48% |
| 29 | 32 | 16384 | 3.994235 | 3.024034 | -24.29% |

平均变化：

```text
-18.39%
```

单点验证：

```text
case9: 0.342894 ms, TFlops=3.3271
```

CSV：

```text
race_tests/mla/mla_experi/v04_qk_ss_stride4_sample.csv
```

## 6. Profile 指标变化

TODO: profile data missing.

本轮只做了 generated source 静态验证和 benchmark 采样，尚未采集硬件 profile。下一步应采集：

- QK SS vs split64 base 的 register usage。
- dynamic shared memory bytes。
- MMA utilization。
- shared load 指令数 / shared bank conflict。
- Long/Short scoreboard stall。
- combine kernel 时间占比是否因 QK 优化后变得更突出。

建议优先 profile case21：

```text
batch=8, kv_ctx=65536
```

因为该点 QK SS 收益明显：

```text
3.733729 ms -> 2.853128 ms
```

## 7. 实验总结

本轮有两个关键结论：

1. case1 的 fail 不是 kernel 非确定性，也不是 split64 独有 bug。它主要来自官方 half reference 与 kernel/fp32 reference 的 rounding 差异。后续如果要全 case 通过，不能只调 `num_split`，需要专门处理 half reference 对齐问题。
2. QK 手写 GEMM 是可行的，但必须按 QK 原始 SS 数据流做。QK RS 版本错误地把 Q 长驻 fragment，导致寄存器压力代价过高；QK SS 版本同时手写 `ldmatrix_a` 和 `ldmatrix_b`，拿到了 `k_pack=2` 的真实收益。

工程判断：

```text
QK SS k_pack=2 是当前最有价值的 MLA 优化方向，应该进入下一版正式 kernel 实现。
PV RS k_pack=2 仍然保留价值，但下一步需要测试 QK SS + PV RS 同时启用的组合效果。
```

下一步：

1. 从当前 v03 分支新建 v04 代码分支，把 QK SS 合进正式 kernel。
2. 测试组合：QK SS only、PV RS only、QK SS + PV RS。
3. 专门处理 case1 half reference 边界，避免最终 correctness 被随机输入击穿。
