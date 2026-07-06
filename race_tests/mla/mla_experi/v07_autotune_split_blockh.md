# v07 QKSS num_split and BLOCK_H autotune

## 目标

重新验证当前 QKSS prototype 上的 split 策略。之前 v02 的 split64 结论是在旧 kernel 上得到的；现在 QK content 已经手写 MMA，GEMM 和 attention plumbing 的比例变了，所以需要重新扫。

本轮 tune 对象：

- source: race_tests/mla/mla_experi/v04_qk_ss_kpack2_prototype.py
- 不合入 QK-pe manual，因为 v06 显示收益很小且短 ctx 可能反向
- BLOCK_N 固定 32
- num_stages 固定 0

输出文件：

- race_tests/mla/mla_experi/v07_autotune_split_blockh.csv
- race_tests/mla/mla_experi/v07_autotune_split_blockh_summary.csv

## 参数空间

计划参数：

- cases: 5, 9, 13, 17, 21, 25, 29, 30, 31
- BLOCK_H: 8, 16
- num_split: 8, 16, 32, 64

实际结果：

- BLOCK_H=8 被标记为结构性 skip
- 原因是手写 QK MMA 使用 16x16 MMA tile，qk_warp_rows = block_H // 16。BLOCK_H=8 时 qk_warp_rows=0，后端会 Divide by zero
- 因此本轮有效 sweep 是 BLOCK_H=16 下的 num_split sweep

## 最优结果

| case | batch | kv_ctx | best split | best latency | split64 latency | speedup vs split64 |
|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 64 | 0.329204 | 0.329204 | 1.000x |
| 9 | 2 | 16384 | 32 | 0.325756 | 0.339507 | 1.042x |
| 13 | 4 | 8192 | 64 | 0.310275 | 0.310275 | 1.000x |
| 17 | 8 | 2048 | 64 | 0.139869 | 0.139869 | 1.000x |
| 21 | 8 | 65536 | 64 | 2.851297 | 2.851297 | 1.000x |
| 25 | 16 | 32768 | 32 | 2.826760 | 2.912352 | 1.030x |
| 29 | 32 | 16384 | 16 | 2.834905 | 3.021387 | 1.066x |
| 30 | 32 | 32768 | 16 | 5.531483 | 5.771120 | 1.043x |
| 31 | 32 | 65536 | 16 | 10.940473 | 11.194049 | 1.023x |

## 结论

1. 全局 split64 已经不是最优策略。
   case9, 25, 29, 30, 31 都能从更小 split 受益。

2. batch=32 明确应该切到 split16。
   三个 batch=32 采样 case 全部是 split16 最优，收益约 2.3% 到 6.6%。

3. batch=16 的中长 ctx 更偏 split32。
   case25 上 split32 比 split64 快 3.0%。

4. 小 batch 或 batch=8 的采样仍多为 split64 最优。
   case5, 13, 17, 21 仍由 split64 胜出。这里 split 带来的 CTA 并行度仍然比 partial/combine 开销更重要。

5. BLOCK_H=8 不适合当前 QKSS 手写 MMA 版本。
   若未来要试 BLOCK_H=8，需要重新设计 QK MMA 映射，而不是直接改参数。

## 暂定 dispatch 规则

可以先试一个保守规则：

- batch >= 32: num_split = 16
- batch == 16: num_split = 32
- otherwise: num_split = 64

这个规则覆盖本轮采样最优点。后续可以补 case 1-31 全量验证，再决定是否并入正式 main。

## 下一步

1. 基于上述规则生成 dispatch prototype。
2. 跑 case 1-31，对比固定 split64。
3. 如果全量通过且平均 latency 下降，再把规则移植到正式 test_tilelang_mla.py。
4. 第二轮再固定该 split 规则，扫 num_stages=1 和更小范围的 GEMM micro 参数。
