# v166 follow-up closure: tail-MFMA pruning and Gate/Up scheduling (sc-16g)

## Verdict

All eight follow-ups are rejected.  Every runnable source passes the OJ source
validator and full valid-row correctness, but none reaches the mandatory 1.2%
paired improvement over exact v166.  They do not advance `dorm` and must not be
stacked into a submission.

Parent: `v166_gateup_pairload_sc-16g`, SHA-256
`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
All trials use TileLang primitives only: no async copy, injected source, direct
MXMACA builtin, cross-run data cache, or disabled race checker.

## Results

Positive percentages mean regression.  The v163-v165 numbers are Case1 screens;
v167/v169/v170 are Case2 screens; v168 is a Case1 screen; v171 is a Case2
screen.  All are direct paired comparisons against v166.

| Trial | Exact source SHA-256 | Mechanism | Paired change | Decision |
|---|---|---|---:|---|
| v163 | `e90acdaee12d4e3b0a8750565efa7795161b7b93108f83942b9fd59d83dc6d28` | dynamic short-Step1 microtile tail pruning | `+2.9913%` | reject |
| v164 | `7537a00761ad1bb0cca305ca9cdb1a3c76628a61531b37b78c16cb68972c0b30` | hoist the short-Step1 tail decision to wave scope | `+2.4311%` | reject |
| v165 | `5aca04670b88e1f8cbe49c8b611c51cad5516bae015106399780ad8f2926e20b` | prune only the fully padded second 16-row Step1 microtile | `+1.3436%` | reject |
| v167 | `672a1073b918ebbc5b4a794c865d7e18cac00a3dc545a51831367e1a73b4b2b7` | issue all four Gate/Up panel reads before all stores | `-0.3344%` | sub-floor noise |
| v168 | `0e99c4c45636ce209d45e99837ab2d415e8f6797a32d371d1ff0f0fc9d63cde0` | copy v166 Gate/Up pair-load ordering to short Step1 | `-0.3163%` | sub-floor noise |
| v169 | `2604b23a09002ed308f8796bc43da2f1c0fcd42dc61e524e516535960eb54385` | paired reads, reverse Up/Gate shared-store order | `-0.4855%` | sub-floor noise |
| v170 | `17dd3f37cd40c7576c2b45fe10c9ea09db9157d537bf812117a6436a14b11a6c` | Up load before Gate load in each pair | `-0.6963%` | sub-floor noise |
| v171 | `6afb425f499dca1915771feca5b4485b477f4a8833054f2d33b4bdecf590639a` | prune the fully padded second 16-row MFMA for 97-112-row unified short Step2 | `+1.7411%` | reject |

v167-v170 preserve the same register wave tier as v166; their small movements
are not promotable.  v171's exact result is archived as
`results/v171_case2_screen.json`: correctness PASS, parent `3.443571 ms`,
candidate `3.503526 ms`.

## New Step2 profile evidence

Exact v166 Case2 unified Step2 (`kernel_kernel_4`) was reprofiled before v171:

- 1,344 workgroups / 5,376 waves;
- total cycles `5,795.35 Kcycles`, average wave life `47,784.66`;
- MMA duty `54.69%`, MTE duty `8.84%`;
- WSM stall `7,387,151`, VLS pipeline stall `27,956,269` cycles;
- global read `966,415,136 B`, global write `88,089,344 B`;
- DNOC average read latency `279.69`;
- VL1 partition stall sum `27,981,660`, L2C duty `23.49%`.

The Down tensor alone contains `32*7168*2048*2 = 939,524,096 B`.  Therefore
v166 Step2 reads only about 26.9 MB beyond the compulsory FP16 Down weights.
There is no material repeated-weight traffic left for a per-call layout
preprocess to remove.  A conventional FP16 transpose/pack would add one full
weight read, one full write, and another GEMM read inside scored time.

## Causal closure

1. v166's exact long-Step1 order—Gate vector read, Up vector read, Gate shared
   store, Up shared store—is the only useful ordering in this family.  Wider
   panel hoisting and three alternative pair orders are noise or weaker.
2. Dynamic deletion of a fully padded 16-row MFMA is not free.  Uniform wave
   branches and the split instruction path cost more than the removed tensor
   work in both Step1 and Step2.  Close ordinary runtime microtile pruning.
3. Step2 is already at approximately compulsory Down-weight bytes.  Do not add
   an online FP16 packing/transposition pass.  Reopen preprocessing only for a
   representation that reduces bytes enough to repay its complete per-call
   materialization cost and still satisfies numerical tolerance.
4. Historical controls also close synchronous A ping-pong, hand-splitting the
   bulk `T.copy`, M192xN256/8-wave fusion, half-N occupancy trades, and ordinary
   grid swizzles.  Future Step2 work needs a genuinely different legal operand
   transport primitive or less mandatory output/math work.

## Artifacts

- `sources/`: all eight exact trial sources.
- `results/v171_case2_screen.json`: exact v171 paired correctness/timing result.

