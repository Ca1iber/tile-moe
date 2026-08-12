# v016 Step2 async revalidation on sc-16g

## Question

v012d appeared to improve the long OJ shapes with an explicit inverse-swizzle BSM pipeline, but that candidate also introduced the two-way Step2 accumulator split later accepted independently as v013. This iteration isolates the remaining async effect by comparing the archived v012d source directly with the current v013 parent on the same idle node and with alternating process order.

## Hypothesis

For the long `dhidden=7168, dexpert=2048` shapes, the explicit two-half BSM pipeline may overlap down-weight movement with MMA after the v013 split. Case 1 is expected to remain negative because its short Step2 has less latency to hide.

## Prediction and acceptance gate

- Correctness must pass for every measured case.
- Case 2 and case 3 must both show a repeatable paired speedup, not merely a screen-run fluctuation.
- Step1 must remain unchanged; any total improvement must be attributable to Step2.
- Generated code must contain real async BSM/barrier operations, use 32 KiB Step2 shared storage, avoid private-memory spill, and not lose an occupancy wave relative to v013.
- Only if the gate passes will a long-shape-only dispatch be implemented. Otherwise the explicit async route is rejected against the current best and `custom_fusedmoe.py` stays byte-identical.

## Inputs

- Parent: current accepted v013 source, SHA-256 `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
- Historical candidate: archived v012d explicit inverse-swizzle BSM Step2 source.
- Benchmarks: project OJ cases with fresh process per variant, alternating AB/BA order.
- Follow-up evidence: mcTracer, mcProfiler, generated C++, resource report, and backend ISA when the benchmark gate warrants it.

## Status

Rejected after revalidation. The archived v012d source passed correctness but lost to v013 in all three strict long-shape pairs: case 2 median `+0.503%` runtime and case 3 median `+1.053%`. A shape-only async dispatch was therefore not implemented.

## What the experiment established

The historical v012d result bundled two changes: an explicit inverse-swizzle BSM pipeline and the split Step2 accumulator. v013 retained only the split accumulator and removed spill. Against that parent, the residual async mechanism is slower, so the former apparent long-case improvement cannot be attributed to async overlap.

The generated path is genuinely asynchronous: four async-copy sites and three barrier-wait sites are present, Step2 MT registers fall from 196 to 190, dynamic shared memory remains 32 KiB, and no ISA spill is present. It nevertheless remains at two waves/PEU and doubles the static Step2 barrier count from three to six. mcTracer localizes the regression to Step2 (`+3.172%` median in case 3).

## Decision

Do not add long-shape dispatch and do not replace the current best. Keep the v013 source byte-identical. A future pipeline attempt must change the overlap structure itself—especially the single `up_logits_shared` buffer and full-CTA rendezvous—not merely re-enable this BSM route.
