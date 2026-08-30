# Case1 short-Step1 cross-pair producer hypothesis

- Parent: exact v203, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case1 on C500 sc-16g; Cases2/3 must remain source-path unchanged.
- Fresh Step1 memory profile: global read 1,090,915,520 B versus 1,073,741,824 B compulsory Gate+Up weights; global write 37,224,864 B; DNOC read latency 277.26 cycles; L2 duty 23.70%; four VL1 partitions each stall about 11 M cycles.
- Bottleneck class: compulsory weight latency/request overlap, not redundant HBM traffic.
- Existing schedule: `Gate0 -> input0 -> Gate1 -> Up0 -> input1 -> Up1`. Historical batching of input or all four weight panels destroyed useful latency hiding, while v166 proved that two independent Gate/Up vector reads before their shared stores can help.
- New mechanism: retain the incumbent phase order exactly, but replace only the adjacent `Gate1` and `Up0` 64x64 copies in the short path with a cross-pair macro. For each of the two per-thread vectors, issue Gate1 and Up0 global vector loads before either shared store. This opens two independent memory requests without moving either input-preload segment, changing global bytes, CTA count, MMA count, barriers, or tensor layouts.
- Rejection tests: OJ source validator, full Case1 valid-row correctness at rtol=atol=1e-2, codegen/resource gate, 1x20 screen. Formal 5x50 only if screen has credible >=1.2% direct-parent upside.
- Safety: public synchronous TileLang only; no async copy, source injection, compiler builtin, disabled checker, preprocessing cache, or cross-run state.
