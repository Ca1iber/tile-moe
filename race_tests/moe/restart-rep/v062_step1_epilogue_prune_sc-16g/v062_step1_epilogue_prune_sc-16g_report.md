# v062_step1_epilogue_prune_sc-16g 证据报告

## Verdict

- 运行类型：sc-16g local verdict。
- 结论：local global-best candidate；外部 OJ 分数待确认。
- 因果结论：把已有 `actual_rows` guard 提前到 Step1 SwiGLU epilogue 外层，能够跳过 padding 行的 `exp2/div/multiply`；三 Case 出现小而方向一致的端到端收益，MMA、copy、grid 和 Step2 均未改变。

## Identity and correctness

- Parent/current best：v059（79.33），commit `0759762565e8a491b19c3625d4d3d7529b432b31`。
- Candidate SHA-256：`24b7394442233bce88e00ada34e6782f9dddd730c6056bf9c1a1b28e14e86a74`。
- 三个官方形状独立参考正确性 PASS；最大 `max_abs=0.001953125`，`padding_max=0.0`。
- OJ source allowlist/static gate PASS；无 async copy 或 foreign-code injection。

## Benchmark

协议：同进程但关闭 TileLang 全局 kernel cache，使两个 source 分别独立编译；AB/BA 交替 13 rounds，每窗口 warmup 20、repeat 100，以各版本样本中位数判定。

| Case | v059 / 79.33 | v062 | speedup | 候选胜场 |
|---|---:|---:|---:|---:|
| 1 | 2.780375 ms | 2.776310 ms | 1.00146x | 13/13 |
| 2 | 4.737467 ms | 4.734185 ms | 1.00069x | 11/13 |
| 3 | 9.264312 ms | 9.259883 ms | 1.00048x | 13/13 |

Case1 先行 screen（7 rounds、warmup 5、repeat 30）同样为 7/7 胜，1.00156x。收益属于 sub-percent，但重复性和三 Case 单调性满足本地继续验证条件。

## Generated code and resources

- Case1 generated C++ 明确将 `exp2f`、除法和乘法放入 `i < actual_rows` 条件内，改动没有被编译器消掉。
- Case1 Step1/Step2 MT registers：222/212；静态最大 2 waves/PEU，与 v059 无资源回退。
- Case1 三组 AB/BA mcTracer：Step1 中位下降 0.352%；Step2 中位变化 -0.175%，后者是未改路径的小幅波动。stage 证据与目标机制一致。
- targeted mcProfiler 的 achieved waves 为 1,626,148 → 1,626,148，确认工作量不变；候选侧其余多数复合 counter 因底层事件缺失无法导出，故不用于因果判断，权威耗时仍由配对 benchmark 与 mcTracer 给出。
- 三 Case 最终 ISA 均成功提取；Case2/3 Step1/Step2 MT registers 为 216/230，三 Case 均为静态最大 2 waves/PEU。对 generated C++ 与 `.metax.s` 扫描 async copy、外部调用和 source injection 标记，结果 0 hit。

## Interpretation

- 每两个 expert 的物理行数为 384，有效行 284，因此该改动最多跳过 100/384=26.04% 的 Step1 epilogue 行；它不减少主要 MMA 工作，所以端到端收益预期很小。
- 三 Case 都改善说明机制不是 Case1 grid 特例；Case2 的 11/13 胜弱于 Case1/3，应保留外部 OJ 验证要求。
- 在外部 OJ 分数确认前，不移动 `dorm`。
