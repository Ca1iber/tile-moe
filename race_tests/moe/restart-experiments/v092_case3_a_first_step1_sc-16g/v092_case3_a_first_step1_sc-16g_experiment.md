# v092 Case3 non-native A-first Step1 experiment

## Observed evidence

v091 moved Case2 native A loads before Gate0 and improved external OJ Case2 latency by `3.338979%`. Case3 still used `G0 -> A -> G1 -> U0 -> U1` in Step1, while Step1 occupied about two thirds of its steady-state GPU span.

## Hypothesis and falsifier

Moving Case3 non-native A loads before Gate0 at both odd-tile and next-even producer sites should issue independent A requests earlier and improve overlap without changing logical bytes, MMA count, barriers, grid, or arithmetic. The experiment is falsified by correctness/compliance failure, a resource-class drop, or less than `1.2%` paired end-to-end improvement relative to exact v091.

## Change

For the exact `experts=64, hidden=7168, intermediate=2048` Case3 path only:

- v091: `G0 -> A -> G1 -> U0 -> U1`
- v092: `A -> G0 -> G1 -> U0 -> U1`

Case1 and Case2 compile-time paths remain unchanged. The candidate SHA-256 is `8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483`.

## Outcome

Seven-round Case3 AB/BA (`warmup=100`, `repeat=100`) gives paired median `-2.522453%`, pstdev `0.053553%`; all three cases pass full padded correctness. Corrected three-kernel mcTracer gives median Step1 `-3.917254%` and GPU span `-2.173094%`. Step1 resources increase `224 -> 228 MT` but remain `2 waves/PEU`, with zero private/stack bytes. v092 passes the local candidate threshold; formal global-SOTA promotion is pending complete external OJ metrics for all three cases.
