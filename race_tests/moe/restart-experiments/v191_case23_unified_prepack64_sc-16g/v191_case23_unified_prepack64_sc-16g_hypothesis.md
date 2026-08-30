# v191 hypothesis

v190 proved that the fixed two-M96 physical-expert input producer wastes work on short experts in Case2. Case3 has the same M192 Step1 organization and the same 50/50 short/long expert split, but twice as many experts. Enabling the already-correct two/three-M64 producer for the exact Case3 shape should therefore remove more auxiliary work without changing Case1 or either main GEMM kernel.

Promotion criterion: exact-source direct-v166 AB/BA median improvement of at least 1.2% in both Case2 and Case3, strict correctness in all cases, and no material Case1 regression.
