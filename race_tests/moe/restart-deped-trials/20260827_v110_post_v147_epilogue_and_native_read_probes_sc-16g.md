# 2026-08-27 v110 post-v147 abandoned probes

Parent: v110 external-OJ AC. These probes were deliberately left unnumbered because they failed correctness or the 1.2% candidate gate.

## FP16 degree-9 polynomial epilogue

Moving polynomial intermediates to FP16 caused catastrophic Case2 error: 30,171,708 of 44,040,192 compared elements mismatched (`68.5%`), with maximum absolute error `3.039`. Rejected before performance promotion.

## `actual_rows`-predicated exact SiLU

Restricting exact SiLU evaluation to valid rows passed correctness but measured only about `-0.052%` Case2 and `-0.046%` Case3 median. This reproduces the earlier v137 conclusion: eliminating padded-row scalar work is too small relative to GEMM work.

## All-case unpredicated native reads

Removing native-read predicates passed correctness but regressed Case2 by about `+0.462%` and Case3 by about `+0.321%`. Extra padded traffic is not hidden for the long shapes.

## Interpretation

The useful part of v147 is shortening the FP32 SiLU dependency chain, not lowering its precision and not merely skipping padded rows. That evidence led to v148, which retains FP32 polynomial evaluation and applies it to all official Step1 shapes.
