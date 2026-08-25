# v129 hypothesis

- Parent: exact v110 SOTA (`439a2b80...`).
- Scope: all official cases; single compiler mechanism.
- Change: enable TileLang's public `TL_ENABLE_FAST_MATH` pass while preserving every kernel algorithm, tile, grid, buffer, predicate and launch.
- Evidence: on the older v084 baseline this pass improved Case1 by about 0.735% with full correctness. v110 shortened Case1 Step2 substantially, increasing Step1/activation's fraction of end-to-end latency, so the current effect must be remeasured rather than assumed.
- Safety: public TileLang pass only; no foreign source, async copy, cache, or arithmetic rewrite in Python.
- Promotion gate: full correctness and paired median improvement >= 1.2%; below-gate results remain evidence only.
