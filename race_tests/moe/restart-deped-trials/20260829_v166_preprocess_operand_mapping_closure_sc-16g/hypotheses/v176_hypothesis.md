# v176 hypothesis card

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Primary change: pair global Down reads from the two N128 output halves in the generic/short Step2 path before writing the existing N256 shared tile.
- Mechanism: split each N128 half into four N32 quarters. At each existing producer stage, issue the matching N32 quarter from both output halves into two eight-element local vectors, then store both to their original shared offsets. This mirrors v166's successful Gate/Up pair-load mechanism while preserving the two-stage native-A interleave.
- Invariants: identical grid, CTA/waves, shared allocation, logical Down bytes, native-A bytes, barriers, `ldmatrix_b`, MMA, epilogue, and output math.
- Expected signal: more independent Down requests in flight and lower generic Step2 VLS/VL1 stalls without a resource-class change.
- Falsifier: validator/correctness failure, register/wave regression, or paired whole-operator improvement below 1.2%.
- Safety: TileLang primitives only; no async copy, injection, general MXMACA builtins, cached results, or out-of-run preprocessing.
