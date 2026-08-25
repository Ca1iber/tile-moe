# v127 hypothesis

- Parent: exact v110 SOTA (`439a2b80...`).
- Scope: official Case1 Step2 half-interleaved Down loads only.
- Single mechanism: replace the two dynamic-slice `T.copy` operations with equivalent explicit 8-element vectorized loads/stores.
- Evidence: v124 showed that removing the repeated `by` bounds checks improves Case1 by 0.587%, but global range assumptions increase Step2 registers 202 -> 218. Inspection shows those checks originate in conservative lowering of `T.copy` slices.
- Expected compiler effect: four 128-bit transfers per thread and producer half, no dynamic bounds fallback, with the original grouped-grid mapping and near-v110 register count.
- Safety: official Case1 has `by in [0, 7]`, each producer half covers exactly 128 rows of the 256-column output tile, and each K tile covers exactly 64 elements; no out-of-range access is introduced.
- Promotion gate: OJ-source validation, full correctness, and paired median improvement >= 1.2% versus exact v110.
