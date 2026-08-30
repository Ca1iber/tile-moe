# exact-v203 long-Step1 two-K shared staging hypothesis

- Parent: exact v203, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official hybrid M192N64 long-Step1 path, first measured on Case1.
- Evidence: the mixed kernel allocates a 256x64 FP16 shared tile (32 KiB) for short M128N128 compatibility. A long N64 K64 stage occupies only Gate rows 0:64 and Up rows 128:192, leaving rows 64:128 and 192:256 idle. The long path already holds even/odd A fragments.
- Atomic mechanism: stage even and odd Gate/Up K64 panels into the four existing 64-row shared quarters before one barrier. Consume even with A-even, overwrite the dead A-even fragment with next-even input, then consume odd from the second shared quarters. Preserve the final hand-off barrier before the next pair.
- Invariants: CTA/waves, 32-KiB shared allocation, A fragment count, Gate/Up bytes, MMA count, precision, workspace, and epilogue remain unchanged. The intended change is two fewer shared hand-off barriers per K pair and a wider independent weight-request window.
- Prediction: long-Step1 and end-to-end Case1 improve at least 1.2% without a resource cliff.
- Falsifier: OJ-source/correctness failure, resource spill/cliff, or direct-parent paired improvement below 1.2%.
- Safety: synchronous public TileLang only; no async copy, direct MXMACA builtin, source injection, disabled checker, cached contents, or out-of-score preprocessing.
