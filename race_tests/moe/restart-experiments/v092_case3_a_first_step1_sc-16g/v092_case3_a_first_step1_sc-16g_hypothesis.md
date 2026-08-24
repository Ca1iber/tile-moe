# v091 Case3 non-native A-first screen hypothesis

Observed evidence: v091 moved Case2 Step1 native A loads from after Gate1 to before Gate0 and improved external OJ Case2 latency from 4.133 ms to 3.995 ms (-3.338979%). The same mechanism improved seven-round local paired latency by 2.703969%, with tracer evidence locating the gain in Step1.

Verified bottleneck: Step1 remains the dominant stage. Case3 still uses the non-native producer order G0 -> A -> G1 -> U0 -> U1 at both odd-tile and next-even sites.

Current hypothesis: moving Case3 non-native A loads before Gate0 will issue the independent A requests earlier and improve load/compute overlap without increasing logical traffic or synchronization.

Proposed mechanism: for the exact experts=64 official Case3 path only, reorder both Step1 producer sites to A -> G0 -> G1 -> U0 -> U1. Keep all arithmetic, grid, shared layouts, predicates, and barriers unchanged.

Predicted metric changes: Case3 end-to-end paired median improves by at least 1.2%; generated Step1 order changes; MMA/load counts remain stable; no private spill and the two-wave resource class remains.

Falsifying result: correctness failure, OJ validator failure, async/foreign materialization, resource-class degradation, or strict paired median improvement below 1.2% relative to exact v091.

Correctness and resource risks: moving predicated A loads earlier lengthens fragment lifetime and may raise register pressure; the two producer sites must be changed consistently.
