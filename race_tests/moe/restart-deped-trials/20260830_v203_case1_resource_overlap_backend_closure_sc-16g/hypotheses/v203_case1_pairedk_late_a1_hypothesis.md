# exact-v203 Case1 paired-K late-A1 hypothesis

- Parent: exact v203, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case1 on C500 sc-16g; Cases2/3 source paths stay unchanged.
- Existing evidence: paired-K batch-A reduces Step2 average wave life by 4.88%, VLS stalls by 21.93%, WSM stalls by 32.35%, and endpoint latency by 0.9794%, but raises Step2 resources from 202 MT to 218 MT because A0 and A1 are simultaneously live.

Hypothesis:
- Keep the two Down K64 panels, their batched global request window, and one consumer barrier.
- Consume all A0 MMA first, then overwrite the same 192x64 A fragment with A1 and consume the second Down half.
- This should retain most paired-Down stall reduction while removing the second A fragment and returning resources toward 202 MT.

Prediction and gate:
- OJ validator and full valid-row correctness must pass at rtol=atol=1e-2.
- Codegen must remove the extra A fragment and avoid spill; otherwise reject before timing.
- Direct exact-v203 endpoint improvement must reach at least 1.2%; a sub-floor result is archived, not stacked with prior probes.

Falsifiers:
- Late A1 exposes more global latency than A0 MMA can hide; resources remain near 218 MT; or the direct-parent screen fails the 1.2% floor.

Compliance:
- Public synchronous TileLang only; no async copy, source injection, direct MXMACA builtin, checker disabling, cross-call contents, or warmup preprocessing.
