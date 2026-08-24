# v090 OJ-safe per-case composition experiment

## Change

v090 replaces the rejected cross-case v089 combination with conservative
shape dispatch:

- Case1/3: v088-equivalent non-owner host workspace caches and v088's
  `Gate0 -> input -> Gate1` Step1 order.
- Case2: teammate-equivalent output-owned native input workspace and original
  `Gate0 -> Gate1 -> native input` Step1 order.

No asynchronous copy, foreign source, or external call is used.

## Evidence

- Candidate SHA-256:
  `6e28d4446cb79b9bbcd440b39ccfda61c2d82792f23987bc15d7ebfe5923b8d7`.
- Static source plus all three generated-code OJ validators: PASS.
- Full padded-output checks, Cases1/2/3: PASS at `rtol=1e-2`, `atol=1e-2`.
- Generated C++ identity:
  - Case1 equals v088: `c61cd69d...`.
  - Case2 equals teammate: `72a73cd0...`.
  - Case3 equals v088: `10eb2d62...`.
- Case2 paired long versus v088: median `-2.441584%`, pstdev `0.021522%`
  over five AB/BA rounds (`warmup=100`, `repeat=100`).

## Outcome

Local candidate gate: PASS and above the user's 1.2% threshold. Global verdict:
`inconclusive` until the exact candidate SHA receives all three external OJ
results. No `restart-submission/v090...` directory is allowed yet.
