# v05 MLA ld/st vs GEMM microbench

## 目标

回答当前 `exp/mla-v03-manual-pv-kpack2` + QK SS prototype 路径下，主要压力更偏 GEMM/Tensor Core 计算，还是 KV/Q/K_pe 数据搬运。

注意：这不是硬件 counter profile，而是 TileLang 级 microbench。直接删除 `T.gemm` 的 ablation 已被判定不可靠，因为删除 GEMM 会改变 lowering/schedule，出现 `no_gemm` 比 full 更慢的伪信号。

## 实验方式

基准文件：

- full: `race_tests/mla/mla_experi/v04_qk_ss_kpack2_prototype.py`
- microbench script: `/tmp/mla_microbench_ldst_vs_gemm.py`
- result csv: `race_tests/mla/mla_experi/v05_ldst_vs_gemm_microbench.csv`

三个 variant：

- `full_qk_ss`: 当前 QK SS prototype 完整 split64 attention。
- `copy_only`: 保持 split64 grid 和 KV loop，只做 `Q/Q_pe/KV/K_pe -> shared` 搬运，加极小 sink 防止 copy 被消掉。
- `gemm_only`: 预加载一个 KV tile，循环中重复执行同数量的 QK content 手写 Tensor Core、QK RoPE GEMM、PV GEMM，隔离主要矩阵计算成本。

`copy_only + gemm_only` 不能线性相加等于 full：full 还有 online softmax、`acc_o` rescale、`Output_partial/glse` 写回、combine kernel、launch/split 调度，且真实 kernel 中搬运和计算的调度形态也不同。

## 结果

| case | batch | kv_ctx | full_qk_ss | copy_only | gemm_only | copy/full | gemm/full | 余量 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 5 | 1 | 32768 | 0.327138 | 0.072666 | 0.139157 | 22.21% | 42.54% | 35.25% |
| 9 | 2 | 16384 | 0.345533 | 0.075550 | 0.153564 | 21.87% | 44.44% | 33.69% |
| 21 | 8 | 65536 | 2.857519 | 0.416307 | 1.025810 | 14.57% | 35.90% | 49.53% |
| 29 | 32 | 16384 | 3.024937 | 0.445994 | 1.185463 | 14.74% | 39.19% | 46.07% |

平均：

- `copy_only/full`: 18.35%
- `gemm_only/full`: 40.52%
- remaining: 41.13%

## 解释

1. 当前不是单纯 ld/st bound。
   `gemm_only` 比 `copy_only` 明显更重，说明 QK/PV Tensor Core 计算仍是第一大单项成本。

2. 但也不是单纯 GEMM bound。
   `gemm_only` 只有 full 的约 36%-44%，剩余 34%-50% 不小，来自 attention plumbing：online softmax、`acc_o` scale、`S_shared/acc_s_cast` 中转、split partial output 写回、combine 读写和 split64 带来的调度/launch 开销。

3. batch 增大后 `copy_only/full` 占比下降。
   case21/case29 中 copy-only 约 15%，比 case5/case9 的约 22% 低。说明 batch 提高后 GPU 并行度更足，global copy latency 更容易被并发隐藏；而 GEMM 和 combine/plumbing 仍然随总 CTA 数增长。

4. 下一步优化优先级：
   - 继续优化 QK/PV GEMM 有价值，因为它仍是最大单项。
   - 但如果只盯 GEMM，上限大约只能吃掉 40% 这部分中的一部分。
   - 另一个高价值方向是减少 split64 的 partial output round-trip 和 combine 成本，或者针对大 batch 降低 `num_split`，减少 plumbing 占比。

## 粗略理论量级

每个 CTA 的每个 KV tile：

- KV load: `BLOCK_N * dim * 2 = 32 * 512 * 2 = 32768 B`
- K_pe load: `BLOCK_N * pe_dim * 2 = 32 * 64 * 2 = 4096 B`
- 合计约 36 KiB global-to-shared load。

每个 CTA 的每个 KV tile 的 GEMM FLOPs：

- QK content: `2 * BLOCK_H * BLOCK_N * dim = 524288`
- QK RoPE: `2 * BLOCK_H * BLOCK_N * pe_dim = 65536`
- PV: `2 * BLOCK_H * BLOCK_N * dim = 524288`
- 合计约 1.114M FLOPs。

所以单 tile 算术强度约 `1.114M / 36KiB = 30 FLOP/B`。这解释了为什么从纯 load 量级看，GEMM 更像第一大单项；但 full latency 仍有大量非 GEMM 时间，因为 split attention 还有 softmax、partial write/read、combine 和调度开销。
