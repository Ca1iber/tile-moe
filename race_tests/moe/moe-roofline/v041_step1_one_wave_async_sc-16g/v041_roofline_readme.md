# v041 Roofline notes

- Case1 Step1 schedule work: 206,158,430,208 FLOPs; schedule bytes: 2,466,250,752; AI=83.591837 FLOP/B.
- mcTracer medians: v040 1.975552 ms, v041 1.908992 ms.
- Throughput: 104.3548 -> 107.9933 TFLOP/s; equivalent schedule traffic: 1248.39 -> 1291.91 GB/s.
- Both points stay on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted hardware truth.
