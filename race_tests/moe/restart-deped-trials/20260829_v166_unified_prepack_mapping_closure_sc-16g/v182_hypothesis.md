# v182 hypothesis: build expert-rank inside unified prepack

- Parent for decision: exact v166; keep v180's correct unified-prepack schedule (`-0.8457%` first paired screen).
- Atomic refinement: for each expert, only the unified prepack CTA with `copy_col == 0` computes and writes that expert's short/long rank. The subsequent Step1 kernel observes the complete table after the prepack kernel boundary, so the standalone 64-thread map launch is removed without changing v166 Step1 order.
- No in-kernel consumer reads the rank table; no cross-CTA barrier or cached result is used.
- TileLang primitives only; all work occurs every timed invocation.
- Falsifier: race warning, correctness failure, or direct-v166 paired improvement below 1.2%.

