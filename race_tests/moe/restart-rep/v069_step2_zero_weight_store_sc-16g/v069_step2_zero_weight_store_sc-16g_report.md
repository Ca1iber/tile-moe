# v069_step2_zero_weight_store_sc-16g 证据报告

## Verdict

- 运行类型：sc-16g screen。
- 结论：rejected；当前最佳保持 v062。
- 因果结论：利用预清零 accumulator 和无效行零 routed weight，可在语义上去掉 Step2 padding 写回分支；但生成代码虽改变、资源不变，大 hidden 的 Case2/3 screen 反而回退。

## Correctness and benchmark

- Candidate SHA-256：`4205bdef48a0300742caabcc1f325d95ba3101f5bad56f6fc782b3e522e9f75d`。
- 三官方 Case 正确性 PASS；最大 `max_abs=0.001953125`，`padding_max=0.0`。
- 7-round AB/BA screen，warmup 5、repeat 30：

| Case | v062 | v069 | speedup | 候选胜场 |
|---|---:|---:|---:|---:|
| 1 | 2.779486 ms | 2.777728 ms | 1.000633x | 6/7 |
| 2 | 4.732945 ms | 4.734712 ms | 0.999627x | 2/7 |
| 3 | 9.262063 ms | 9.262438 ms | 0.999959x | 2/7 |

Case2 回退约 0.037%，方向和胜场一致，违反单调门禁，因此不做 13-round verdict。

## Generated code and interpretation

- Case2 generated C++ SHA：v062 `6fdee4ae...`，v069 `ba5ff74a...`；source bytes 28210 -> 27386，控制流确实被缩减。
- 资源仍为 Step1 216/54、Step2 230/52 MT/ST registers，静态最大 2 waves/PEU。
- 无条件路径让所有 padding 行也执行 accumulator×weight 的依赖链；控制流缩减没有转化为大 shape 收益。
- 本轮不 profile、不创建 submission。
