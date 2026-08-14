# v054 Case3 BSM address-CSE experiment

Parent `v052_step1_case3_one_wave_bsm_sc-16g` / `e8591a30`. Primary SHA-256 `e6f8c954b3234126eda35b0c144f61e10c32895e73f2d4697eca1bb7d9669396`; split-branch repair SHA-256 `d6f67c6d960b5dd0d72e7e30fd5108f8299c405e1592a121e32a24a75cd0978e`.

The primary probe passes Case3 correctness but regresses W20/R100 by +4.38801% paired median with 0/9 wins. mcTracer localizes it to Step1 at +4.75816% median while Step2 changes only +0.19336%. Despite fewer registers (216 MT/36 ST -> 200 MT/36 ST), the same two-wave tier, no spill, and 13.2375% fewer static Step1 instructions, wave-matched mcProfiler reports +11.7949% global-read bytes, +11.9706% DNOC read requests, L2 hit rate 55.14% -> 50.68%, MMA duty 25.81% -> 24.97%, and MTE duty 40.76% -> 38.89%.

The repair restores a separate branch-reconvergence region for each row while retaining common address calculations. It reduces the regression to +1.65531% paired median but still loses 7/7 pairs. Its resources return to 216 MT/52 ST at the same two-wave tier; static Step1 ISA grows +1.2355%, including eight additional `ldg_b128` and sixteen additional `snop` instructions. The original two helper calls therefore preserve a better backend transaction/cache schedule than either manual CSE form.
