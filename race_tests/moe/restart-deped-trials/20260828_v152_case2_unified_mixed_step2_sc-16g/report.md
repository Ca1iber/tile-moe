# v152 Case2 unified mixed-slot Step2 rejection

## Hypothesis

Keep one `28 x 48` Step2 launch for Case2. Short physical slots retain the native
M128xN256 path. The two physical M-slots owned by each long expert are reinterpreted
as two N128 half-panels, while each CTA consumes all 192 routed rows. This should
avoid loading the same Down panel once for each M128 block without adding a second
kernel launch.

## Implementation

- Parent: `v152_dynamic_step2_m192n128_sc-16g`.
- Candidate SHA256: `91990fa8746eb070003ebd8579b7243ec573f609c642a1e6752c5aa30b30a387`.
- Exact Case2 dispatch only; Cases 1 and 3 retain their parent paths.
- Long slots use two native up-logit fragments for rows `[0,128)` and `[128,192)`
  and one N128 Down panel.
- The original generic Step2 kernel is removed at compile time for Case2. A zero-grid
  launch was tested first and rejected because MXMACA requires every grid dimension
  to be positive.
- TileLang primitives only. No async copy, general MXMACA builtin, injected code,
  cache, warmup preprocessing, or disabled race checker.

## Correctness and timing

`run_permuted_fullcheck.py`, Case2, one AB/BA screen round, warmup 2, repeat 10:

- Full valid-row correctness: PASS (`rtol=1e-2`, `atol=1e-2`).
- Parent median: 3.947955 ms.
- Candidate median: 4.007808 ms.
- Change: **+1.5160% slower**.

The 1.2% promotion floor is therefore not met; this direction is rejected.

## mcTracer

Four observed iterations, medians:

- map/prepack (`kernel_kernel`): 0.129280 ms.
- Step1 (`kernel_kernel_1`): 2.449152 ms.
- unified mixed-slot Step2 (`kernel_kernel_2`): 1.340544 ms.

The v152 Case2 Step2 reference trace was 1.331328 ms. The unified kernel is about
0.69% slower even before considering end-to-end variance, so the saved Down reload
does not compensate for the heavier M192 dual-fragment accumulation path.

## Generated-code audit

- Exactly three kernels remain for Case2: map/prepack, Step1, mixed Step2.
- Mixed Step2: 224 MT registers, 54 ST registers, static max 2 warps/PEU.
- Generated source: 42,429 bytes, 10 MMA sites, 11 sync sites.
- No async-copy sites and no reported spill evidence.

## Conclusion

The duplicate Down-panel read was not the dominant Case2 cost. Converting the long
slot to M192xN128 increases live fragments, stores, and scheduling pressure enough
to erase the traffic saving. Do not promote this source and do not retry this exact
single-CTA M192 dual-fragment formulation. A future revisit would need a materially
different mechanism, such as producer/consumer reuse that does not keep both row
fragments live in one CTA.
