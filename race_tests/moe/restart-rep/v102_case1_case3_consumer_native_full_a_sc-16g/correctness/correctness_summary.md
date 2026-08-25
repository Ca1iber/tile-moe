# Correctness and compliance

- Candidate SHA-256: `4f3c175ef5dd9e57d73f3950b5b99d208d2218311de449ecd2472427653d4efd`.
- OJ source validator: PASS.
- OJ generated-device validator: PASS for Cases 1, 2, and 3.
- Full padded-output reference check: PASS for official Case1 (`rtol=1e-2`, `atol=1e-2`).
- No TileLang data-race warning was emitted during candidate compilation.
- Case2 and Case3 generated device files are byte-identical to v101.
- External OJ: pending.
