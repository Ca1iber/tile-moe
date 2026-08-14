# v048 Roofline notes

- Case3 Step1 declared schedule work and bytes stay at 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B; only logical CTA order changes.
- Paired mcTracer Step1 medians are 7.207424 ms (v045) and 6.864640 ms (v048), giving 100.1127 and 105.1118 TFLOP/s.
- Equivalent declared traffic rises from 446.93 to 469.25 GB/s. This is a fixed-schedule comparison, not a claim that all bytes reach HBM.
- AI=224 is below the 260.0 and 342.3 FLOP/B ridge points implied by the 1843.2 and conservative 1400 GB/s bandwidth roofs, so the declared model remains memory-bound. The 460.8 GB/s linear-slice line is a sensitivity bound, not a measured roof, and the observed point exceeding it is evidence that bandwidth does not scale linearly with the 25% compute slice.
- Wave-matched mcProfiler period0 shows global reads -5.241%, DNOC reads -5.370%, AP active cycles -3.019%, MMA duty +3.113%, and MTE duty +51.727%, with zero private traffic. L2 hit rate decreases 0.785 percentage points, so the mechanism is reduced downstream traffic and better overlap rather than a universal hit-rate increase.
