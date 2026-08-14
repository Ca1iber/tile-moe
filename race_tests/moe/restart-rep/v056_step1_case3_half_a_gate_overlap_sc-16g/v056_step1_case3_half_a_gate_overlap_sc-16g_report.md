# v056 report: Case3 Step1 half-A/gate-MMA overlap

Status: accepted as the new sc-16g best; OJ correctness externally confirmed. Parent `v055_step1_case3_bsm_input_pingpong_sc-16g` / `5072528d`. Submission SHA-256 `2fca3dbf9224ed86a9d2b9d3854e7c6405ce175c6d1fdb893e627e0f27b481e3`.

Authoritative Case3 13-pair AB/BA W20/R100: 9.961385 -> 9.772923 ms, paired median -1.913373%, mean -1.905324%, 13/13 wins. Standalone OJ W20/R100 is 2.966856 / 4.924890 / 9.774034 ms. All exact reference tests pass with max abs 0.001953125 and zero padding; official functional passes 2/2 and imports pass. User-reported OJ speedups are about 3.8x for Case1/2 and below 3.5x for Case3.

The retained change is Case3 Step1 only: split next-A loading into two 32-column halves around current gate MMA while retaining compact `ki` loops. It preserves dynamic loads, MMA work, barriers, grid, and shared memory. Case1/2 generated C++ differs only by a final blank line. The rejected fully expanded probe hit 256 MT registers, created a 20-byte stack frame, and regressed +2.232718%; the repair remains 234 MT/two waves/zero spill and wins consistently.

mcTracer Step1 changes -4.251655% while unchanged Step2 is +0.069762%. Static MMA/load/barrier/arrive counts stay fixed, total static ISA falls 1.0392%, and `snop` falls by seven. Exact-wave mcProfiler reports Total Cycles -9.2941%, MMA duty +1.6047%, and MTE duty +0.9835%, with identical Memory Instructions and no private traffic. These results support improved instruction issue/overlap rather than reduced dynamic work or increased occupancy. Clean paired timing remains authoritative.
