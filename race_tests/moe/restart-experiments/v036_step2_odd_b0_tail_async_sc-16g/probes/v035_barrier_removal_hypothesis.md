# v035 hypothesis: let the existing CTA fence retire row3 async B0

- Baseline: `v034_step2_next_even_b0_async_sc-16g` (`b289fb0dfd074ca8b30daf1be40088e2104485af`).
- Observed cost: v034 adds four token waits for `row_batch_3`; final MetaX ISA adds four barrier-like instructions, immediately followed by the existing CTA `__syncthreads` lowering that waits on `gvmcnt(0) & bsmcnt(0)` before shared-memory reuse.
- Change: remove only the four explicit `moe_wait_async_16` calls for row3. Keep the async issue, conditional guard, following `T.sync_threads`, all other B1 waits, math, tiles, addresses, shared layout, and stores unchanged.
- Mechanism: use the already-required CTA shared-reuse fence as the completion/visibility point for the next-even B0 async copy, avoiding four redundant per-token barriers.
- Prediction: all OJ cases remain correct; generated C++ loses one wait loop; final ISA loses four barrier-like instructions; Step2 improves or remains binary-equivalent.
- Falsification: any numerical/padding mismatch, MXCC rejection, loss of async copy in lowering, or a repeatable paired regression closes the candidate.
- Risk: CTA fence may synchronize threads without providing the exact per-token async completion semantics on all paths; correctness gates own the decision.
