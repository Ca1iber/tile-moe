# v051 Case3 Step1 mapping bounds assumption experiment

## Outcome

Rejected; v050 remains the OJ-valid best.

## Mechanism

The initial candidate states the proven Case3 Step1 ranges for both remapped indices (`bx` and `by`) using public `T.assume`. It does not change math, layouts, tile sizes, grid dimensions, barriers, or the Step2 source. Case1 and Case2 generated device C++ are byte-identical to v050, and Case3 Step2 is byte-identical.

## Gates and evidence

- OJ import allowlist: pass.
- Three OJ-shaped correctness cases: pass, max abs `0.001953125`, padding `0`.
- Clean Case3 W20/R100, 11 AB/BA pairs: `10.223076 -> 10.405325 ms`, paired median `+1.81282%`, 0/11 wins.
- mcTracer, 3 AB/BA pairs: Step1 paired median `+3.88187%`; Step2 `-0.246%` noise.
- Generated Step1 mapping guards: `12 -> 0`; C++ bytes `34844 -> 30515`.
- Step1 resources: `210 MT / 52 ST -> 230 MT / 28 ST`, two static waves and no private memory in both.
- Step1 ISA: code bytes `25336 -> 23496`, static instructions `3167 -> 2937`; 256 MMA, 28 LDG128, 4 barriers unchanged.

## Root-cause probes

- `bx-only` (`8cf904...`): `212 MT / 52 ST`, yet 9-pair clean median `+7.17548%` and 0/9 wins.
- `by-only` (`330a13...`): `228 MT / 28 ST`; no clean timing was needed after it reproduced the harmful resource migration.

The `by` assumptions cause most of the scalar/ST to per-thread/MT allocation shift, but the `bx-only` result proves that added MT pressure is not the sole mechanism. The retained safe-memory branches also improve the final backend load/address schedule for Step1. This is a kernel-specific lowering effect: the same four assumptions were beneficial for Step2 in v049.

## Decision boundary

The clean performance gate rejects the candidate before official functional or mcProfiler replay. Those omissions are explicit, and no Roofline or submission artifact is claimed for this rejected version.
