# v183 hypothesis: Case1 unified prepack with producer-built rank

## Observed evidence

- Exact v166 Case1 is about 1.98 ms. Its steady-state launch sequence includes a 64-thread expert-rank kernel, a short-input prepack kernel, a long-input prepack kernel, unified Step1, and Step2.
- The same coherent launch/control mechanism in v182 saved about 33 us in Case2 while preserving full correctness, but its 0.955% 3x20 mean missed the 1.2% endpoint floor because Case2 is about 3.44 ms.
- v159 Case1 tracing measured rank + short prepack + long prepack at about 43.9 us total, so launch and producer consolidation is a larger fraction of the shorter Case1 endpoint.

## Hypothesis and mechanism

Use one expert-indexed synchronous input-prepack kernel for exact official Case1. One CTA per expert and K-panel writes either the short M128-native or long M192-native workspace layout. Only `copy_col == 0, thread == 0` computes that expert's short/long rank; unified Step1 consumes the complete rank table after the producer kernel boundary.

Case2 and Case3 keep exact-v166 flags and execution paths. The candidate performs all work during every timed call and caches only allocations, never contents.

## Prediction and falsifier

- Remove two Case1 kernel launches while preserving prepack CTA count, Step1/Step2 grids, MMA count, weight bytes, and v166 short-first/adjacent-long Step1 order.
- A 24 us saving is enough for the 1.2% floor at 1.98 ms; the Case2 mechanism demonstrated roughly 33 us absolute headroom.
- Reject on OJ/static failure, race warning, any correctness failure, Case2/3 code-path regression, or formal direct-v166 Case1 improvement below 1.2%.

## Safety

TileLang primitives only; synchronous copies only; no async copy, foreign-code injection, direct MXMACA compiler builtin, disabled race checker, warmup-only preprocessing, or cross-run cached contents.

