# v139 Step1 BSM operand-feed legality-gate report

## Verdict

- Status: `rejected_ineligible_before_implementation`.
- Parent/SOTA: v110, SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Executable candidate: none by design.
- Performance/correctness: not run; no candidate existed to measure.
- Candidate gate: not reached; no `restart-submission` entry and no SOTA movement.

## What the two instructions actually do

| Path | Address-space edge | Semantics | Current lowering |
|---|---|---|---|
| v110 `ldmatrix_b` | shared/BSM to registers | synchronous vectorized fragment load | `lds_b128` followed by register-operand `mma_16x16x16f16` |
| `__builtin_mxc_ldg_b128_bsm` | global to shared/BSM | asynchronous copy with later wait | exposed by the SDK as `maca_cp_async_zfill<16>` |

The similar `b128` suffix only describes a 128-bit transaction width. The operations sit on different edges of the operand pipeline and are not substitutes.

## Source-chain proof

1. `/opt/maca/include/mctlass/arch/maca_memory.h` labels the wrapper as global-to-shared copy, places the builtin in `maca_cp_async_zfill<16>`, and pairs it with `maca_cp_async_wait`.
2. `tilelang/language/copy_op.py` documents `T.maca_async_copy` as `memcpy_async`, requires a barrier argument, and requires a later barrier wait.
3. `src/target/codegen_maca.cc` emits `memcpy_async<bytes>` only for the MACA async-copy intrinsic.
4. `tilelang/intrinsics/maca_mma_macro_generator.py` implements `ldmatrix_b` as vectorized shared-buffer reads into a local fragment.
5. Direct builtin-name search across TileLang compiler and Python sources returns zero matches.

Source hashes and the exact reproduction commands are preserved under `evidence/` and `restart-scripts/`.

## Why no microbenchmark was run

A benchmark would require one of two invalid changes: use `T.maca_async_copy`, which violates the active no-async-copy constraint, or inject/call the SDK builtin outside the public TileLang surface, which violates the no-foreign-source/injection rule. Timing either implementation would not create a promotable candidate and could be mistaken for valid optimization evidence.

## Relation to v130 profile

v130 still identifies Step1 as the dominant stage and shows only about 52–55% MMA duty, so operand-feed latency remains a valid optimization target. v139 only closes this specific mechanism. It does not prove that Step1 operand feeding is fully optimized.

## Reopen condition

Require all of the following:

1. a public TileLang API accepted by the OJ sandbox;
2. synchronous BSM/shared-to-register or direct-BSM-to-MFMA semantics;
3. generated code that replaces, rather than merely precedes, v110's `lds_b128` fragment load;
4. correctness plus the normal 1.2% AB/BA candidate gate.

SOTA after v139 remains `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`.
