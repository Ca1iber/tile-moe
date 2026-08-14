# v057 rejected Case3 Step1 Roofline

- Fixed declared work/traffic remain 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- mcTracer medians are 6.443776 ms for v056 and 12.979200 ms for v057: 111.9770 -> 55.5931 TFLOP/s.
- Equivalent declared-schedule traffic falls 499.90 -> 248.18 GB/s; this is not measured HBM bandwidth.
- AI stays fixed, so the vertical drop at identical AI visualizes lost execution efficiency/residency, not an algorithmic byte increase.
- The candidate is rejected; this figure is diagnostic and not a new performance point.
