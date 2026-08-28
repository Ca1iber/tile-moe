# v154 hypothesis card

- Observed evidence: v153 proved that one mixed M-slot Step2 grid can reuse the existing M192xN128 long path while sharing a single 32-KiB Down buffer. Case3 still launched separate short and long Step2 kernels although it has the same 32 short / 32 long expert split.
- Verified bottleneck: Case3 parent mcTracer attributed 1.042048 ms to short Step2 and 1.360000 ms to long Step2, 2.402048 ms in total.
- Hypothesis: represent the 96 padded M slots directly in one 28x96 grid. A short slot keeps M128xN256; the two slots of one long expert compute complementary N128 halves over the same M192 rows.
- Mechanism: disable the separate dynamic M192 Step2 launch for exact official Case3 and reuse v153's unified mixed-slot branch. CTA count and padded MMA work stay unchanged.
- Predicted changes: six launches become five, Step2 time and VL1 partition stalls fall, while global weight bytes and resource occupancy remain approximately unchanged.
- Falsifying result: correctness failure, resource occupancy loss, or paired 5x20 improvement below 1.2%.
- Risks: long-slot N-half mapping, native up-logit row ownership, padded tail zeroing, and mixed branch code size.
