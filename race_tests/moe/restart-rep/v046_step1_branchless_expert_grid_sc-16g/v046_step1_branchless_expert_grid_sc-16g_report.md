# v046 report: branchless expert-grid mapping

Status: rejected. Parent/current best `v045_step1_expert_grouped_grid_sc-16g` / `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Candidate SHA-256 `e067d64917cec471f1ddef79c986aa02ef98699bbb28fc898684b943d1ca4b05`. No `restart-submission` is created.

Case1 five-pair W20/R100: paired changes +0.4941%, +0.4913%, +0.4304%, +0.4915%, +0.5350%; median +0.49146%, 5/5 regressions. Case1 reference passes with max_abs=0.001953125 and zero padding; OJ import validation passes.

The branch disappears in C++/ISA, but the selector requires a constant-division multiply-high/shift chain plus arithmetic selection. Step1 remains 218 MT / 52 ST and two waves with unchanged MMA/vector-memory/LDS counts. The clean verdict shows this scalar chain costs more than v045's uniform CTA-entry branch.
