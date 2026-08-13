# v042 Roofline notes

- Schedule work 206,158,430,208 FLOPs; schedule bytes 2,466,250,752; AI=83.591837 FLOP/B.
- mcTracer medians: v041 1.907200 ms, v042 1.901824 ms.
- Throughput 108.0948 -> 108.4004 TFLOP/s; schedule-equivalent traffic 1293.13 -> 1296.78 GB/s.
- Dynamic work/bytes do not change; the point moves upward at fixed AI and remains memory-side under the declared 1400/1843.2 GB/s sensitivities.
