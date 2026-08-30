# exact-v203 Case1 short-Step1 request-window closure (sc-16g)

## Identity

- Date: 2026-08-30.
- Starting branch/commit: `dorm` / `2216c2a5`.
- Exact parent: `v203_case23_parallel_rank_builder_sc-16g`.
- Parent SHA256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- External OJ SOTA remains v166, Case1 `2.015 ms`, ratio `0.848108`, display 84; estimated 85 boundary is about `1.9855 ms`.
- Promotion floor: at least 1.2% direct-parent paired end-to-end improvement; external OJ monotonic gate remains mandatory.
- Safety: public synchronous TileLang primitives only; no async copy, source injection, direct MXMACA builtin, disabled checker, warmup-only preprocessing, or cached contents.

## Fresh evidence and hypothesis

Exact-v203 Case1 Step1 memory profile reports:

- global read `1,090,915,520 B` versus `1,073,741,824 B` compulsory Gate+Up weights;
- global write `37,224,864 B`, exactly the valid FP16 workspace payload;
- DNOC average read latency `277.26 cycles`;
- L2C duty `23.70%`;
- VL1 partition stalls `11,222,679 / 11,497,938 / 10,967,569 / 11,346,616 cycles`.

The stage is therefore near compulsory global bytes but exposes request/FIFO latency. The incumbent short path intentionally preserves `Gate0 -> input0 -> Gate1 -> Up0 -> input1 -> Up1`; historical input batching regressed about 5.76%. The tested family kept both input positions and changed only global-load/shared-store issue windows.

## Trials

All three sources pass the OJ source validator and full official Case1 valid-row correctness at `rtol=atol=1e-2`. Timings are direct exact-v203 1x20 AB screens after warmup 5; negative is faster.

| Trial | Mechanism | Parent ms | Candidate ms | Change | Verdict |
|---|---|---:|---:|---:|---|
| cross-pair 2-request | pair each adjacent Gate1/Up0 vector load before its stores | 1.986061 | 1.981888 | -0.2101% | sub-floor |
| cross-pair 4-request | load Gate1/Up0 low+high vectors before all four stores | 1.989734 | 1.981952 | -0.3911% | sub-floor |
| edge-load pipeline | additionally keep Gate0/Up1 vectors live across the incumbent input request windows | 1.995162 | 2.000346 | +0.2598% | regression |

Exact source SHA256 values are respectively `688c615b8edc0aff38fd860dcd461b1bec93f486b909b13dad515a89957fc1ea`, `b723f2cb5bc8278532b5121edf18eea1e614937a6ce38d5d9c86925e6d02172e`, and `667e38304aec8ee1a64f4346c1f235e21f7fffab59687bd60be13d7bb2fe7559`.

## Causal conclusion

Increasing the local independent request window from two to four gives a small monotonic signal, consistent with the DNOC/VL1 evidence, but even the best screen is only 0.39% and cannot become a candidate. Extending vector lifetime across input work reverses the gain, showing that register/live-range and dependency cost overtakes any additional latency hiding. Ordinary short-path synchronous request-window reshuffling is closed; do not stack these sub-floor deltas.

Codegen/profiler collection for the candidates was intentionally stopped by the 1.2% early gate. The fresh exact-parent Step1 memory JSON is preserved as the selection evidence. No linear version, restart-submission directory, SOTA ledger update, or performance-head move is authorized.
