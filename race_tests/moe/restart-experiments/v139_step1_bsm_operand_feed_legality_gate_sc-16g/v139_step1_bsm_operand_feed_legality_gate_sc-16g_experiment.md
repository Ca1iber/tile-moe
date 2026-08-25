# v139 Step1 BSM operand-feed legality-gate experiment

## Objective

Determine whether `__builtin_mxc_ldg_b128_bsm` provides a legal, synchronous replacement for v110 Step1's shared-to-register `ldmatrix_b` path, before spending a numbered implementation and benchmark cycle on it.

## Hypothesis

If the builtin were a public TileLang synchronous shared-memory operand-load primitive, it might reduce the Step1 operand-feed stalls visible in the v130 mcProfiler baseline while preserving v110's MFMA schedule and two-wave occupancy.

## Static evidence

- The installed MACA SDK documents the builtin inside `maca_cp_async_zfill<16>` under the comment `copy from global memory to shared memory` and says that it cooperates with `maca_cp_async_wait`.
- The wrapper calls `__builtin_mxc_ldg_b128_bsm(dst_shared, src_global, ...)`; its wait primitive lowers through `__builtin_mxc_arrive(64 + N)`. This is an asynchronous global-to-BSM transfer, not a synchronous BSM-to-register matrix load.
- A repository-wide search of `src/`, `tilelang/`, and `include/` finds zero direct references to `__builtin_mxc_ldg_b128_bsm` or `ldg_b128_bsm`.
- TileLang exposes the related operation only as `T.maca_async_copy(src, dst, barrier=...)`. Its API docstring states that it emits `memcpy_async` and requires `T.maca_barrier_arrive_and_wait()`.
- The current `TensorCoreIntrinEmitter.ldmatrix_b` is a vectorized load from shared memory into a local fragment. v110's generated ISA already lowers this stage to `lds_b128`; `T.tvm_mfma` then consumes register operands.

## Decision

Reject the hypothesis before implementation. Calling the SDK builtin directly would require a foreign-source/code-injection path, and the only public TileLang mapping is explicitly asynchronous. Both violate the current experiment constraints. It also targets the global-to-shared edge, so it cannot replace `ldmatrix_b` on the shared-to-register edge.

No candidate source or patch was generated, no GPU timing was attributed to v139, and the 1.2% candidate gate was not reached. v110 remains the external-OJ SOTA.

## Reopen condition

Only reopen this direction if a public, OJ-compliant TileLang primitive is added that synchronously loads a BSM/shared tile into MFMA registers (or lets MFMA consume BSM directly), and generated device code proves that it replaces the existing `lds_b128` plus register-operand path without async-copy semantics.
