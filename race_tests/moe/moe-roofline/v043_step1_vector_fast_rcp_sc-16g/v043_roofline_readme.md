# v043 Roofline notes

- Declared GEMM schedule work: 206,158,430,208 FLOPs; bytes: 2,466,250,752; AI=83.591837 FLOP/B.
- Paired mcTracer medians: v042 1.898496 ms, v043 1.881856 ms.
- Schedule throughput: 108.5904 -> 109.5506 TFLOP/s; equivalent traffic: 1299.06 -> 1310.54 GB/s.
- Dynamic GEMM work and bytes do not change. This epilogue instruction optimization moves the plotted schedule point upward at fixed declared AI; exact reciprocal-vs-approximate reciprocal scalar work is not added to the GEMM FLOP convention.
