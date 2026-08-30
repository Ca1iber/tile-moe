# exact-v166 long Step2 Down pair-load hypothesis

- Parent: external-OJ SOTA v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Target: official Case2/3 long-expert M192xN128 Step2 branch only.
- Evidence: exact Case2 Step2 has 28.48M VLS pipeline stalls, 54.64% MMA duty, 8.83% MTE duty, and long operand lifetimes. Down bytes are already near compulsory, so this probe changes issue order without changing traffic, CTA count, MMA, barriers, shared layout, or output mapping.
- Atomic mechanism: for each staged Down K64 panel, explicitly issue two independent N32 `fp16x8` global reads before their two swizzled-shared stores. Repeat for the second N64 half. This is distinct from rejected v176, which paired corresponding quarters across the two generic short-path N128 output halves; the new probe touches only the unified long M192xN128 branch.
- Prediction: backend ISA must show the intended load/load/store/store grouping while Step2 stays at the same two-wave resource tier; if real overlap is exposed, direct-v166 Case2 or Case3 whole-operator time should improve by at least 1.2%.
- Falsification: lowering/resource failure, correctness failure, resource-tier cliff, missing ISA materialization, or paired screen improvement below 1.2%.
- Safety: ordinary TileLang scalar/vector loads and shared stores only; no async copy, source injection, direct MXMACA builtin, cached results, disabled race checker, or out-of-run preprocessing.
