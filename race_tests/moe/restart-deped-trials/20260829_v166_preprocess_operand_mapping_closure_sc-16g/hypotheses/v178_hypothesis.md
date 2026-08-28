# v178 hypothesis card

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Primary change: remap the two physical unified-long Step2 slots from even/odd N128 output tiles to two contiguous N halves.
- Evidence: v166 Step2 reads 966.4 MB versus 939.5 MB compulsory Down bytes, so Down is the dominant real HBM stream. In the current mapping, adjacent grid-x CTAs for one long slot advance Down by N256; the proposed mapping advances by contiguous N128.
- Mechanism: preserve the same 28x48/28x96 grid and use slot 0 for N128 tiles `[0,28)`, slot 1 for `[28,56)`.
- Invariants: identical CTA/waves, shared memory, bytes, native-A loads, MMA, barriers, predicates, epilogue, and math; only long output/Down column mapping changes.
- Expected signal: better Down request locality/partition balance and lower long-Step2 latency.
- Falsifier: validator/correctness failure or paired whole-operator improvement below 1.2%.
- Safety: TileLang primitives only; no async copy, injection, general MXMACA builtins, cached results, or out-of-run preprocessing.
