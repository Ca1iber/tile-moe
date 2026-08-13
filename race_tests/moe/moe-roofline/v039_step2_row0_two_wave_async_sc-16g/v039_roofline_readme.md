# v039 Roofline notes

- Common Step2 work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer medians: v038 0.982528 ms, v039 0.953600 ms.
- Throughput: 104.9122 -> 108.0948 TFLOP/s; schedule traffic rate: 1242.25 -> 1279.93 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s sensitivities.
- The 460.8 GB/s line is only a linear-25%-slice sensitivity, not asserted hardware truth.
