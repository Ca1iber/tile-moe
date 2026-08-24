# v092 external OJ SPJ report

Authority: user-provided external OJ output on 2026-08-25.

Candidate SHA-256: `8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483`

| Case | Experts | Hidden | Intermediate | Tokens | Baseline ms | User ms | Speedup | Score ratio | Display | Pass |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| 1 | 16 | 2048 | 8192 | 2272 | 11.251 | 2.419 | 4.651x | 0.823043 | 82 | OK |
| 2 | 32 | 7168 | 2048 | 4544 | 18.610 | 3.977 | 4.679x | 0.823925 | 82 | OK |
| 3 | 64 | 7168 | 2048 | 9088 | 35.875 | 8.014 | 4.477x | 0.817403 | 81 | OK |

All three official cases passed. Relative to incumbent v088, every latency decreased and every score ratio increased.
