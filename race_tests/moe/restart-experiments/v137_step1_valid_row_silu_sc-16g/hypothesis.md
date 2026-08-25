# v137 hypothesis card

- Parent: v110 external-OJ SOTA, SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Single change: place the Step1 SiLU/`exp2` expression under the existing `i < actual_rows` writeback predicate.
- Mechanism: v110 evaluates SiLU for all 128 rows even though padding rows cannot reach `up_logits`. The official 100/128/56-row block classes make 26.04% of Step1 epilogue row slots dead.
- Expected signal: lower Step1/end-to-end time without changing MMA, memory copies, barriers, tile shape, grid, or Step2.
- Correctness invariant: valid rows execute the byte-identical expression and writeback; invalid rows are not externally observable.
- Kill criteria: any correctness or OJ-compliance failure, or stable end-to-end improvement below the user-mandated 1.2% gate.

