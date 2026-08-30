# exact-v203 Case1 physical Step1 mapping hypothesis

- Parent: `v203_case23_parallel_rank_builder_sc-16g`, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case1 on MetaX C500 sc-16g.
- Atomic mechanism: index the existing mixed M128N128/M192N64 Step1 grid by the 24 physical padded M128 blocks. A short expert owns one physical slot; the two slots of a long expert encode its two N64 output halves. Use the existing physical-expert M64 prepack so both long slots reuse one M192 native input panel.
- Invariants: 1536 Step1 CTAs, 6144 Step1 waves, Gate/Up bytes, MMA count, output coverage, and synchronous public TileLang primitives remain unchanged.
- Expected gain: eliminate the Case1 rank launch and separate short/long prepack launches, while removing `expert_rank` indirection from the main mapping. Prediction is at least 1.2% direct-parent end-to-end improvement.
- Falsifier: OJ-source or full correctness failure; Step1 resource/ISA cliff; or direct-parent paired improvement below 1.2%.
- First-run implementation audit: the dormant physical path originally rebuilt `expert_rank` inside prepack. With physical Step1 mapping the host aliases the unused rank argument to `group_sizes`, so that write corrupts metadata. The trial explicitly suppresses this obsolete rank builder; this is part of the same physical-mapping mechanism, not a second performance tweak.
- Safety: no async copy, direct MXMACA builtin, source injection, disabled checker, preprocessing outside the scored call, or cross-call cache.
