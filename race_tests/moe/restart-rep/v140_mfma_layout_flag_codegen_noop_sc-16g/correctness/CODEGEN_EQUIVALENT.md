# Correctness disposition

No separate numerical run was attributed to v140.  For each of the three
official shapes, the complete generated device source containing prepack,
Step1, and Step2 is byte-for-byte identical to v110.  Therefore this flag-only
probe introduces no arithmetic, indexing, predicate, memory, or synchronization
change at the executable-source level.

This is a codegen-equivalence rejection, not an AC claim for a promoted source.
v110's external-OJ AC remains the authoritative correctness result.
