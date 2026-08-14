# v045 report: Case1 Step1 expert-grouped grid

Status: accepted new best on sc-16g. Parent `v043_step1_vector_fast_rcp_sc-16g` / `cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf`. Submission SHA-256 `cd66baca76d1e33b046e3322bbf30f71a0b411310a2d22569b0a29913dca88de`.

Authoritative Case1 W20/R100 13-pair AB/BA: parent median 2.846740 ms, candidate median 2.782001 ms; paired median -2.26653%, mean -2.26825%, 13/13 wins. OJ W20/R100 candidate times are 2.779146 / 4.928243 / 10.644493 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer localizes the effect to Step1: five paired changes -3.377%, -3.349%, -3.637%, -2.573%, and -2.661%, median -3.34909%. Step2 median +0.32223% is noise. Grid and 32 KiB dynamic shared memory are unchanged; Step1 reports 218 MT / 52 ST and two static waves versus v043's 222 MT / 36 ST and two waves, with zero private memory.

The generated C++ computes the remap once per CTA. ISA adds only scalar mapping/control work while MMA/global-vector-load/LDS/barrier counts stay fixed. mcProfiler replay waves match exactly at 6912/6912: L2 hit rate increases 54.5411% -> 61.3541% (+6.813 points), DNOC read requests decrease 19.215%, global read bytes decrease 2.2695 -> 1.9004 GB (-16.262%), and total cycles decrease 2.994%. L2 read instructions and total memory instructions are unchanged, so the data directly supports improved cache locality rather than less issued GEMM work.
