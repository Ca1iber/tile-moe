# v048 hypothesis: extend expert-grouped Step1 CTA order to OJ Case2/3

- Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9e`.
- Observation: all three OJ shapes use the same group pattern: the first half of experts have 100 rows (one block) and the second half have 184 rows (two blocks). v045 proves adjacent two-block scheduling raises L2 hit rate by 6.813 points and cuts global read bytes 16.262% in Case1.
- Change: enable the same exact-distribution Step1 mapping for Case2 (`E=32, blocks=48`) and Case3 (`E=64, blocks=96`), using `num_experts//2` as the one-block threshold. Case1's logical order is unchanged.
- Expected mechanism: keep one/two input tiles resident while the second row block consumes the same gate/up weight tile. Case2/3 gate+up tiles are about 3.5 MiB each, within the measured 8 MiB L2 for adjacent reuse, while the full intervening 16-column sweep is about 56 MiB and does not fit.
- Invariants: same grid/CTA count, math, MMA, async path, barriers, shared memory, Step2, and OJ imports.
- Primary gates: exact Case2/3 correctness and alternating W20/R100 AB/BA timing versus v045. Supporting gates: generated resources, stage-local mcTracer, and wave-matched L2/DNOC counters if accepted.
- Falsifier: occupancy/resource-class loss, correctness failure, or no stable Case2/3 clean timing gain.
