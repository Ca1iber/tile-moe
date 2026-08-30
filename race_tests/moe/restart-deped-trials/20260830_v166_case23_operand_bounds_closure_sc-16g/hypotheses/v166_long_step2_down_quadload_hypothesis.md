# exact-v166 long Step2 Down four-load-window hypothesis

- Parent and safety gates are identical to the paired-load probe.
- Prior observation: the two-load window materialized at the unchanged `220 MT / 56 ST / 2 waves` Step2 tier and was bit-identical to v166, but Case2 regressed by `0.8880%`.
- Atomic refinement: in the same long M192xN128 branch, issue all four independent N32 `fp16x8` Down reads before any shared store. Bytes, addresses, grid, MMA, barriers and shared layout remain unchanged.
- Prediction: if the failure was an insufficient outstanding-load window, four reads should outperform both the two-read probe and exact v166 without a resource-tier cliff. If hand staging itself is the cost, this will remain flat or regress and closes the family.
- Falsification: resource-tier degradation, wrong output, missing load/load/load/load/store materialization, or direct-v166 improvement below 1.2%.
