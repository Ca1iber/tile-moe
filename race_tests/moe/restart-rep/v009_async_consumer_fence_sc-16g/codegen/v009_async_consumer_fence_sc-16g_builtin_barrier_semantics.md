# MACA async barrier builtin trace

## Lowering chain

1. `T.maca_barrier_arrive_and_wait(token)` creates the opaque TileLang intrinsic `tl.maca_barrier_arrive_and_wait` in `tilelang/language/builtin.py`.
2. `src/target/codegen_maca.cc` emits it directly as `barrier_arrive_and_wait(token);`; TileLang does not add a CTA sync around it.
3. MXCC debug locations in the final Case3 ISA resolve that call to `/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3824-3835`.
4. The SDK template defaults `Scope` to `mxc_thread_scope::thread_scope_block` and calls `__builtin_mxc_barrier_and_wait4(static_cast<int>(Scope), token)` for the 128-bit async token returned by `memcpy_async<16>`.
5. In contrast, SDK `__syncthreads()` at lines 57-75 explicitly executes block release fence, block barrier, and block acquire fence.

## Final-ISA evidence

The v009 Step1 sequence contains hardware `barrier` instructions attributed to SDK line 3834 for each `barrier_arrive_and_wait` call. The following explicit `T.sync_threads()` produces another independent `barrier` attributed to SDK line 61. Therefore the wait is already block-scoped; it is not merely a per-thread token poll.

Final ISA static counts after v009 removed only the post-MMA sync:

| kernel | v008 barrier | v009 barrier | v008 arrive | v009 arrive |
|---|---:|---:|---:|---:|
| Step1 | 5 | 4 | 31 | 29 |
| Step2 | 4 | 3 | 46 | 44 |

## Consequence

The explicit `T.sync_threads()` immediately after the async wait(s) is a redundant second CTA barrier. A follow-up iteration should remove only that explicit sync from Step1 and Step2, retain the block-scoped async wait, and retain the sync after the staging-to-swizzled shared copy. The latter still protects both staging-buffer read completion before the next async overwrite and compute-tile visibility before MMA.

The two Step1 async waits are a separate question. Gate copies are issued before up copies, so the later token may be cumulative, but the SDK header alone does not prove token subsumption. That optimization must be isolated after the redundant explicit sync is validated.

