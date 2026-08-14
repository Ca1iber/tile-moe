# v050 Case1 Step2 v027 rollback

## Outcome

Locally accepted as an OJ corrective candidate; platform confirmation is pending.

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

## Limitation

The original failure was OJ-only and could not be reproduced in 300 local repeats. v050 is therefore a platform-validation candidate, not proof that the OJ issue is closed. If Case1 still fails, the next rollback boundary is the full Case1 path, including Step1.
