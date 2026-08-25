# Correctness summary

- Exact v110 Case3: PASS at `rtol=atol=1e-2`; max abs `0.001953125`.
- Unscaled FP8 Case3: FAIL; strict mismatch `65.7477%`, OJ mismatch `46.2531%`, max abs `1.9453125`.
- Scaled FP8 Case3: FAIL; strict mismatch `27.4437%`, OJ mismatch `0.504372%`, max abs `0.1767578125`.
- Cases1/2 were not run after Case3 failed the OJ tolerance gate.
