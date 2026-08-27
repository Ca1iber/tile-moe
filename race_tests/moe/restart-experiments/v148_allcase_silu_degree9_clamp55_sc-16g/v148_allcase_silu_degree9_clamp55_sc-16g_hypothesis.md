# v148 hypothesis

Fresh v110 Case3 mcProfiler evidence shows that Step1/Step2 are not simply HBM-bandwidth bound: MMA duty is about 54.5%/49.2%, while VLS pipeline stalls are large. The exact SiLU expression in the Step1 epilogue contains an `exp2` and a dependent divide. v147 proved that replacing this chain with a clamp-5.5 degree-9 polynomial is both locally faster and externally AC for Case1.

Hypothesis: applying the same polynomial to the two 7168x2048 official shapes will shorten the scalar dependency chain without changing CTA topology, shared-memory staging, MMA count, or Step2. Because Case2 and Case3 compile from the same branch, the effect should be modest but stable in both.

Promotion expectation: at least one official case must exceed the 1.2% local candidate threshold, all three must pass full correctness and show no local regression, and external OJ must decide whether the candidate may replace v110.
