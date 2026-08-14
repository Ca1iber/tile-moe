# v049 Roofline notes

- Case3 Step2 declared schedule work is 360,777,252,864 FLOPs and declared traffic is 4,405,037,056 bytes, so fixed-schedule AI is 81.9011 FLOP/B.
- Paired mcTracer Step2 medians are 3.401472 ms for v048 and 3.329024 ms for v049, giving 106.0650 and 108.3733 TFLOP/s.
- Equivalent declared traffic rises from 1295.04 to 1323.22 GB/s. This comparison keeps scheduled bytes fixed and does not claim that every scheduled byte reaches HBM.
- AI 81.9 is below both the 260.0 FLOP/B physical-theory ridge and the 342.3 FLOP/B conservative measured ridge, so this Step2 schedule is memory-bound under both models.
- Wave-matched counters show unchanged memory/L2 instruction counts but L2 hit rate +3.365 percentage points, global-read bytes -5.395%, and DNOC read requests -4.047%, supporting improved down-weight cache reuse.
