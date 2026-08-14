# v043 Step1 vector fast reciprocal

Parent: `v042_step1_bsm_address_helper_sc-16g` at `6086a1ba6bb4fcf227c408574fa9f05dd4656b2d`. The Case1 Step1 SwiGLU epilogue used `1/(1+exp2(...))`; final MetaX ISA expanded each FP32 division into `div_scale`, `rcp`, `div_fmas`, and `div_fixup`. The accepted OJ-compliant helper keeps the existing FP32 exp2 and float4x16 register layout but replaces the exact reciprocal correction sequence with `__builtin_mxc_rcpf`.

The important lowering constraint was preserving vector structure. A scalar `T.call_pure_extern` candidate regressed 7.16%; only the in-place float4 helper produced a gain. Final submission SHA-256: `41053f6c6c07a05e4b91b3cc848f5c6dc50b307eee07115118e4b3304004e986`.
