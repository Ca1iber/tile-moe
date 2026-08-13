# v032 Case1 Step2 Roofline

This directory keeps two deliberately separate models.

1. `native/` contains unmodified mcProfiler RoofLine reports for exact v031 and v032 submissions. The tool reports AI 774.803 and 768.612 respectively; both exceed its native `MAX_I=260` ridge.
2. `v032_case1_step2_schedule_roofline.*` uses schedule-aware repeated per-CTA traffic: 103,079,215,104 FLOPs, 1,220,542,464 bytes, AI 84.4536 FLOP/byte. mcTracer medians place v031/v032 at 92.352/94.675 TFLOP/s.

The schedule chart uses the explicit 479.232 TFLOP/s 25%-slice compute model and two bandwidth sensitivities: 1400 GB/s conservative measured and 1843.2 GB/s physical theoretical. Both schedule-aware points are HBM-side. The native and schedule models are not numerically interchangeable.
