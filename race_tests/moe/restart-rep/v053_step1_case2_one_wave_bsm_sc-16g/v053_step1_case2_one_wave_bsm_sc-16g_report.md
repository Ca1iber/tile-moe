# v053 report: rejected Case2 direct BSM transfer

Status: rejected; v052 remains the best. Parent `v052_step1_case3_one_wave_bsm_sc-16g` / `e8591a30`.

One-wave direct BSM passes all three shapes but regresses Case2 4.929011 -> 5.133353 ms, +4.11984% paired median, 0/9 wins. mcTracer Step1 is 3.226368 -> 3.411200 ms, +5.72879%; Step2 median change is -0.10523% and treated unchanged. Resources are 210 MT/36 ST -> 216 MT/36 ST, two waves, zero private spill.

The all-four-wave repair also passes correctness but regresses 4.941225 -> 5.491159 ms, +11.08456%, 0/7 wins. It lowers resources to 182 MT/28 ST but remains at the same two-wave residency tier, another direct counterexample to register-only reasoning. This falsifies the proposed producer-parallelism repair. Case2 has only 48 Step1 CTAs and already owns the specialized synchronous prefetch-before-barrier path; the mechanism that helped Case3 at 96 CTAs is therefore not portable to Case2.

Decision: keep the exact v052 submission. Do not create a v053 restart-submission directory.
