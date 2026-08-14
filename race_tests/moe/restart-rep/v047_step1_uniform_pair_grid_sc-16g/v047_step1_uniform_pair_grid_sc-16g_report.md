# v047 report: uniform paired expert-grid mapping

Status: rejected. Parent/current best `v045_step1_expert_grouped_grid_sc-16g` / `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Candidate SHA-256 `c50cdc06c7dc2b78e5032d487fa2fb8bc5e44ea0c1902279b7950999cb4bb7b9`. No `restart-submission` is created.

Case1 five-pair W20/R100: paired changes +0.1310%, +0.0238%, +0.0761%, +0.0879%, +0.0453%; median +0.07614%, 5/5 regressions. Case1 reference passes with max_abs=0.001953125 and zero padding; OJ import validation passes.

The branch disappears without a divide chain; C++ uses only the uniform pair mapping and Step1 remains 218 MT / 52 ST and two waves with unchanged MMA/vector-memory/LDS counts. The consistent regression isolates the cost to locality: interleaving unrelated one-block experts is slightly worse than retaining v045's contiguous input reuse.
