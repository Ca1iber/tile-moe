# v034 hypothesis: async prefetch only for Step2 next-even B0

- Baseline: `v033_step2_case1_swap_shared_halves_sc-16g`.
- Observed bottleneck: Step2 still serializes the synchronous B0 copy with the current B1 MMA.
- Evidence: the K-tile isolation probe is bit-exact for every tested even tile (`k=0,2,4,64,126`) and fails only for odd tiles (`k=1,3,5,63,127`) when both B0 copy sites are asynchronous. The error map follows only the logical B0 output half. Manual 16-byte async-copy matrices pass for both shared halves, relevant global strides, and representative column offsets.
- Change: keep `row_batch_1` / odd-B0 synchronous; change only conditional `row_batch_3` / next-even-B0 to 16-byte async copy. Issue it before the current B1-odd MMA, then wait after that MMA and before the CTA reuse fence.
- Mechanism: overlap the next even B0 global-to-shared transfer with the independent current odd B1 tensor-core work without touching the proven-bad odd-B0 async path.
- Prediction: all three OJ cases remain correct; Step2 decreases, with the largest potential benefit in Case1 where v033's half-B pipeline is active.
- Falsification: any correctness error, a backend compile rejection, or a repeatable paired benchmark regression versus v033 closes the candidate.
- Risks: backend may serialize the async instruction anyway; token registers may raise pressure; the conditional last-iteration path must not wait on an unissued token.
