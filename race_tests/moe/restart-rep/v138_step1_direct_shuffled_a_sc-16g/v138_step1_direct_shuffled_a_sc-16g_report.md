# v138 Step1 direct shuffled-A report

## Verdict

- Status: `rejected_regression`.
- Parent/SOTA: v110, SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Candidate: v138, SHA256 `78caf19e226e9648d46280e6297e5f72b98f42f3ebd4efd8ba911aa15b440980`.
- Stable Case1 end-to-end latency change: **+19.2133% mean**, **+19.1743% median**, `0.2795%` population standard deviation.
- User gate: at least 1.2% speedup; therefore no three-case promotion, no mcProfiler/mcTracer campaign, and no `restart-submission` directory.

## Evidence

| Round | Order | v110 ms | v138 ms | candidate latency change |
|---:|:---:|---:|---:|---:|
| 1 | A→B | 2.182199 | 2.596055 | +18.9651% |
| 2 | B→A | 2.185013 | 2.598451 | +18.9215% |
| 3 | A→B | 2.182210 | 2.609557 | +19.5832% |
| 4 | B→A | 2.180062 | 2.602633 | +19.3834% |

- Correctness: Case1 full padded output PASS, `rtol=1e-2`, `atol=1e-2`.
- OJ validation: source PASS; captured Case1 generated device C++ PASS.
- Generated mechanism: two kernels, conditional `load_global_128`, `__shfl_sync(..., width=64)`, zero async-copy sites, and zero `barrier_arrive_and_wait` sites.
- Candidate resources: Step1 `240 MT / 44 ST / 2 waves`; Step2 `202 MT / 52 ST / 2 waves`.
- Parent resources: prepack `70 MT / 11 ST / 7 waves`; Step1 `226 MT / 42 ST / 2 waves`; Step2 `202 MT / 52 ST / 2 waves`.

## Interpretation

This falsifies the assumption that removing the native input round trip is automatically profitable. The row-major load itself is coalesced and correct, but the current TileLang/MXMACA lowering needs sixteen 32-bit cross-lane shuffles plus word splitting and scalar fragment writes per thread per K64 tile. Those costs sit directly in the dominant Step1 K-loop, while the removed prepack is a small one-time kernel.

The Case1 total grows by about 0.419 ms even after removing roughly 0.021 ms of prepack time. Conservatively, the replacement path adds about 0.440 ms relative to the original native-A feed. The 14 additional MT registers do not reduce the reported two-wave ceiling, so the dominant loss is dynamic instruction/feed latency rather than an occupancy cliff.

## Closed direction

Do not repeat the full 16x4, four-word, 32-bit `shfl_sync` transpose inside every Step1 K64 tile. A future retry requires a genuinely cheaper primitive—such as a verified vector/64-bit shuffle or backend-native MFMA-A row-major operand mapping—and must first prove the generated instruction reduction in a microprobe.

## Raw evidence

- Runtime scratch: `/root/moe_runs/v138_direct_shuffled_a/`.
- Paired benchmark: `benchmark/case1_abba.json`.
- Generated code/resources: `codegen/`.
- Parent profile context: `restart-rep/v130_v110_rebaseline_sc-16g/`.
- SOTA remains `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`.
