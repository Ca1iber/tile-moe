# v053 Case2 BSM transfer experiment

Parent `v052_step1_case3_one_wave_bsm_sc-16g` / `e8591a30`. One-wave SHA-256 `5f0ce92f3ccb2bd8f153be38d416bfe4642b2e8993805f82564cbfd79b3a576d`; four-wave repair SHA-256 `9e41faa57ea1de2b71d6d57c6582d01753b13e2e58493e69cc0c22662cd350b6`.

The one-wave transfer is correct but regresses Case2 W20/R100 by +4.11984% paired median with 0/9 wins. mcTracer localizes the regression to Step1 at +5.72879%; Step2 is unchanged. Step1 resources move 210 MT/36 ST -> 216 MT/36 ST, retain two static waves, and do not spill. Unlike Case3, Case2 receives no ST reduction.

The repair probe assigns all four waves to BSM, gate/up two waves each. It passes Case2 correctness but regresses +11.08456% paired median in 7/7 pairs despite lowering Step1 to 182 MT/28 ST at the same two-wave tier. Thus inactive producer waves and nominal register counts are not the primary cause. Case2's accepted synchronous prefetch-before-barrier schedule is shape-specific and more efficient at 48 CTAs than either direct BSM assignment.
