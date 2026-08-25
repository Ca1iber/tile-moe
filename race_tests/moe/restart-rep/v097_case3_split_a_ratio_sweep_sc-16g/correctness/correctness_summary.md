# v097 correctness

- Both sources pass the static OJ source allowlist gate.
- 32/96: complete padded-output PASS, `rtol=atol=1e-2`.
- 96/32: FAIL before timing; `7,690,114 / 88,080,384` elements mismatched (`8.7%`), greatest absolute difference `3.572265625` at `(6732, 5063)`.
- No performance claim is made for 96/32.
