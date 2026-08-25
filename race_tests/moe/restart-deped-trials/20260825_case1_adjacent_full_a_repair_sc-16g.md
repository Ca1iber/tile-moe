# 2026-08-25: Case1 adjacent full-A producer repair rejected

- Base: v095 performance behavior.
- Source SHA-256: `38cd8dc48a73baa7243f00de7953d15ed9fba7351be22b937cc21622606b9519`.
- Intent: repair v093's OJ-unsafe full-A-first path by replacing it with two adjacent direct-index 64-row producers.
- OJ source validation: PASS.
- Full padded Case1 correctness: PASS.
- AB/BA, 3 rounds, warmup 20, repeat 50: `+2.516869%, +2.635944%, +2.671871%`; median `+2.635944%` regression.
- Conclusion: duplicated adjacent producer/control overhead destroys the earlier benefit. Closed; no numbered archive and no submission.
