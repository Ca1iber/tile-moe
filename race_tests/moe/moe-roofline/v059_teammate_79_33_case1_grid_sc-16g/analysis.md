# v059 Roofline sensitivity note

- Points are OJ-shaped end-to-end useful-FLOP estimates, not native per-kernel mcProfiler Roofline points.
- Useful FLOPs are `6 * valid_rows * hidden * intermediate`; AI uses the same analytical minimum-traffic model as v058.
- Compute roof `479.232 TFLOP/s` is a provisional 25%-quota sensitivity model, not a measured sGPU roof. Bandwidth roofs remain 1843.2 and 1400 GB/s because compute quota must not be applied to HBM bandwidth.
- v059 lifts Case1 useful throughput to 82.24 TFLOP/s. Case2/3 remain statistically identical to v058 because their generated code is unchanged.
