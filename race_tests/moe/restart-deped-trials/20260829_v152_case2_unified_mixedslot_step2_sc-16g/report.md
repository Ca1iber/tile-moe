# v152 Case2 unified mixed-slot Step2 trial

## Verdict

Rejected.  The exact source is correct and OJ-source compliant, and it reduces
Step2 global-read traffic, but it regresses official Case2 end-to-end latency by
26.44%, far beyond the 1.2% promotion floor.

## Parent and exact source

- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Trial SHA-256: `de7eed30ee66ea1cb273e82754bf57a4c101f0e42b9dd81dbc0695f5978345ef`
- Target: MetaX C500 `sc-16g`
- Scope: exact official Case2 only (`E=32`, `H=7168`, `I=2048`,
  `total_valid=4544`, `total_padded=6144`, `num_blocks_m=48`)

## Hypothesis

Keep the original single `28 x 48` Step2 grid.  For each long expert, reinterpret
its two physical M128 slots as complementary N128 halves over the same M192 rows.
The two existing M128 accumulators then represent rows `0:128` and `128:256`.
This should load each long-expert Down N128/K64 tile once instead of once per
physical M block, without an extra kernel launch or rank-map kernel.

Falsifier: correctness failure, no reduction in Step2 global reads, or less than
1.2% paired end-to-end improvement.

## Correctness and compliance

- Python syntax: PASS.
- `validate_oj_submission.py`: PASS on the exact trial source.
- Full valid-row comparison: PASS with `rtol=1e-2`, `atol=1e-2`.
- TileLang primitives only; no async copy, injected source, direct compiler
  builtins, cached results, or unmeasured preprocessing.

## Paired screen

Protocol: one AB/BA round, warmup 2, repeat 5.

| Source | Case2 latency |
|---|---:|
| v152 parent | 3.919667 ms |
| mixed-slot trial | 4.955955 ms |
| Change | **+26.4382% regression** |

The trial is rejected at the screen gate; no formal promotion benchmark or OJ
submission was performed.

## mcTracer and code generation

The non-target stages stayed approximately stable.  The regression is isolated
to `kernel_kernel_2` (Step2):

| Metric | v152 | Trial | Change |
|---|---:|---:|---:|
| Step2 time | 1.331328 ms | 2.332160 ms | +75.17% |
| MT registers/thread | 220 | 232 | +12 |
| ST registers/thread | 52 | 56 | +4 |
| static max waves/PEU | 2 | 2 | unchanged |
| generated MMA sites | 8 | 10 | +2 |
| generated sync sites | 9 | 11 | +2 |

Occupancy does not collapse.  The custom path instead serializes K tiles while
both input fragments hold the two M halves; it loses v152's K-even/K-odd input
and Down staging overlap.

## mcProfiler memory comparison

Both reports use the same Case2 shape, symbol `kernel_kernel_2`, machine, and
memory-counter subset.

| Metric | v152 | Trial | Change |
|---|---:|---:|---:|
| Global read bytes | 1,201,755,104 | 970,409,184 | -19.25% |
| Global write bytes | 88,088,928 | 88,097,312 | +0.01% |
| DNOC average read latency | 286.75 | 258.47 | -9.86% |
| VL1 partition stalls, sum | 57,309,862 | 98,906,911 | +72.58% |
| L2C duty ratio | 24.19% | 17.13% | -7.06 pp |

The causal result is therefore useful even though performance is not: Down
reuse is real and reduces traffic, but the loss of effective overlap exposes
far more VL1 waiting and dominates the saved bytes.

## Stop reason and next clue

Do not continue the exact two-M128-fragment schedule.  Any revisit must preserve
K-stage overlap or use the existing M192xN128 emitter so that the long-expert
M axis is represented directly.  A same-size standalone weight-preprocessing
kernel would add traffic and cannot repair this scheduling failure.

