# v188 hypothesis: Case1 Step2 N64 occupancy probe

## Observed evidence

- Exact-v166 Case1 Step2 is about 0.740352 ms, uses 202 MT registers and 32 KiB shared memory, and reports only two static waves.
- It computes one M128×N256 CTA as two M128×N128 accumulator halves. The dual-K experiment v187 raised registers without changing occupancy and regressed, so adding operand ILP is not the answer at the present resource point.

## Proposed mechanism

For exact official Case1 only, change `block_dhidden_step2` from 128 to 64. Each CTA then computes two M128×N64 halves, i.e. M128×N128 total. Expected consequences:

- accumulator footprint and Down shared tile each halve;
- Step2 output-column CTAs double from 8×24 to 16×24;
- total MFMA work and compulsory Down bytes remain approximately unchanged;
- Up-logits and per-CTA metadata traffic are duplicated across the two column CTAs.

This is an occupancy/latency-hiding probe: it is useful only if codegen materially lowers registers/shared memory and the additional CTAs offset duplicated A/metadata work.

## Prediction and falsifier

- Codegen must show a large Step2 resource reduction, ideally enough to increase static waves.
- Strict correctness must pass with no spill.
- Direct-v166 Case1 paired timing must improve by at least 1.2%; otherwise reject and archive without stacking.

## Safety

TileLang primitives only; no async copy, injection, compiler builtin, disabled checker, warmup-only preprocessing, or cross-run cached contents.

