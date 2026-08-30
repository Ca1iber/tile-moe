# exact-v203 long-Step1 disjoint shared ping-pong hypothesis

- Parent: exact v203, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Immediate control: disjoint odd-shared staging is strictly correct and gives a `-0.2992%` Case1 screen while removing the post-even overwrite barrier.
- Atomic refinement: also remove the loop-tail barrier on the active hybrid path. Previous odd MMA reads shared rows 64:128 and 192:256; next-pair even staging writes rows 0:64 and 128:192. They are disjoint, and the existing next-pair consumer barrier provides the required rendezvous before even LDS.
- Invariants: all tensor bytes, fragments, registers, shared allocation, CTA/waves, MMA count, precision, and epilogue remain unchanged. The target long path falls from four to two shared hand-offs per K pair without delaying even requests.
- Prediction: the full double-buffer schedule clears 1.2% direct-parent Case1 improvement.
- Falsifier: source/correctness failure, resource cliff, or paired improvement below 1.2%.
- Safety: synchronous public TileLang only; no async copy, builtin escape, injection, disabled checker, cache, or out-of-score preprocessing.
