# Codegen summary

- Case3 lowering/compile: PASS.
- Native FP8 calls: `__builtin_mxc_mma_16x16x32f8` present.
- Generated source: 35,651 bytes; 8 static MFMA sites; 9 `__syncthreads`; 0 async-copy sites.
- FP8 input conversion is emitted lane-by-lane from `half2` members to `fp8_e4_t`.
- Scaled weight conversion is emitted through float2 arithmetic plus `__maca_cvt_float2_to_fp8x2`.
- Resources: prepack `78 MT / 11 ST / 6 waves`; Step1 `256 MT / 58 ST / 2 waves`; Step2 `220 MT / 52 ST / 2 waves`.
- Parent Step1 was `226 MT / 42 ST / 2 waves`; conversion increases both register classes without improving occupancy.
