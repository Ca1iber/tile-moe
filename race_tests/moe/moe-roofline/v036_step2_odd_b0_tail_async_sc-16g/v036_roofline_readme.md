# v036 Roofline notes

- Common work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer Step2 medians: v034 1.009920 ms, v036 0.995072 ms.
- Throughput: 102.0667→103.5897 TFLOP/s; schedule traffic rate: 1208.55→1226.59 GB/s.
- Under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities, both points remain on the memory side.
- The 460.8 GB/s line is only a linear-25%-slice sensitivity, not asserted hardware truth.
- mx-smi observed 794,708 MB/s median during this workload; it is not used as the bandwidth roof.
