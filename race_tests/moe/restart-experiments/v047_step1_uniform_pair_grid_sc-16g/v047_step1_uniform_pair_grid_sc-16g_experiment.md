# v047 uniform paired CTA mapping

Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Candidate SHA-256: `c50cdc06c7dc2b78e5032d487fa2fb8bc5e44ea0c1902279b7950999cb4bb7b9`.

The candidate applies v045's cheap paired mapping to all 24 row blocks. This removes v045's CTA-entry branch without v046's divide-selector chain and preserves the adjacent two-block weight reuse for the last eight experts. The first eight single-block experts are now interleaved in unrelated pairs, increasing each input tile's reuse distance from one CTA to two and mixing two expert weight streams. Resources and occupancy remain unchanged.

Case1 W20/R100 five-pair AB/BA regresses +0.07614% median, +0.07281% mean, with 5/5 regressions. Correctness and OJ imports pass. Rejected; retain v045's identity ordering for the first eight experts.
