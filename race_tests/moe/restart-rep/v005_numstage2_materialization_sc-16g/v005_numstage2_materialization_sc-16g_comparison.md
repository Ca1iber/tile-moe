# v005_numstage2_materialization_sc-16g paired evidence

Verdict: rejected as a production kernel; retained as causal evidence.

| evidence | Step1 | Step2 |
|---|---:|---:|
| mcTracer Case3 runtime delta | +48.05% | +44.35% |
| dynamic shared | 32768 -> 65536 B | 32768 -> 65536 B |
| mcProfiler total cycles delta | +22.64% | +10.43% |
| average wave life delta | -21.67% | -27.33% |
| AP active cycles delta | +52.47% | +44.09% |
| MTE duty | 5.97% -> 8.63% | 5.03% -> 9.74% |
| MMA duty | 45.27% -> 29.69% | 40.93% -> 28.41% |
| private read/write instructions | 0/0 -> 0/0 | 21504/21504 -> 0/0 |

Causal result: software pipelining materialized double buffering and removed Step2 spill, but ordinary MACA T.copy did not become memcpy_async. The 32 KiB -> 64 KiB dynamic-shared increase coincided with roughly 44-48% stage slowdowns and large MMA-duty loss; lower per-wave/shared latency indicates less contention per resident wave, not better device throughput.
