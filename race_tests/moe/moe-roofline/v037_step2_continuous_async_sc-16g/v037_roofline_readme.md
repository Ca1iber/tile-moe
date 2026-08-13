# v037 Roofline notes

- Common work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer Step2 medians: v036 0.994560 ms, v037 0.989696 ms.
- Throughput: 103.6430 -> 104.1524 TFLOP/s; schedule traffic rate: 1227.22 -> 1233.25 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities.
- The 460.8 GB/s line is a linear-25%-slice sensitivity, not asserted hardware truth.
- mcProfiler total-cycle replay contradicted clean timing, so no misleading native elapsed-time point is promoted.
