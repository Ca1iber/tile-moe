# v203 Case1 85-point threshold follow-up (sc-16g)

## Identity and decision rule

- Date: 2026-08-30.
- Exact parent: local OJ-ready `v203_case23_parallel_rank_builder_sc-16g`.
- Parent SHA-256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- External OJ SOTA remains v166: Case1 `2.015 ms`, ratio `0.848108`, display score `84`.
- The 85-point ratio boundary is approximately `1.9855 ms` under the same OJ baseline. A reliable candidate must still clear the owner's independent `1.2%` direct-parent promotion floor; a favorable clock sample is not an optimization.
- Safety: TileLang public primitives only; no async copy, source injection, direct MXMACA builtin, disabled race checker, warmup-only preprocessing, or cached contents.

The physical card was initially occupied by another sGPU (`97%`, `331--337 W`, P9). The early `8.81/10.50 ms` smoke timing was discarded. Formal screens below began only after `mx-smi` returned `0%`, `52 W`, P0 and no process in this sGPU.

## Probe A: interleave short and paired-long Case1 Step2 CTA layers

Hypothesis: Case1 Step2 has only 192 CTAs for 104 APs. Reordering its existing bijective grouped map from all-short-then-adjacent-long to `short -> long-half0 -> long-half1` per expert group could balance the second scheduling wave without changing CTA count, waves, MMA work, tensor bytes, or `(bx, by)` coverage.

- Source SHA-256: `a58361a805541a678db02080ec3aabfd19b082a036e98e43660401da9d08bd21`.
- OJ source validator: PASS.
- Full valid-row correctness at `rtol=atol=1e-2`: PASS.
- Codegen: Step2 remains `202 MT / 52 ST / 2 waves`; generated source grows only `58,224 -> 58,248` bytes; MMA and barrier site counts are unchanged.
- Clean 5x50 AB/BA changes: `+2.4592/+2.1922/+2.4307/+2.3423/+2.6977%`; mean `+2.4244%`, median `+2.4307%`, pstdev `0.1653 pp`.
- Verdict: stable regression. The incumbent all-short-first and adjacent-long ordering is active scheduling/cache optimization, not accidental order.

## Probe B: clamp-5 minimax degree-7 SiLU

Hypothesis: remove one FP32 Horner level from the degree-9 approximation. The archived coefficients had already passed the official OJ `rtol=atol=0.05` contract for Case2/3, so the probe applied the same polynomial to all official shapes and checked Case1 against the real OJ tolerance before timing.

- Source SHA-256: `878af2fe864088bdd622d6fb743187876d0b064e63f598a31fa8879568cf3bd8`.
- OJ source validator: PASS.
- Full padded Case1 output at official `rtol=atol=0.05`: PASS.
- Case1 3x20 AB/BA changes: `-0.8992/+0.1771/-0.1936%`; mean `-0.3052%`, median `-0.1936%`, pstdev `0.4464 pp`.
- Verdict: noise/sub-floor. The wider numerical-risk envelope buys no useful endpoint speed; do not submit it.

## Probe C: Case1 Step2 launch-swizzle panel sweep

Hypothesis: enable TileLang's public launch swizzle only for the exact grouped Case1 Step2 kernel. The computation, manual expert map, tensor bytes, CTA count and resources remain unchanged. Panel sizes `4/8/10/16` were screened within this single mechanism.

All sources pass strict `rtol=atol=1e-2` correctness. One-round 1x20 changes versus exact v203 were:

| Panel | Source SHA-256 | Change |
|---:|---|---:|
| 4 | `18392d6af1fd2e69c4a87997109d2ae267082ff861e03f37836eee3675aa77b9` | `-0.0626%` |
| 8 | `7abb14a09351fa223db3182487e45c6634e1510ab4756f758f6961a2cbb7b49d` | `-0.0058%` |
| 10 | `a4c4b1c22bbf74c11a07781dfd6482498be36d6f233db48541b1af9805fa3119` | `-0.4889%` |
| 16 | `df4c3d283a2cf01993836199549e31815fc7707853781f55e993a5c5ea233406` | `-0.1223%` |

Verdict: the best single short sample is still far below 1.2%, while the natural x-dimension panel 8 is exactly noise. Close the Case1 Step2 launch-raster family.

## Probe D: Case1 unified Step1 launch swizzle

Hypothesis: apply the same public launch-raster annotation only to the shared-weight short/long macros in the unified Case1 Step1 kernel, which represents about 59% of steady Case1 device span.

- Source SHA-256: `87e30532e3e83279bea7fab6ad6b9db8906c87360689c302036f6563b34a7399`.
- OJ source validator: PASS.
- Runtime: FAIL before correctness/timing. `kernel_kernel_3` raised `xnack(0x8)` / ATU address translation error and `mcErrorIllegalAddress`.
- Verdict: unsafe lowering/runtime interaction. Do not vary its panel parameter or promote any source from this family.

## Final decision

No probe reaches the independent 1.2% floor, so there is no new linear experiment, submission, SOTA ledger update, or `dorm` performance-head move.

The clean exact-v203 parent samples in this session are already `1.9824--1.9949 ms`, numerically straddling the estimated OJ 85-point boundary. That observation explains why a favorable external rerun may display 85, but it is environment margin rather than a code improvement. A reliable 85 requires a new mechanism with at least roughly 24 us clean local saving; the tested CTA-order, lower-degree SiLU, Step2 raster, and Step1 raster families do not provide it.
