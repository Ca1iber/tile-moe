# v191 Case2/3 unified physical-expert prepack experiment

## Status

`local-qualified / external-OJ-pending`. v191 is a combined OJ candidate, not an accepted global SOTA. v166 remains in `restart-submission` until all three external OJ score components are known.

## Identity

- External-OJ baseline: v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Direct code parent: v190, SHA-256 `65bc8a14f1aef0fc7ed53be25eb48a4ff10d29a5344a917fd4b71b8d145dbc11`
- Candidate: `candidate_submission.py`
- Candidate SHA-256: `f4cf60816c8b56a683e1325d477645563ed1add4b5f83668a0c8785275ab982a`

## Change

The only functional delta from v190 is enabling `use_physical_expert_prepack` for the exact official Case3 specialization. Case2 retains v190's unified rank/input producer; Case1 retains the exact v166 producer path. Short experts execute two M64 phases and long experts execute three M64 phases instead of forcing every expert through two M96 phases.

All preprocessing is synchronous, timed inside every invocation, and fully overwritten. The submission uses no async copy, injected source, compiler builtin, disabled checker, cached result/content, or out-of-run preprocessing.

## Local result

Direct exact-v166 three-round AB/BA means are `+0.0913%` Case1 (noise), `-1.4723%` Case2, and `-1.2411%` Case3. Medians are `-0.0116%`, `-1.4520%`, and `-1.2244%` respectively. All official cases pass full valid-row correctness at `rtol=atol=1e-2`, and the OJ source validator passes.
