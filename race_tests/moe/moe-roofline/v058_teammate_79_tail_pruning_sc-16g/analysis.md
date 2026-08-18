# v058 Roofline sensitivity note

- These points are explicitly **OJ-shaped end-to-end useful-FLOP estimates**, not native per-kernel mcProfiler Roofline points.
- Useful FLOPs count only valid rows: `6 * valid_rows * hidden * intermediate` for two Step1 GEMMs plus Step2 GEMM.
- Arithmetic intensity uses an analytical minimum-traffic model: expert weights once, padded input/intermediate/output tensors once. Real tiled weight traffic is higher, so this is a sensitivity view rather than a hardware-efficiency claim.
- The compute roof is the provisional 25%-quota model `1916.928 * 0.25 = 479.232 TFLOP/s`; it is not treated as a measured sGPU roof.
- Bandwidth roofs are the physical theoretical 1843.2 GB/s and the conservative sc-16g measured 1400 GB/s sensitivity roofs. The 25% compute quota is not applied to HBM bandwidth.
- v058 improves useful end-to-end throughput from 71.62/78.51/72.95 to 79.51/84.52/86.43 TFLOP/s for Cases 1/2/3. Paired mcTracer, not this plot, owns stage-level causality.
