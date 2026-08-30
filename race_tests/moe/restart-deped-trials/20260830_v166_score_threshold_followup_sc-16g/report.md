# v166 score-threshold follow-up (sc-16g)

## Scope and identity

- Parent: external-OJ SOTA `v166_gateup_pairload_sc-16g`.
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Target: MetaX C500 sc-16g, 25% compute, 16 GiB.
- Constraints: TileLang primitives only; no async copy, source injection, general MXMACA builtin, result caching, disabled race checker, or out-of-run preprocessing.
- Promotion floor: at least 1.2% paired whole-operator improvement relative to exact v166. Sub-floor changes are not stacked.

## External-OJ threshold audit

The accepted v166 result is:

| Case | Baseline ms | v166 ms | Ratio | Display |
|---:|---:|---:|---:|---:|
| 1 | 11.251 | 2.015 | 0.848108 | 84 |
| 2 | 18.610 | 3.546 | 0.839953 | 83 |
| 3 | 35.875 | 6.876 | 0.839162 | 83 |

With `ratio = baseline / (baseline + kernel)`, the next integer thresholds require:

| Case | Target ratio | Target kernel ms | Required reduction from OJ v166 |
|---:|---:|---:|---:|
| 1 | 0.85 | 1.985471 | 1.4655% |
| 2 | 0.84 | 3.544762 | 0.0349% |
| 3 | 0.84 | 6.833333 | 0.6205% |

The integer threshold does not waive the 1.2% local promotion floor.

## New Case1 mcProfiler evidence

Exact v166 was profiled with the repository `run_candidate_mcprofiler_subset.sh` flow. Perfcount was available on 2026-08-30.

| Metric | Step1 `kernel_kernel_3` | Step2 `kernel_kernel_4` |
|:--|--:|--:|
| Total cycles | 5,934.84 Kcycles | 5,315.74 Kcycles |
| Workgroups / waves | 1,536 / 6,144 | 192 / 768 |
| Average wave life | 42,780.18 | 194,270.26 |
| AP active cycles | 136,157,818 | 81,627,547 |
| MMA / MTE / STE duty | 61.61% / 9.79% / 3.27% | 61.66% / 9.43% / 1.63% |
| VLS pipeline stall | 45,224,460 | 14,314,386 |
| WSM stall | 8,512,851 | 6,038,704 |

Step1 and Step2 have comparable device-cycle spans, but Step2 has only 192 CTAs and a much longer per-wave lifetime. Further Case1 work should target Step2 latency/occupancy without increasing Down bytes. Historical N64 CTA splitting, BK128, dual-K fragments, synchronous Down ping-pong, and manual A/Down interleaving remain rejected controls.

## Probe A: degree-9 SiLU Estrin reassociation

Hypothesis: preserve the exact degree-9 coefficients and clamp while replacing the serial Horner chain with an Estrin-style dependency tree. This should shorten FP32 dependency depth without changing approximation degree or global traffic.

The OJ source validator and strict full padded-output check passed for all three cases (`rtol=atol=1e-2`). One-round AB/BA screens, warmup 5 and repeat 20:

| Case | Parent ms | Candidate ms | Change |
|---:|---:|---:|---:|
| 1 | 1.986803 | 1.988378 | +0.0792% |
| 2 | 3.448679 | 3.442278 | -0.1856% |
| 3 | 6.622029 | 6.626829 | +0.0725% |

Verdict: correct but noise-level and non-monotonic. The extra multiply needed by Estrin cancels any shorter dependency depth. Reject; no version number.

## Probe B: hoist routed-weight reads before Step2 MMA

Hypothesis: v166 reads routed weights after all Step2 MMA work, placing their latency on the epilogue tail. Hoisting the existing two/three-element local loads before the K loop could overlap their latency with MMA without changing buffers, bytes, math, grid, or barriers.

Case1 passed the OJ source validator and strict full padded-output check. One-round AB/BA screen, warmup 5 and repeat 20:

- Parent: `1.9856639862 ms`
- Candidate: `1.9845119476 ms`
- Change: `-0.0580%`

Verdict: pure noise and far below the 1.2% floor. The routed-weight read/multiply is not a visible endpoint bottleneck, consistent with the older Step1-fold control. Reject; Cases2/3 were not run after the Case1 falsifier.

## Decision

- No probe qualifies as a numbered candidate or submission.
- `dorm`, `restart-submission/SOTA.json`, and exact v166 bytes remain unchanged.
- Preserve the two exact probe sources, three Estrin screen JSON files, the routed-prefetch Case1 JSON, and the two Case1 core-profile JSON files as negative evidence.
