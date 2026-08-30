# v203 Case1 unified-M192 paired-K issue-order closure（sc-16g）

## Verdict

`rejected_below_floor`。该家族严格正确且有稳定、可由 profile 解释的真实收益，
但最佳正式 Case1 5x50 仅为 `-0.9794%`，低于直接父版本所需的 1.2% 门槛；
不创建 candidate/submission，不推进 `dorm` 或 SOTA ledger。

## Identity and prediction

- Starting branch/commit: `dorm` / `55763cea3ae8518b2caf768a868a635827aa7c69`
- Exact parent: `v203_case23_parallel_rank_builder_sc-16g`
- Parent SHA-256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Target: MetaX C500 `sc-16g`, official Case1
- Prediction: the coupled M192 + paired-K long-Step2 feed must improve exact-v203
  end-to-end latency by at least 1.2%, with unchanged Case2/3 code paths.
- Falsifier: OJ-source/correctness failure, resource/spill cliff, or formal mean
  below 1.2%.

The pre-edit hypothesis card is preserved as `hypothesis.md`.

## Mechanism

Only exact Case1 long experts use the existing unified M192 Step2 branch. Two
consecutive K64 A fragments are materialized, the matching two N128 Down panels
occupy the two halves of the existing N256 shared tile, one consumer barrier
hands both panels to MMA, and the two K phases accumulate into one M192xN128
output fragment. Short experts retain exact v203 generic Step2. No bytes or math
are moved outside the scored call.

Four issue-order refinements were evaluated:

1. `A0 -> Down0 -> A1 -> Down1`: per-phase interleave.
2. `A0 -> A1 -> Down0 -> Down1`: exact archived-v162 batch-A control.
3. `Down0 -> Down1 -> A0 -> A1`: batch dominant Down requests first.
4. Batch-A plus complete-even-MMA then complete-odd-MMA.
5. Batch-A plus unconditional loop-tail barrier, trading one extra final barrier
   for removal of 64 runtime tail checks.

## Correctness and screens

Every runnable source passes the OJ submission-source validator and full
valid-row correctness at `rtol=atol=1e-2`.

| Trial | Case1 screen | Verdict |
|---|---:|---|
| per-phase interleave | `+0.1321%` | noise/regression |
| batch-A control | `-1.1343%` | proceed to formal |
| batch-Down | `-0.5406%` | below floor |
| batch-MMA | `-0.9129%` | below floor |
| unconditional tail barrier | `-0.9920%` | below floor |

Batch-A formal 5x50 AB/BA samples:
`-0.9794/-0.9533/-1.0503/-0.9726/-0.9417%`; mean `-0.9794%`,
median `-0.9726%`, pstdev `0.0379 pp`.

## Causal profile and codegen

Exact-v203 Step2 versus batch-A paired-K Step2:

| Metric | v203 | paired-K | Change |
|---|---:|---:|---:|
| workgroups / waves | 192 / 768 | 192 / 768 | unchanged |
| average wave life | 193,734.09 | 184,274.14 | `-4.88%` |
| VLS pipeline stall | 14,244,249 | 11,120,271 | `-21.93%` |
| WSM stall | 6,044,809 | 4,089,069 | `-32.35%` |
| AP active cycles | 81,325,792 | 76,122,612 | `-6.40%` |
| AP MMA duty | 61.89% | 55.10% | lower |

The intended latency/stall metric moves in the predicted direction, so the
endpoint win is real. The remaining ceiling is resource/operand-feed overhead:
Step2 grows from `202 MT / 52 ST / 2 waves` to `218 MT / 52 ST / 2 waves`, while
generated code contains 14 MMA sites and 17 sync sites. There is no spill,
async-copy site, or barrier-wait primitive. The second full M192 A fragment
extends the live range without raising occupancy; alternate issue and consumer
orders do not recover the missing 0.22 percentage point.

## Stop reason and reusable conclusion

Close ordinary synchronous two-A M192 paired-K refinements for Case1. The best
ordering is the original batched request window; interleaving A/Down, batching
Down first, batching MMA, and removing the loop-tail branch all fail to cross the
promotion floor. Do not add this 0.98% to another sub-floor mechanism.

Future Case1 work must change a main Step1 mechanism or provide a representation
that reduces paired-K live state while preserving the measured VLS/WSM reduction;
another issue-order permutation is unsupported.

## Compliance

All sources use public TileLang primitives only. No async copy, foreign source,
direct MXMACA builtin, disabled race checker, cached contents, or warmup-only
preprocessing is present.
