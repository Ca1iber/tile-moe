# Correctness and compliance

- Candidate SHA-256: `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.
- OJ source validator: PASS.
- OJ generated-device validator: PASS for Cases 1, 2, and 3.
- Full padded-output reference check: PASS for official Case1 (`rtol=1e-2`, `atol=1e-2`).
- No TileLang data-race warning was emitted during candidate compilation.
- Case2 and Case3 generated device files are byte-identical to v101.
- External OJ: pending.
