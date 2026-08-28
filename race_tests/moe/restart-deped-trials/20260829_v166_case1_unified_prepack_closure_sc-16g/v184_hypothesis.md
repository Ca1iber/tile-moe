# v184 hypothesis: parallel rank construction inside one Case1 prepack CTA

- Parent for the promotion decision remains exact v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Control: v183 proved the Case1 unified-prepack/rank mechanism correct, but its 3x20 direct-v166 mean was only `-0.7634%`.
- Identified overhead: v183 makes one thread in every expert's `copy_col==0` CTA serially scan all 16 experts, duplicating rank work across 16 CTAs.
- Atomic refinement: only the CTA with `copy_col==0, copy_row==0` constructs the complete rank table. Its first 16 threads each own one expert and perform the same short/long prefix count in parallel. All other producer CTAs execute no rank scan. Step1 still consumes the table only after the prepack kernel boundary.
- Prediction: preserve the two-launch reduction while shortening the unified producer's critical tail enough to exceed 1.2% in Case1. Case2/3 remain exact-v166 specializations.
- Falsifier: OJ/source failure, static race warning, correctness failure, or direct-v166 paired improvement below 1.2%.
- Safety: TileLang primitives only; synchronous operations; no async copy, injection, direct compiler builtin, disabled race checker, warmup-only work, or cached contents.

