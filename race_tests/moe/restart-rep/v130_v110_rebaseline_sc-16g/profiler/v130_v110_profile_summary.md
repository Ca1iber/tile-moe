# v130 v110 rebaseline profile summary

## mcTracer

| Case | prepack ms | Step1 ms | Step2 ms | Step1 share | Step2 share | gap p→s1 ms | gap s1→s2 ms | span ms |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | 0.020736 | 1.417728 | 0.721152 | 65.65% | 33.39% | 0.029696 | 0.002816 | 2.192128 |
| 2 | 0.128256 | 2.419712 | 1.303808 | 62.82% | 33.85% | 0.029184 | 0.002816 | 3.883776 |
| 3 | 0.247040 | 4.697088 | 2.586368 | 62.37% | 34.35% | 0.032512 | 0.002816 | 7.565824 |

## mcProfiler

| Case | Stage | TFLOP/s | GB/s | AI | MTE duty | MMA duty | VL1 hit | L2 hit | Dnoc latency | avg wave cycles | VLS-pipe stall share |
|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | step1 | 1035.874 | 1138.368 | 909.964 | 10.38% | 51.57% | 87.46% | 28.33% | 279.50 | 50159.57 | 83.52% |
| 1 | step2 | 1206.074 | 850.671 | 1417.792 | 9.51% | 62.19% | 87.25% | 50.34% | 269.92 | 191841.76 | 69.26% |
| 2 | step1 | 1037.075 | 958.177 | 1082.341 | 6.08% | 53.80% | 87.45% | 40.36% | 274.36 | 165180.11 | 83.85% |
| 2 | step2 | 976.781 | 983.392 | 993.277 | 5.43% | 48.59% | 86.46% | 41.72% | 281.62 | 53737.91 | 77.13% |
| 3 | step1 | 1088.172 | 1117.553 | 973.710 | 6.19% | 54.73% | 87.45% | 31.81% | 272.00 | 168466.95 | 84.46% |
| 3 | step2 | 988.811 | 1074.177 | 920.528 | 5.49% | 48.73% | 86.46% | 36.10% | 280.17 | 54298.88 | 77.37% |

## Wall-time corrected Roofline

| Case | Stage | Counted TFLOP/s | Counted GB/s | Counted AI | HBM-roof use | 25%-compute sensitivity use | Predicted limiter | Roof efficiency |
|---:|:---|---:|---:|---:|---:|---:|:---|---:|
| 1 | step1 | 121.858 | 1144.574 | 106.466 | 81.76% | 25.43% | HBM | 81.76% |
| 1 | step2 | 143.620 | 865.798 | 165.882 | 61.84% | 29.97% | HBM | 61.84% |
| 2 | step1 | 124.664 | 984.443 | 126.634 | 70.32% | 26.01% | HBM | 70.32% |
| 2 | step2 | 115.698 | 995.567 | 116.213 | 71.11% | 24.14% | HBM | 71.11% |
| 3 | step1 | 128.442 | 1127.431 | 113.924 | 80.53% | 26.80% | HBM | 80.53% |
| 3 | step2 | 116.649 | 1083.072 | 107.702 | 77.36% | 24.34% | HBM | 77.36% |

Notes:

- mcProfiler RoofLine values are preserved as native tool output; sc-16g re-normalization must be reported separately.
- Corrected values divide per-kernel counted ops and global bytes by the fresh mcTracer wall time.
- The 479.232 TFLOP/s compute line is a 25%-of-card sensitivity model, not a directly proven sGPU cap; the 1400 GB/s HBM line is the conservative measured sc-16g roof.
- ISU stall shares are shares within the four reported stall classes, not fractions of wall-clock time.
- Memory-flow `vl1c/l2c/sl1` fields are interpreted as the profiler's cache percentages; raw JSON remains authoritative.
