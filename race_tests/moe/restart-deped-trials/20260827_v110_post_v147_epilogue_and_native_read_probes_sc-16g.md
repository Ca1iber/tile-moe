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

## v148 clamp-5.0 degree-7 follow-up

Removing one Horner stage with a least-squares degree-7 sigmoid polynomial failed the strict Case1 correctness gate before timing: 3307 of 6,291,456 output elements exceeded `rtol=1e-2, atol=1e-2`, and maximum absolute error reached `0.0224609375`. Degree-9 is therefore the current minimum safe single-polynomial order; do not repeat lower-order global approximations without a new piecewise error bound.

A second degree-7 fit used a dense linear-program minimax objective on final SiLU rather than sigmoid. Its theoretical maximum SiLU error on `[-5,5]` fell to `0.00762684`, but the full MoE output still had 2864 strict Case1 mismatches and the same `0.0224609375` maximum difference after Down GEMM amplification. This closes ordinary and minimax single-segment degree-7 forms.

## v148 VLS fragment scheduling probes

- Step1 FP16 `k_pack=1` lowered compiler resources from `226 MT / 42 ST` to `216 MT / 54 ST`, but the emitter's hard-coded k-pack-2 fragment contract produced 72.2% NaN/mismatch. Adding an explicit `16x16 <-> 64x4` A/B map still left 69.5% mismatch/NaN, showing that the `T.tvm_mfma` register grouping has another hidden k-pack-2 dependency. Rejected; do not retry without a full emitter rewrite.
- Step1 dual B fragments changed `LDS(Gate)->MMA(Gate)->LDS(Up)->MMA(Up)` to two LDS operations followed by two MMAs. Correctness passed and resources stayed `226/42/2`; Case3 changes were `+0.085%, -0.192%, -0.163%`, median `-0.163%`. Noise/below gate.
- Step2 dual Down B fragments used the same isolation for the two output halves. Correctness passed and resources stayed `220/52/2`; Case3 changes were `+0.000%, +0.191%, +0.186%`, median `+0.186%` regression. Rejected.

These results match the fresh v148 perfcount evidence: VLS pipeline stalls remain large, but simple fragment source reordering is already handled well by the backend and does not remove the stall mechanism.

## v148 input-prepack follow-ups

- One-time wave-shuffle prepack removed the 64-KiB shared bridge and barrier, lowering the auxiliary kernel from `78 MT / 6 waves` to `26 MT / 8 waves`. ISA changed from 16 each of LDG/STS/LDS/STG plus one barrier to a compact loop with 4 LDG, 4 STG, and 16 `sm_bperm_b32`. Full correctness passed, but Case3 median was `+0.145%` regression; shuffle cost cancels bridge removal.
- Direct destination-address permutation removed both shared traffic and shuffles and retained `ldg_b128/stg_b128`, but scattered destination lanes raised resources to `98 MT / 4 waves` and Case3 regressed by a stable `+0.581%` median. This independently reproduces `20260825_case3_direct_inverse_native_prepack_sc-16g` (then `+2.890%` from v101): non-coalesced native global stores cost more than the shared transpose.
- The existing `20260825_case3_native_panel128_sc-16g.md` and `20260824_v86_stride_prepack_screens_sc-16g.md` already close 32-KiB panels, CTA-size sweeps, stride padding, and valid-row-only prepack. No further prepack micro-sweep is warranted.

No probe in this section reaches the 1.2% numbered-candidate threshold. v148 remains the only locally qualified external-OJ-pending candidate from this session.
