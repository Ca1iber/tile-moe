# v057 report: rejected Case3 gate double buffer

Status: rejected; v056 remains best. Parent `v056_step1_case3_half_a_gate_overlap_sc-16g` / `0a1afac1`. Candidate SHA-256 `006a36d32b66348d0532e7478c2ae1f20fcc20c9fc4edac98e2ebe59a75eb0c9`.

The candidate attempts to overlap the next gate-weight transfer with current MMA using an extra 16 KiB shared buffer. It passes Case3 numerical and import checks, but raises Step1 shared memory 32,768 -> 49,152 B, resources 234 MT/40 ST -> 256 MT/52 ST, and creates a 52-byte stack frame.

Five-pair W20/R100 timing is 9.769572 -> 16.294639 ms, paired median +66.815759%, 0/5 wins. mcTracer shows Step1 6.443776 -> 12.979200 ms (+101.422272%) and unchanged Step2 +0.193768%. Static ISA grows only +0.6058%, though `snop` rises by 42. The evidence supports a shared-memory residency cliff compounded by register/stack pressure. Do not use this candidate as a submission or optimization base.
