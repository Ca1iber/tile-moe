# v046 branchless exact v045 CTA mapping

Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Candidate SHA-256: `e067d64917cec471f1ddef79c986aa02ef98699bbb28fc898684b943d1ca4b05`.

The candidate preserves v045's exact `(bx, by)` permutation and replaces the uniform `pid1 < 8` branch with a 0/1 selector `(pid1 + 16) // 24`. Generated C++ computes the mapping once, but final ISA expands the constant division into `smul_hi`, shift, multiply, subtract, and add operations. Resources and occupancy remain unchanged.

Case1 W20/R100 five-pair AB/BA regresses +0.49146% median, +0.48845% mean, with 5/5 regressions. Correctness and OJ imports pass. Rejected; retain v045's uniform branch.
