# v088 external OJ result

- Evidence authority: user-provided external OJ SPJ reports on 2026-08-24.
- Candidate SHA-256: `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`.
- Aggregate score: `81.33`; incumbent v086 aggregate score: `81`.

| Case | Baseline (ms) | v088 latency (ms) | Speedup | Score ratio | Display score | Pass |
|---|---:|---:|---:|---:|---:|---:|
| 1 | 11.251 | 2.431 | 4.628x | 0.822321 | 82 | OK |
| 2 | 18.610 | 4.227 | 4.403x | 0.814906 | 81 | OK |
| 3 | 35.875 | 8.281 | 4.332x | 0.812460 | 81 | OK |

Compared with the OJ-verified v086 vector, every case has lower latency and a higher score ratio. The monotonic SOTA gate passes.
