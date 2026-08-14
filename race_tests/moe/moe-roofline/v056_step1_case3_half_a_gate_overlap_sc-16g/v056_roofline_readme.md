# v056 Case3 Step1 Roofline

- Fixed declared work/traffic are 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- Paired mcTracer medians are 6.689536 ms for v055 and 6.405120 ms for v056: 107.8632 -> 112.6528 TFLOP/s.
- Equivalent declared-schedule traffic is 481.53 -> 502.91 GB/s; this is not a measured HBM-bandwidth claim.
- AI 224 remains below the 260 FLOP/B physical-theory ridge and 342.31 FLOP/B conservative measured ridge, hence on the memory side under both declared models.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted slice hardware truth.
