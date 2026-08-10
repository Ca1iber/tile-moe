# v000_minibs_baseline_sc-16g Roofline summary

The decision points use mcTracer time and an explicit schedule-issued byte model. Native mcProfiler coordinates are archived separately and are not interpreted as end-to-end TFLOP/s.

| point | ms | issued AI | achieved TFLOP/s | implied GB/s | sc16 roof efficiency | region |
|---|---:|---:|---:|---:|---:|---|
| C1-S1 | 2.029312 | 83.592 | 101.590 | 1215.314 | 86.81% | HBM |
| C1-S2 | 1.078016 | 84.454 | 95.619 | 1132.212 | 80.87% | HBM |
| C2-S1 | 3.677696 | 84.828 | 98.099 | 1156.437 | 82.60% | HBM |
| C2-S2 | 2.057216 | 81.920 | 87.686 | 1070.383 | 76.46% | HBM |
| C3-S1 | 7.145216 | 84.828 | 100.984 | 1190.454 | 85.03% | HBM |
| C3-S2 | 4.060160 | 81.920 | 88.858 | 1084.691 | 77.48% | HBM |

All six schedule-level decision points are HBM-side under the 479.232 TFLOP/s 25%-share compute model and 1400 GB/s measured sc16 HBM roof.
The 479.232 TFLOP/s ceiling is an inference, not a directly measured slice peak; the HBM-side classification is nevertheless insensitive to using the full-card 1916.928 TFLOP/s ceiling.
