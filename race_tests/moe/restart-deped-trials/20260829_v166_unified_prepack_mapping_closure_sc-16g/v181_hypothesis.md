# v181 hypothesis: short-aware unified prepack

- Parent for decision: exact v166; v180 unified-prepack control is correct and improves Case2 by `0.8457%` in the first paired screen.
- Atomic refinement of the same mechanism: preserve v166 rank-map/Step1 order and the single expert-indexed prepack launch, but stage short experts as one 128-row phase instead of executing the long M192 two-phase producer schedule.
- Expected effect: remove the almost-empty second producer phase and its barriers for half the experts without changing main GEMM work.
- Falsifier: correctness failure or formal direct-v166 improvement below 1.2%.

