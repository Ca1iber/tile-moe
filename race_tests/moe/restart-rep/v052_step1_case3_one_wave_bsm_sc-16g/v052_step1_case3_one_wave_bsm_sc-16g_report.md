# v052 report: Case3 Step1 one-wave BSM staging

Status: accepted as the new local sc-16g best, OJ-compliant package ready; external OJ timing pending. Parent implementation `v050_case1_step2_v027_rollback_sc-16g` / `b7772836`. Submission SHA-256 `774343051d2a9fb7cecdd635b971085b61b9ec973725524dfc0f2e4d26a93986`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.242933 ms, candidate median 10.009800 ms; paired median -2.31103%, mean -2.43854%, 13/13 wins. Candidate OJ W20/R100 times are 2.967104 / 4.936855 / 10.000243 ms. All three exact shapes pass FP32 reference with max abs 0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer Step1 medians are 6.916352 -> 6.632960 ms, a -3.03144% paired median. Step2 source is byte-identical; its -0.62970% trace median is treated as correlated run noise rather than attributed optimization. Grids and 32 KiB dynamic shared memory are unchanged. Step1 moves 210 MT/52 ST -> 216 MT/36 ST but stays at two static waves with zero private/stack spill; Step2 stays 234 MT/52 ST.

Lowering replaces explicit per-thread 128-bit global-load/shared-store weight staging with the direct BSM helper. Static C++ Step1 barrier sites fall 4 -> 2 and explicit shared uint4 stores 8 -> 0, but the loop changes 56x128 to 112x64, so the dynamic `__syncthreads` count remains 223. Static ISA grows 3167 -> 3966 instructions because the helper is inlined; static MMA and barrier sites halve while dynamic math/barrier work is preserved. Therefore smaller static code is not the mechanism.

Wave-matched mcProfiler (16896/16896 waves) supplies the dynamic evidence: memory instructions 52,200,064 -> 46,695,040 (-10.546%), global reads 7.7479 -> 7.4127 GB (-4.326%), AP active cycles -3.381%, L2 hit rate +0.56 percentage points, MMA duty 45.40% -> 46.99%, MTE duty 7.04% -> 8.03%, and zero private traffic. Together with clean paired timing, this supports more efficient direct weight staging rather than a barrier-count or occupancy explanation.

The initial 4096-byte row-stride correctness failure and the two-import lowering failure are explicitly archived. The accepted helper uses the exact Case3 14336-byte row stride and one combined `T.import_source`.
