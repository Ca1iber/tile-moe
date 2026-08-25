# v129 experiment

- Parent: `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`
- Parent SHA256: `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- Candidate SHA256: `895ff6dda3157aad3cf6664b1d0655f9786058563a109203ca4881acc2b6f008`
- Mechanism: public TileLang `TL_ENABLE_FAST_MATH` JIT pass only.
- Source/generated OJ gate: PASS for all three official shapes.
- Full correctness: PASS for all three official shapes (`rtol=atol=1e-2`).
- Long paired medians vs v110: Case1 `-1.605886%`, Case2 `-0.474469%`, Case3 `-0.412662%`.
- External OJ verdict: `WA` (user-reported on 2026-08-25; no detailed failing coordinate was provided).
- Status: `rejected_external_oj_wa`.
- Formal SOTA remains v110; all follow-up optimization restarts from the exact v110 source.
