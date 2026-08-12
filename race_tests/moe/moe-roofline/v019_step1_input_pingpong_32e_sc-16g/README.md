# v019 Case2 Step1 Roofline

- The one-line threshold change alters scheduling overlap, not arithmetic intensity.
- Schedule-implied work is `360,777,252,864 FLOP` over `4,253,024,256` uncached bytes: `84.8284 FLOP/B`.
- Paired mcTracer median Step1 duration moves `3.584256 -> 3.528192 ms`, so throughput rises `100.656 -> 102.256 TFLOP/s`.
- With FP16 MMA roof `1916.928 TFLOP/s`, physical bandwidth `1843.2 GB/s`, and conservative sc-16g bandwidth `1400 GB/s`, both points remain HBM-side.
- Conservative-roof efficiency rises `84.76% -> 86.10%`.
