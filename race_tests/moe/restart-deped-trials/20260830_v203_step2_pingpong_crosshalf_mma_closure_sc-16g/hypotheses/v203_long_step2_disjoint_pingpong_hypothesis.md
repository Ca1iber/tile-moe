# exact-v203 Case2/3 long-Step2 disjoint shared ping-pong hypothesis

- Parent: exact v203, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case2/3 unified long M192N128 Step2 branch. Case1 stays on its exact parent path.
- Evidence: the unified kernel allocates a 256x64 FP16 Down shared tile for short M128N256, while long uses only one 128x64 half. The incumbent long loop synchronizes after MMA before overwriting the same half. v189's register-prefetch failed because it added a 32-element local buffer and explicit register-to-shared movement; this trial adds neither.
- Atomic mechanism: pair consecutive K64 stages. Even Down writes half0 and is consumed; odd Down then writes disjoint half1 and is consumed with the same overwritten A fragment. At the pair boundary, next even writes half0 while previous odd only reads half1. Existing consumer barriers provide the rendezvous, so all overwrite/tail barriers disappear.
- Invariants: global bytes, shared allocation, fragments, local buffers, CTA/waves, MMA count, precision, output and epilogue are unchanged. Only shared addresses and barrier placement change.
- Prediction: long-Step2 latency reduction improves Case2 and Case3 end to end by at least 1.2%.
- Falsifier: OJ-source/correctness failure, resource cliff, or paired improvement below 1.2%.
- Safety: synchronous public TileLang only; no async copy, direct MXMACA builtin, injection, disabled checker, cache, or out-of-score preprocessing.
