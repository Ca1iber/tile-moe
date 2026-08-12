# v018 Case3 Step1 Roofline

- Points use the schedule-implied arithmetic-intensity model and paired mcTracer median Step1 duration.
- Static issued GEMM work is `721,554,505,728 FLOP`; schedule-implied uncached global bytes are `8,506,048,512`, giving `84.8284 FLOP/B` for both versions.
- The optimization changes scheduling/overlap, not arithmetic intensity: throughput rises `101.901 -> 106.582 TFLOP/s`.
- Plot roofs: FP16 MMA `1916.928 TFLOP/s`; physical HBM `1843.2 GB/s`; conservative measured sc-16g `1400 GB/s`.
- Both points remain HBM-side. Efficiency against the conservative bandwidth line rises `85.80% -> 89.75%`.
- This decision plot is distinct from mcProfiler's native transaction-based Roofline AI, whose byte accounting is not interchangeable with the schedule-implied model.
