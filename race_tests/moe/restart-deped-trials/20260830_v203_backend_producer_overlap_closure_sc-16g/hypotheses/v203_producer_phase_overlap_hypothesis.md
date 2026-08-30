# exact-v203 physical M64 producer phase-overlap hypothesis

- Parent: exact `v203_case23_parallel_rank_builder_sc-16g`, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case2/3 physical-expert unified input producer only; Case1 and both GEMM bodies remain unchanged.
- Verified structure: each M64/N128 phase currently uses all 512 threads to fill one 16-KiB shared bridge, synchronizes, then only the first 256 threads write the native workspace, synchronizes, and begins the next phase.
- Atomic mechanism: allocate two 16-KiB shared slots. Preload phase 0 normally. During each phase, threads 0:256 consume the current slot and write the workspace while threads 256:512 load the next phase into the other slot using four FP16x8 vectors each. One CTA barrier completes both jobs before the next phase.
- Preserved: source/destination bytes and addresses, 2/3 short/long phases, 512-thread CTA, native layout, rank builder, GEMM code, mathematics, and synchronous public TileLang execution.
- Prediction: producer hand-offs fall from roughly `2P-1` to `P` and global read/write issue overlaps; direct-v203 Case2 or Case3 endpoint improves by at least 1.2% without a resource cliff.
- Falsifiers: OJ/correctness failure, compile/lowering failure, shared/resource cliff, or direct-parent paired gain below 1.2%.
- Safety: no async copy, foreign source, direct MXMACA builtin, disabled checker, cached contents, or warmup preprocessing.
