# No distinct runtime candidate

v140 changes only the second layout string passed to the inline `T.tvm_mfma`
call from `"row"` to `"col"`.  All three official shapes lower to device C++
that is byte-for-byte identical to v110, so there is no distinct executable to
benchmark or profile.

- Parent: `v110_case1_unpredicated_native_up_logits_sc-16g`
- Parent SHA256: `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- Probe SHA256: `3524049223d4fb4c5ad083eb605d4296381091e425784f82d3ff95a94222d149`
- Candidate gate: not reached (`0%` structural delta, below `1.2%`)
