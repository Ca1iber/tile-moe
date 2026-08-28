# v160_case2_unified_hybrid_m192n64_sc-16g 证据报告

## Verdict

- 运行类型：正式本地 verdict；外部 OJ pending。
- 结论：`local-candidate-external-oj-pending`，不是 accepted。
- 一句话因果结论：把 v159 的 mixed `M128N128/M192N64` Step1 扩展到 Case2，在 `768 CTA / 3072 waves` 不变时减少约 `12.46%` Step1 global read bytes、`32.23%` VLS stall 和 `39.85%` VL1 partition stall，正式端到端均值提升 `7.3055%`。

## Identity and compliance

- Machine：MetaX C500 `sc-16g`，sGPU id 3，25% compute，16 GiB。
- Git branch / starting commit：`dorm` / `e43dff33b410e4bad1df143f56a204db4e556839`。
- Parent v159 SHA-256：`c8fd309fa6ec769970b4a9aeaa8d702f75033395f17dd11c30d60b374ae98ae3`。
- Candidate SHA-256：`5273ba444f66f956c339f3d7f38a38326d49b7d59fbb79046dc10cd7fba6f4f1`。
- Incumbent external-OJ SOTA：v148；display `[83,82,82]`。本候选没有外部 OJ 证据，未创建 `restart-submission`。
- OJ source validator：PASS；TileLang primitive only；async copy、foreign injection、直接 MXMACA builtin 与跨调用缓存均为 0。

## Correctness and formal benchmark

- 官方 Case1/2/3 完整有效输出均 PASS，`rtol=1e-2`、`atol=1e-2`。
- Case2：5 rounds、warmup 10、repeat 50、AB/BA 交替。

| Round | Order | Parent ms | Candidate ms | Change |
|---:|---|---:|---:|---:|
| 1 | AB | 3.773911 | 3.499372 | -7.27467% |
| 2 | BA | 3.775851 | 3.498322 | -7.35012% |
| 3 | AB | 3.776317 | 3.503723 | -7.21851% |
| 4 | BA | 3.773030 | 3.498660 | -7.27188% |
| 5 | AB | 3.780147 | 3.499950 | -7.41233% |

- Mean `-7.3055040%`；median `-7.2746676%`；population stdev `0.0678995 pp`。
- Case1 side `+0.2465%`、Case3 side `+0.1940%`，均只视作噪声。

## mcTracer

| Symbol role | Median ms | Grid | Threads | MT regs | Dynamic shared |
|---|---:|---|---:|---:|---:|
| expert rank | 0.008064 | 1x1 | 64 | 4 | 0 |
| short input prepack | 0.075136 | 28x16 | 256 | 18 | 64 KiB |
| long input prepack | 0.088576 | 28x16 | 512 | 28 | 24 KiB |
| unified Step1 | 2.144896 | 16x48 | 256 | 226 | 32 KiB |
| Step2 | 1.185920 | 28x48 | 256 | 220 | 32 KiB |

- Trace kernel sum：`3.502592 ms`。
- Parent-equivalent Step1 约 `2.449 ms`；candidate `2.144896 ms`，约缩短 `12.4%`。Step2 基本不变，收益定位清晰。

## mcProfiler: Case2 Step1

Parent 指 exact v148/v159 Case2 Step1；v159 只改变 Case1，因此该 shape 与 v148 等价。

| Metric | Parent | v160 | Change |
|---|---:|---:|---:|
| Workgroups / waves | 768 / 3072 | 768 / 3072 | 0% |
| Average wave life | 164,455.66 | 149,579.97 | -9.05% |
| AP active cycles | 268,530,877 | 238,293,169 | -11.26% |
| Global read bytes | 2,306,665,696 | 2,019,135,840 | -12.46% |
| Global write bytes | 18,612,544 | 18,612,544 | 0% |
| VLS pipeline stall | 113,330,907 | 76,806,484 | -32.23% |
| WSM stall | 21,403,735 | 14,937,704 | -30.21% |
| VL1 partition stall sum | 125,903,054 | 75,726,146 | -39.85% |
| AP MMA duty | 54.67% | 61.61% | +6.94 pp |
| AP MTE duty | 5.28% | 6.34% | +1.06 pp |
| VL1 hit | 87.453% | 87.450% | ~0 pp |
| L2 hit | 39.978% | 44.153% | +4.175 pp |
| L2C duty | 12.44% | 27.31% | +14.87 pp |

解释：没有增加并行度；同样 waves 下减少 long expert 重复 Gate/Up 面板读取，同时降低 shared operand 搬运量，MMA issue 占比上升。L2C duty 虽升至 27.31%，仍没有 HBM/L2 饱和证据。

## Lowering and next clue

- Unified Step1：`226 MT / 46 ST`、static max `2 waves/PEU`；async sites 0。
- 该结果证明下一步应继续减少 CTA 内重复 B operand/改善 shared→fragment feed，而不是全量预打包权重；全量 prepack 的额外读写远大于当前 3.5 ms 总时长。
- 合规的后续方向：只在 CTA/shared 内做 tile-local swizzle/padding，或只对足够长的 expert 做选择性布局转换。

## Decision

- 稳定越过 1.2% floor，作为当前本地最佳候选保留。
- 外部 OJ pending；不得标记 accepted，不得移动 `restart-submission`。

