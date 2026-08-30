# v202 Case2/3 linear rank builder experiment

Parent: local candidate `v191_case23_unified_prepack64_sc-16g`, SHA256 `f4cf60816c8b56a683e1325d477645563ed1add4b5f83668a0c8785275ab982a`.

Candidate SHA256: `fac648642911ce415dd8a4cef03c59f5e8d23109fde964c21f034744bf1d2404`.

The only executable change is the rank-table construction inside the v191 unified physical-expert prepack. Instead of one full prefix scan in thread 0 of every expert's `copy_col == 0` CTA, one designated CTA performs a single ordered pass and writes both short and long rank ranges. Producer data movement and every GEMM kernel remain unchanged.

Local verdict: candidate. Case2 and Case3 pass the direct-v166 5x50 promotion floor; Case1 passes the no-regression control. External OJ evidence is still required before any `restart-submission` or SOTA change.
