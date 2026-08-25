# v142_step1_native_fp8_mfma_sc-16g

## Hypothesis

C500 exposes native `__builtin_mxc_mma_16x16x32f8`. Replacing each pair of Step1 `16x16x16f16` MFMA operations with one K32 FP8 MFMA could halve dynamic Step1 tensor-core instructions and reduce operand-fragment width enough to produce a large end-to-end gain.

## Atomic delta

- Parent: exact external-OJ-AC v110.
- Step1 only: MMA changes from FP16 K16 with `k_pack=2` to E4M3 FP8 K32 with `k_pack=1`.
- Input fragments are converted from the existing FP16 native workspace to FP8.
- Gate/Up weights remain staged as FP16, are multiplied by `32` for H2048 or `64` for H7168 during fragment load, then converted to FP8.
- FP32 accumulators are rescaled before SiLU/product.
- Step2, grids, barriers, output layout and routing arithmetic are unchanged.

## Safety and compliance

- Candidate SHA-256: `880d85cb7621df6c891626d9c55f9c00ff0a341844449517f972f6be284eca5a`.
- OJ source validation: PASS.
- TileLang primitives only; no async copy, injected code, cached result or foreign import.

## Evidence protocol

Case3 was used as the first high-leverage gate. Exact v110 and candidate ran in one process. Correctness was evaluated at both the project strict tolerance (`rtol=atol=1e-2`) and OJ tolerance (`rtol=atol=5e-2`). Performance used three AB/BA rounds, `warmup=10`, `repeat=50`, device events.

## Verdict

Rejected before three-case promotion and profiler collection. Scale compensation reduced OJ-tolerance mismatch from `46.253%` to `0.504%`, but did not reach AC. More decisively, Case3 regressed from about `7.56 ms` to `205.6 ms` (`+2618.23%` median): on-the-fly FP16-to-FP8 conversion inflated Step1 to `256 MT / 58 ST` and dominated the saved MFMA instructions. No submission is created; SOTA remains v110.
