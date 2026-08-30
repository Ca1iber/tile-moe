# exact-v203 Case1 split paired-K Step2 hypothesis

- Parent: exact v203 Case1, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Prior signal: unified long-only batch-A paired-K is strictly correct and improves direct-parent Case1 by `0.9794%`; Step2 average wave life falls `4.88%`, VLS stall `21.93%`, and WSM stall `32.35%`, but unified kernel MT rises `202 -> 218` for both short and long CTAs.
- Atomic mechanism: preserve the same 64 short and 128 long CTA coverage but launch them as separate kernels. The short M128N256 kernel retains the parent resource body. Only the long M192N128 kernel uses batch-A paired-K and its two existing 16-KiB Down shared halves.
- Prediction: resource isolation recovers at least the missing 0.22 percentage point after paying one extra launch, producing at least 1.2% direct-parent end-to-end improvement.
- Falsifier: OJ-source/correctness failure, short/long resource cliff, or paired screen below 1.2%.
- Safety: synchronous public TileLang only; no async copy, injection, direct MXMACA builtin, disabled checker, cached contents, or out-of-score preprocessing.
