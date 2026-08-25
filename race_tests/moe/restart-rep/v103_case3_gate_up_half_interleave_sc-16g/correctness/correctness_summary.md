# Correctness and compliance

- Candidate SHA-256: `cf4219de4dba2a4679cc61fff89dbb90017930cb72ad8879334ed9d1bbe06aba`.
- OJ source validator: PASS.
- OJ generated-device validator: PASS for Cases 1, 2, and 3.
- Full padded-output reference check: PASS for official Case3 (`rtol=1e-2`, `atol=1e-2`).
- No async copy, foreign source, or data-race-check suppression.
- Case1 and Case2 generated device files are byte-identical to v102.
- External OJ: not submitted because the clean paired screen failed the 1.2% threshold.
