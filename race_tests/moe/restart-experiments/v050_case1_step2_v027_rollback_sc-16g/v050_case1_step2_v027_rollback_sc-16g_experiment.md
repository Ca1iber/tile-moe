# v050 Case1 Step2 v027 rollback

## Outcome

Accepted. The exact archived submission passed the OJ correctness check.

## Change

Starting from v049, Case1 keeps the expert-grouped Step1 implementation but disables `use_step2_half_b_pingpong`, `use_step2_row1_tail_async`, and `use_step2_continuous_async`. `use_step2_input_prefetch=True` remains, selecting the v027-style synchronous `T.copy` ping-pong Step2 branch. Case2 and Case3 compile-time selections are unchanged.

## Evidence

- OJ import allowlist: pass.
- Three OJ-shaped correctness cases: pass; max abs `0.001953125`, padding `0`.
- Official functional configurations: 2/2 pass.
- Exact OJ W20/R100: `2.967862 / 5.151442 / 10.227418 ms`.
- Case1 paired median versus v049: `+6.1059%`, the expected safety cost.
- mcTracer: Step1 `+0.3236%` (noise), Step2 `+18.2355%`.
- Regenerated Case1 Step2 matches v027 structurally: 4 MMA sites, 4 CTA synchronizations, no selected continuous/async call; resources `236 MT / 52 ST`, two static waves.

## OJ confirmation

The user reported on 2026-08-14 that Case1 and Case2 are both approximately `3.8x`, while Case3 is slightly below `3.5x`. Exact per-case platform times were not provided, so these values are intentionally recorded as approximate.

The passing result establishes v050 as the new OJ-valid baseline and narrows the earlier Case1 failure to the Step2 mechanisms disabled by v050. It does not yet isolate whether half-B ping-pong, row1-tail async, continuous async, or their interaction was responsible.
