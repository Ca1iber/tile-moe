# External OJ verdict

Status: **AC — promoted global SOTA**.

Exact candidate SHA-256: `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.

| Case | Config | Baseline (ms) | User kernel (ms) | Speedup | Score ratio | Display | Verdict |
|---|---|---:|---:|---:|---:|---:|---|
| 1 | experts=16, hidden=2048, intermediate=8192, tokens=2272 | 11.251 | 2.332 | 4.825x | 0.828315 | 82 | AC |
| 2 | experts=32, hidden=7168, intermediate=2048, tokens=4544 | 18.610 | 3.974 | 4.683x | 0.824035 | 82 | AC |
| 3 | experts=64, hidden=7168, intermediate=2048, tokens=9088 | 35.875 | 7.690 | 4.665x | 0.823482 | 82 | AC |

Incumbent v092 score ratios were `[0.823043, 0.823925, 0.817403]`. v102 is non-regressing in every official case and strictly improves every score ratio, satisfying the monotonic SOTA promotion gate.
