# v046 hypothesis: branchless exact v045 CTA mapping

- Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9e`.
- Observation: v045's Case1 Step1 mapping introduces one uniform runtime branch and keeps `bx/by` in a two-element local mapping buffer. Final ISA grows by 240 bytes and ST registers rise 36->52, although occupancy remains two waves.
- Change: preserve the exact v045 logical `(bx, by)` permutation but replace the `pid1 < 8` branch with a 0/1 arithmetic selector derived from `(pid1 + 16) // 24`.
- Expected mechanism: remove the uniform branch and merge block while retaining the L2/DNOC locality gain.
- Invariants: identical logical CTA order, grid, math, MMA, async path, barriers, shared memory, Step2, and OJ import surface.
- Gate: generated C++/ISA must materialize one branchless mapping computation without repeated mapping arithmetic. Then require stable Case1 AB/BA improvement over exact v045.
- Falsifier: repeated address arithmetic, resource regression, correctness failure, or no stable clean timing gain.
