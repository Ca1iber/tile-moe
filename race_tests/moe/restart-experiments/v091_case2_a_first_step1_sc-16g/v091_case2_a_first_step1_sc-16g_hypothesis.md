# v091 Case2 A-first Step1 producer hypothesis

- Parent: exact v090 OJ-AC development baseline, SHA-256 `6e28d4446cb79b9bbcd440b39ccfda61c2d82792f23987bc15d7ebfe5923b8d7`.
- Scope: Case2 only (`experts=32`, `hidden=7168`, `intermediate=2048`). Case1/3 compile-time paths must remain generated-code identical to v090.
- Evidence: v090 Case2 Step1 occupies about 63% of traced end-to-end time and has no private spill. Moving the full native A prefetch from after Gate1 to after Gate0 gave a stable sub-threshold gain; screening producer permutations then showed that placing A before every weight producer is materially faster.
- Mechanism: change each Step1 pair from `G0 -> G1 -> A -> U0 -> U1` to `A -> G0 -> G1 -> U0 -> U1` for both the odd-tile prefetch and next-even prefetch. Instruction set, logical bytes, MMA count, barriers, grid, workspace layout, and arithmetic are unchanged.
- Screen result: Case2 five-round AB/BA, warmup 100, repeat 100, all correctness PASS; paired changes `-2.4649/-2.6942/-2.6074/-2.6279/-2.4797%`, median `-2.6074%`, pstdev `0.0886%` versus v090.
- Required gates: full padded correctness on all three cases; OJ source/generated validation; Case1/3 generated-code identity; Case2 resource and ISA checks; long paired benchmark and mcTracer attribution.
- Promotion: archive v091 and advance `dorm` only after all local gates pass. External OJ AC is still required before `restart-submission` or formal SOTA promotion.
