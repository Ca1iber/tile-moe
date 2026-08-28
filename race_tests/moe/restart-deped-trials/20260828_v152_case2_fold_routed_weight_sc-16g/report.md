# v152 Case2 routed-weight fold rejection

## Hypothesis

For every routed token,

`r * (up_logits @ Down) == (r * up_logits) @ Down`.

Case2 has `intermediate=2048` and `hidden=7168`. Folding `routed_weight` into
the Step1 up-logit store should therefore replace 7168 output-side scalings with
2048 intermediate-side scalings per token and remove routed-weight reads from
Step2.

## Implementation

- Parent: `v152_dynamic_step2_m192n128_sc-16g`.
- Exact Case2 dispatch only; Cases 1 and 3 retain the parent behavior.
- Step1 loads two routed weights per thread, matching the native M128 fragment row
  ownership, and multiplies them into the fused SiLU/gate-up value before the FP16
  up-logit store.
- Step2 has no `routed_weights` argument, load, or output multiplication in generated
  code.
- TileLang primitives only. No async copy, builtin, injected code, result cache,
  warmup preprocessing, or disabled race checker.

## Correctness and screen

`run_permuted_fullcheck.py`, Case2, warmup 2, repeat 10:

- Full valid-row correctness: PASS (`rtol=1e-2`, `atol=1e-2`).
- Parent: 3.935258 ms.
- Candidate: 3.936358 ms.
- Change: **+0.0280% slower**, i.e. noise and far below the 1.2% floor.

The compiler emitted a static data-race warning for the rewritten native
`up_logits` store. The store mapping is unchanged and full output validation passes,
but a warning-bearing noise result cannot be promoted.

## mcTracer

Four observed iterations, medians:

- map/prepack: 0.128256 ms.
- Step1: 2.462592 ms.
- Step2: 1.333888 ms.

Reference v152 Case2 trace medians were 0.128896, 2.466688, and 1.331328 ms.
The differences are noise: removing the Step2 scalar multiply does not shorten its
critical path, while moving the multiply to Step1 does not improve the total.

## Generated-code audit

- Step1: 228 MT / 52 ST registers, static max 2 warps/PEU.
- Step2: 218 MT / 52 ST registers, static max 2 warps/PEU.
- Step2's generated signature omits `routed_weights`, proving the transformation
  was compiled rather than optimized back to the parent form.
- 30,520 generated source bytes, 8 MMA sites, 9 sync sites, no async-copy sites.

## Conclusion

The routed-weight multiply is not on the Step2 critical path; MMA, Down transport,
and output stores dominate. Algebraically reducing scalar multiplication count does
not produce measurable speedup. Do not promote or repeat this exact early-fold
formulation.
