# v049 report: Case3 Step2 expert-grouped grid

Status: accepted new best on sc-16g. Parent `v048_step1_case3_expert_grouped_grid_sc-16g` / `748b6fd1`. Submission SHA-256 `52db5220f50b7ce224ec5ccb7f2f536c554f44888affcf94b4d44806e9a3a1fa`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.327889 ms, candidate median 10.247749 ms; paired median -0.76275%, mean -0.77238%, 13/13 wins. OJ W20/R100 candidate times are 2.787743 / 4.924447 / 10.217354 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer Step2 medians are 3.401472 -> 3.329024 ms, a -2.22022% paired median with 5/5 wins. Step1's -0.855% median is sampling noise because its generated source is unchanged. Both grids and 32 KiB dynamic shared memory are unchanged; Step2 remains 234 MT / 52 ST, two static waves, and zero private memory.

The no-assume probe regressed because generated C++ contained repeated safe-memory bounds guards. Explicit range assumptions remove those guards and restore the parent resource allocation. Step2 ISA keeps 256 MMA, 32 128-bit global loads, 64 LDS, and 17 barrier sites. Wave-matched counters (16896/16896 waves across both launches) show L2 hit rate 52.519% -> 55.884%, global read bytes 7.9850 -> 7.5541 GB (-5.395%), DNOC reads -4.047%, AP active cycles -0.384%, and zero private traffic.
