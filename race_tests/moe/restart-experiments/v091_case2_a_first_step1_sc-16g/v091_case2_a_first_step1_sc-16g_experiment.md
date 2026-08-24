# v091 Case2 A-first Step1 experiment

v091 is based on exact v090 and changes only the compile-time Case2 Step1 producer order from `G0 -> G1 -> A -> U0 -> U1` to `A -> G0 -> G1 -> U0 -> U1` at both odd-tile and next-even prefetch sites.

The candidate keeps all logical memory traffic, MMA operations, barriers, grids, workspace layouts, and arithmetic unchanged. Full padded correctness and OJ source/generated validation pass for all three official cases. Case1/3 generated C++ SHA values are identical to v090.

Case2 seven-round AB/BA (`warmup=100`, `repeat=100`) improves the median from `4.048205 ms` to `3.940142 ms`, paired median `-2.703969%`, pstdev `0.073051%`. Step1 remains two-wave with no private spill. External OJ is pending, so this directory is a candidate archive rather than a submission promotion.
