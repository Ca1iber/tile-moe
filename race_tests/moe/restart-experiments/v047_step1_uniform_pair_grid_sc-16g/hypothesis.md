# v047 hypothesis: uniform paired Step1 CTA mapping

- Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9e`.
- Observation: v045 needs a uniform CTA-entry branch only because its first eight single-block experts retain identity order. The final sixteen blocks already use a cheap pair mapping. v046 showed that an arithmetic selector is slower than the branch.
- Change: apply the pair mapping to all 24 row blocks: `bx=(pid1//2)*2+pid0%2`, `by=(pid1%2)*32+pid0//2`.
- Expected mechanism: preserve adjacent weight reuse for every two-block expert while removing both the branch and v046's divide/multiply selector chain.
- Risk: the first eight single-block experts are paired across different experts, increasing each input tile's reuse distance from one CTA to two CTAs and interleaving unrelated weight streams.
- Invariants: same grid/CTA count, math, MMA, async path, barriers, shared memory, Step2, and OJ imports.
- Gate/falsifier: generated code must use only cheap bit/shift scalar mapping with unchanged occupancy; reject on correctness failure or no stable Case1 AB/BA gain over exact v045.
