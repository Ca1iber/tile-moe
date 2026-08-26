# v145: exact-v110 fast-math + Step2 range-proof hypothesis

- Parent: exact external-OJ-AC v110, SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Observed evidence: native fast-math previously improved Case1 by about `0.735%`; Case1 Step2 range/control simplifications separately showed about `0.59%` signal. A v143-derived combination measured `1.65%` on Case1, but v143 is external-OJ-WA and therefore unusable as a parent.
- Independent change: start again from exact v110 and add only public `TL_ENABLE_FAST_MATH`, mathematically valid Step2 `bx/by` and routed-index `T.assume` facts, and one common `routed_base` expression. No v143 long-tile mapping, fixed expert ordering, async operation, external source, or result cache is retained.
- Prediction: Case1 end-to-end median improves at least `1.2%`; Case2/3 remain non-regressing. Generated Case2/3 may change because fast-math is global, but all official and permuted expert layouts must remain correct.
- Falsifier: any source/generated gate failure, strict/OJ mismatch, permuted-layout mismatch, or no Case reaching the direct-parent `1.2%` promotion gate.
