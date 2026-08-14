# v054 report: rejected Case3 BSM address CSE

Status: rejected; v052 remains the best. Parent `v052_step1_case3_one_wave_bsm_sc-16g` / `e8591a30`.

Primary manual CSE passes correctness but regresses Case3 10.001931 -> 10.443203 ms, +4.38801% paired median, 0/9 wins. mcTracer Step1 is 6.828800 -> 7.107584 ms at the median (+4.75816% paired); Step2 is effectively unchanged (+0.19336%). Resources improve from 216 MT/36 ST to 200 MT/36 ST, stay at two waves, and do not spill. Static Step1 instructions fall 3966 -> 3441 (-13.2375%).

The regression is a memory-transaction effect, not extra arithmetic. With identical achieved waves and Memory Instructions, mcProfiler measures global-read bytes +11.7949%, DNOC read requests +11.9706%, and L2 hit rate -4.46 percentage points. MMA duty falls 25.81% -> 24.97% and MTE duty 40.76% -> 38.89%. Grouping two BSM operations within one divergent branch changes hardware issue/cache behavior enough to overwhelm the address-instruction savings.

The split-branch repair recovers most of the loss but remains +1.65531%, 0/7 wins. It restores 216 MT registers but raises ST registers 36 -> 52 and static ISA 3966 -> 4015 (+1.2355%), including +8 `ldg_b128` and +16 `snop`. This repair falsifies the narrower hypothesis that branch reconvergence alone caused all loss.

Decision: retain the exact v052 submission and preserve its two separate 7168 helper calls. Do not create a v054 restart-submission directory.
