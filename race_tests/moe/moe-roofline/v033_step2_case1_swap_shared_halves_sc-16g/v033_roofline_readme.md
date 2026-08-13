# v033 Roofline notes

- `native/v032` and `native/v033` preserve mcProfiler's raw Roofline output.
- Native replay work differs (`during` and aggregate ops/memacs differ), so native candidate-vs-parent performance comparison is quarantined.
- The schedule-aware plot uses a common algorithm model: 103,079,215,104 FLOPs, 1,220,542,464 bytes, AI 84.453608 FLOP/B.
- mcTracer medians provide the elapsed-time authority: 1.088768 ms (v032) and 1.049344 ms (v033), or 94.6751 and 98.2321 TFLOP/s.
- At both 1400 GB/s measured-conservative and 1843.2 GB/s physical-theoretical bandwidth sensitivities, both points remain on the memory side of the explicitly declared 479.232 TFLOP/s compute roof.
