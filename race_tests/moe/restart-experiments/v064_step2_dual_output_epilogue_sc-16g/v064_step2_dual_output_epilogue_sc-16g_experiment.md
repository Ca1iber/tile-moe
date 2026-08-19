# v064_step2_dual_output_epilogue_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g
- 基线/父版本/当前最佳：v062，`dorm@60f1d641`
- 候选 SHA-256：`4c43d1003c12a17ac45e099d7e4175d5339191b1ba329e48c51f49ad110ea5eb`

## 假设卡

- 已观测证据：Step2 对 `out_local_0/1` 使用两个相同形状的输出循环，两次判断 `i < actual_rows` 并重复取得 routed weight。
- 假设：单个线程在一次 epilogue 中写两个 output half，可复用 routed weight 和有效行判断，降低尾部指令开销。
- 机制：合并两个 `T.Parallel(block_token, block_dhidden_step2)` 循环；MMA、copy、grid 和输出数学不变。
- 证伪条件：任一官方形状正确性失败，或配对 screen 不稳定优于 v062。

## 结果

- 三个官方形状独立参考正确性 PASS，最大 `max_abs=0.001953125`，`padding_max=0.0`；OJ source gate PASS。
- Case1：2.778470 → 2.777813 ms，表面提升 0.024%，5/7 胜，处于噪声边缘。
- Case2：4.729685 → 4.761105 ms，回退约 0.664%，0/7 胜。
- Case3：9.262984 → 9.309363 ms，回退约 0.501%，0/7 胜。
- Case2 codegen 资源仍为 Step1/Step2 216/230 MT registers、2 waves/PEU，说明回退不是 occupancy 变化，而是合并 store 后单线程依赖链/写回调度恶化。
- 结论：rejected；不更新当前最佳 submission，不进行 profiler、最终 ISA 或 Roofline。
