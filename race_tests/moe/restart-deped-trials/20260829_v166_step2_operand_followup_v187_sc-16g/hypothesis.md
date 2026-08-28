# v187 hypothesis: Case1 Step2 dual-K Down fragment

## Observed evidence

- Fresh exact-v166 Case1 Step2 is about `0.740352 ms` (37.0% of the GPU span), uses 202 MT registers and 32 KiB shared memory, reaches 61.83% MMA duty, and still records about 14.2 M VLS pipeline stalls.
- Down reads are near compulsory bytes, so direct-B and timed global preprocessing cannot help. Existing source-level dual fragments covered different Gate/Up operands or different output halves, not two consecutive K32 slices from the same staged Down K64 panel.

## Verified bottleneck

The existing loop reuses one B register fragment: `LDS(K0) -> MMA(K0) -> LDS(K1) -> MMA(K1)`. The single buffer creates a hard overwrite dependency that prevents the second LDS from being issued before the first MMA consumes K0.

## Proposed mechanism

For exact official Case1 only, allocate a second Down-B local fragment. For each staged K64 panel and each N128 output half, issue `LDS(K0) -> LDS(K1) -> MMA(K0) -> MMA(K1)`. Grids, waves, global/shared bytes, barriers, MFMA count, arithmetic, up-logits layout, and Case2/3 paths stay unchanged.

## Prediction and falsifier

- Generated code must preserve two live B fragments, change Step2 scheduling, and report no private spill.
- The extra fragment must remain below a register cliff; otherwise reject before benchmarking.
- If correctness fails or formal direct-v166 Case1 improvement is below 1.2%, reject and archive.

## Safety

TileLang primitives only; synchronous LDS and MFMA; no async copy, foreign-code injection, direct compiler builtin, disabled checker, warmup-only work, or cached contents.
