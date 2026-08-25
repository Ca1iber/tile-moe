# Correctness and compliance

- Candidate SHA-256: `9ae524ebe406de58935f52db1c8581dfc12ad144f33445990d063ae67edae29f`.
- OJ source validator: PASS.
- OJ generated-device validator: PASS for Cases 1, 2, and 3.
- Full padded-output reference check: PASS for official Case3 (`rtol=1e-2`, `atol=1e-2`).
- No TileLang data-race warning was emitted during candidate compilation.
- Case1 and Case2 generated device files are byte-identical to v095.
- External OJ: pending.
