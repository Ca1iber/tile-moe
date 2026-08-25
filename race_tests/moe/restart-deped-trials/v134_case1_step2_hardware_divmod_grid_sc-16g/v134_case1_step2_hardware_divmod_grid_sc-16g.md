# v134 Case1 Step2 hardware div/mod grid — rejected

- Parent: external-OJ-AC v110, SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Mechanism: replace the Case1 `(8,24)` grouped Step2 grid with a linearly equivalent `(2,4,24)` 3D grid so hardware x/y coordinates supply the former quotient/remainder.
- Mapping proof: all 192 linear CTA indices produce the exact same `(bx,by)` sequence as v110.
- Correctness: Case1 valid rows PASS; OJ source validation PASS.
- Codegen: only four mapping lines change; bounds guards survive; Step2 remains `202 MT / 52 ST / 2 waves`.
- AB/BA: three rounds, warmup 20, repeat 50; changes `+0.074329/-0.052965/+0.035896%`, median `+0.035896%`.
- Verdict: reject as noise below the 1.2% gate; no profiler, no submission, no external OJ.
- Reuse guidance: hardware decomposition of the existing grouped mapping is semantically clean but does not affect the hot body. Do not retry grid-coordinate algebra unless lowering evidence first shows removal of the address guards or a resource-tier change.
