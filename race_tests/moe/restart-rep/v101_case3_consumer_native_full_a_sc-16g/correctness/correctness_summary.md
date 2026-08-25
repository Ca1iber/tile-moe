# Correctness and compliance

- Candidate SHA-256: `b77766d2a4044bc4b87a47f1b95f0de58d7aeb9afde2e9e3659dc1c9c3c49dbe`.
- OJ source validator: PASS.
- OJ generated-device validator: PASS for Cases 1, 2, and 3.
- Full padded-output reference check: PASS for official Case3 (`rtol=1e-2`, `atol=1e-2`).
- No TileLang data-race warning was emitted during candidate compilation.
- Case1 and Case2 generated device files are byte-identical to v095.
- External OJ: pending.
