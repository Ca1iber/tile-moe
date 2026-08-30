# exact-v203 physical M64 producer 256-thread hypothesis

- Parent: exact `v203_case23_parallel_rank_builder_sc-16g`, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case2/3 physical-expert unified input producer only; Case1 and both GEMM bodies must remain unchanged.
- Atomic change: use 256 instead of 512 producer threads and increase each thread's row-major M64/N128 source vectors from two to four. Keep the 16-KiB shared bridge, two/three short/long phases, total bytes, native destination layout, rank builder, barriers, and mathematics unchanged.
- Mechanism: all producer threads participate in both source issue and native workspace writeback; the smaller CTA may permit more resident CTAs because the shared footprint is only 16 KiB, unlike the historical 48-KiB prepack where 512 threads was required to fill residency.
- Prediction: producer resource tier stays spill-free and endpoint Case2 or Case3 improves by at least 1.2% versus exact v203.
- Falsifiers: OJ validation/correctness failure, producer resource cliff, or direct-parent paired improvement below 1.2%.
- Safety: public synchronous TileLang only; no async copy, foreign source, direct MXMACA builtin, disabled checker, cached contents, or warmup preprocessing.
