# v052 Case3 Step1 Roofline

- Declared schedule work and bytes remain 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- Paired mcTracer medians are 6.916352 ms for v050 and 6.632960 ms for v052, or 104.3259 -> 108.7832 TFLOP/s.
- Equivalent declared-schedule traffic is 465.74 -> 485.64 GB/s. This is not a measured HBM bandwidth claim.
- AI 224 is below both the 260 FLOP/B physical-theory ridge and the 342.31 FLOP/B conservative measured ridge, so the fixed schedule remains on the memory side under both declared models.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted hardware truth.
