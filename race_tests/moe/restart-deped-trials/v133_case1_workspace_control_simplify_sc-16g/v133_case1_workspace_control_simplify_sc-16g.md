# v133 Case1 workspace control simplify — rejected

- Parent: external-OJ-AC v110, SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- Candidate: `df71cd0f34a21bf9a5dd7ed725c8c184606ad875d7d2f051b8417b247d05d8be`
- Mechanism: combine Case1 Step1 unpredicated native workspace writes with Step2 expert-grid `by` range assumptions.
- Correctness: PASS on Case1 valid rows; Cases2/3 generated C++ byte-identical to v110.
- Strict AB/BA: 5 rounds, warmup 20, repeat 50; median `-0.793638%`, mean `-0.823805%`, population stdev `0.113785%`.
- Verdict: reject below the 1.2% candidate gate; no profiler, no `restart-submission`, no external OJ.
- Reuse guidance: the two individually positive control simplifications overlap substantially. Do not retry their simple combination unless another structural change alters the producer/consumer schedule or resource regime.
