# v203 Case2/3 cross-half Gate/Up MMA issue hypothesis

- Parent: exact `v203_case23_parallel_rank_builder_sc-16g`, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Scope: official Case2/3 shared Step1 short and long branches only; Case1 retains the original `ki=0,1` loop.
- Atomic mechanism: reorder the two K32 consumers inside every K64 tile from `Gate0 -> Up0 -> Gate1 -> Up1` to `Gate0 -> Up1 -> Gate1 -> Up0`.
- Intended effect: separate consecutive uses of the same A K32 subfragment and give the backend more independent MFMA/LDS scheduling distance, reducing latency slots without changing buffers, resources, bytes, grids, barriers, or instruction counts.
- Numeric risk: Up accumulates the same FP32 products in reversed order within each K64 pair. Full valid-row correctness is mandatory before timing.
- Safety: public synchronous TileLang primitives only; no async copy, source injection, direct MXMACA builtin, disabled race checker, cache/content reuse, or timed-preprocessing exception.
- Gate: generated resources must stay in the parent tier and the direct-v203 paired endpoint improvement must be at least 1.2%.
