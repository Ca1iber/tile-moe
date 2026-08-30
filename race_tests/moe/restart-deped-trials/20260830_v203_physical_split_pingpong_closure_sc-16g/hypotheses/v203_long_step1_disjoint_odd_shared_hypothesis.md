# exact-v203 long-Step1 disjoint odd-shared hypothesis

- Parent: exact v203, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: hybrid M192N64 long-Step1 path, first screened on official Case1.
- Atomic mechanism: keep the parent's even Gate/Up issue order and first consumer barrier unchanged. After even MMA, stage odd Gate/Up into the two unused 64-row quarters of the already allocated 256x64 shared tile. Because odd writes are disjoint from all even LDS addresses, omit only the pre-overwrite barrier; retain the odd consumer barrier and loop-tail hand-off.
- Invariants: CTA/waves, shared bytes, fragments, register intent, global bytes, MMA count, precision, and epilogue are unchanged. One barrier per K pair is removed without delaying even MMA.
- Prediction: lower long-Step1 synchronization cost yields at least 1.2% direct-parent Case1 improvement.
- Falsifier: OJ-source/correctness failure, codegen resource cliff, or paired improvement below 1.2%.
- Safety: synchronous public TileLang only; no async copy, builtin escape, injection, disabled checker, cache, or out-of-score preprocessing.
