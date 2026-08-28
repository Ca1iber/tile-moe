# v180 hypothesis: unified expert-indexed prepack with incumbent Step1 order

- Parent: exact v166 SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Control: v179 combined physical mapping is correct but regresses Case2 by `+2.0662%`.
- Atomic mechanism: retain v166 rank-map and short-first/adjacent-long-pair Step1 grid order; replace separate short/long input-prepack launches by one expert-indexed synchronous prepack kernel.
- Invariants: main Step1/Step2 grid, MMA, weight bytes and math unchanged; TileLang primitives only.
- Falsifier: correctness failure or paired gain below 1.2%.

