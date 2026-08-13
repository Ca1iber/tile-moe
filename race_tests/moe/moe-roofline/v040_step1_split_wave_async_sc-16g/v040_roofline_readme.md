# v040 Roofline notes

- Case1 Step1 schedule work: 206,158,430,208 FLOPs.
- Schedule bytes: 2,466,250,752 bytes (two weight streams, repeated input tiles, and one output tile per CTA); AI=83.591837 FLOP/B.
- mcTracer medians: v039 2.054144 ms, v040 1.976320 ms.
- Throughput: 100.3622 -> 104.3143 TFLOP/s; equivalent schedule traffic rate: 1200.62 -> 1247.90 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and the 1400/1843.2 GB/s sensitivities.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity and is contradicted by the observed schedule rate; it is not asserted hardware truth.
