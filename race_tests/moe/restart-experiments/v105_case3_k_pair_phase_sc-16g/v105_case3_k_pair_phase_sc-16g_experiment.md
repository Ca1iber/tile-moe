# v105 Case3 K-pair phase experiment

Fresh v102 mcProfiler evidence showed elevated residual VL1-partition stalls, while v104 proved that fixed per-wave weight ownership destroys cooperative copy efficiency. v105 therefore preserves every original four-wave 128-bit Gate/Up copy and changes only the K-loop starting phase of adjacent Case3 N-tile CTAs.

Odd N tiles start at K-pair 28 and wrap after pair 55; even N tiles retain pair 0. All 56 pairs are accumulated exactly once. Logical bytes, MMA count, barriers, shared layout, grid, Step2, and output semantics remain unchanged.

Falsifier: reject unless paired Case3 latency improves by at least 1.2% with correctness passing.

Result: full padded correctness and OJ validation passed. Case1/2 generated sources remained byte-identical to v102. Case3 Step1 registers fell from 226 to 218 with occupancy unchanged, but generated control expanded and paired latency regressed by `12.740244% / 13.098189% / 13.191256%` (median `13.098189%`). The synchronized K order is valuable for concurrent A/L2 reuse; request phasing is rejected.
