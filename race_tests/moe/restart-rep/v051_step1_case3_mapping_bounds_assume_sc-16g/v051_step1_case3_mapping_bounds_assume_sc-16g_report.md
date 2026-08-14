# v051 report: Case3 Step1 mapping bounds assumptions

Status: rejected. The accepted/OJ-valid baseline remains `v050_case1_step2_v027_rollback_sc-16g` at `b7772836`.

The candidate adds four `T.assume` facts after the exact Case3 Step1 expert-grouped grid remap. The mapping algebra really does produce `0 <= bx < 96` and `0 <= by < 16`, so the change is semantically valid and OJ-compliant. All three OJ-shaped correctness cases pass with max abs `0.001953125`, zero padding, and the import allowlist passes.

The performance hypothesis is nevertheless rejected. In 11 alternating W20/R100 Case3 pairs, v050/candidate medians are `10.223076 / 10.405325 ms`; the paired median is `+1.81282%`, with 0/11 candidate wins. mcTracer localizes the regression to Step1: median `6.865152 -> 7.153408 ms`, paired median `+3.88187%`. Step2 is byte-identical and its `-0.246%` trace change is noise.

Lowering and ISA explain why source-level simplification did not help. The assumptions remove all 12 observed `bx/by` safe-memory guard sites and shrink generated C++ `34844 -> 30515 B`. Step1 ISA code shrinks `25336 -> 23496 B`; static instructions fall `3167 -> 2937`, including large reductions in 64-bit shifts/address operations and conditional mask branches. MMA, 128-bit global loads, barriers, grid, shared memory, and private memory remain unchanged. However, resource allocation changes from `210 MT / 52 ST` to `230 MT / 28 ST`, still at two static waves. The backend moved a substantial part of the CTA-uniform address state from scalar/ST storage into per-thread MT registers.

Two isolation probes prevent a premature conclusion. `by-only` reproduces the resource migration (`228 MT / 28 ST`), proving that the weight-column address chain triggers most of it. `bx-only` retains a near-parent resource shape (`212 MT / 52 ST`) but is even slower: 9/9 regressions and paired median `+7.17548%`. Thus register pressure explains the all-assumption candidate only partially. On this C500 Step1 kernel, the safe-memory lowering also provides a favorable uniform-control/address scheduling boundary; deleting it changes load scheduling even when occupancy does not change.

Decision: keep the v050 guards and submission unchanged. No `restart-submission/v051...` is created. The transferable lesson is that `T.assume` must be evaluated per kernel and per index: it helped Case3 Step2 in v049, but is harmful for accumulator-heavy Step1. Fewer guards or fewer static instructions are not acceptance evidence without resource, stage timing, and clean paired measurements.
