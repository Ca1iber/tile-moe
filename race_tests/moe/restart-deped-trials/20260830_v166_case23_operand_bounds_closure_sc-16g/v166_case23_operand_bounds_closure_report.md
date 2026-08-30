# exact-v166 Case2/3 operand-window, bounds and reprofile closure (sc-16g)

## Verdict

No candidate qualifies. All runnable probes passed the OJ source validator and full same-process output comparison, but the best direct result versus exact external-OJ SOTA v166 was only `-0.4632%`, below the mandatory `1.2%` promotion floor. No sub-floor mechanism is stacked, numbered or copied to `restart-submission`.

## Identity and gate

- Date: 2026-08-30 (Asia/Shanghai)
- Branch / parent commit: `dorm` / `648a41ee64f532788d27f1c68a459a929f14fee3`
- Parent: `race_tests/moe/restart-submission/v166_gateup_pairload_sc-16g/submission.py`
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- External OJ SOTA: display `[84,83,83]`, ratios `[0.848108,0.839953,0.839162]`, latency `[2.015,3.546,6.876] ms`
- Device: MetaX C500 sc-16g, 25% compute, 16 GiB; MACA 3.7.1.5 / KMD 3.8.30
- Clean screen: same-process device-event ABBA, official Case2 distribution, warmup 10, repeat 20, one screening round
- Compliance: TileLang primitives and `T.tvm_mfma` only; no async copy, source injection, direct MXMACA builtin, cached result/content, disabled race checker, or out-of-run preprocessing

## Probe results

Positive change means regression. All correctness comparisons are bit-identical to exact v166 (`max_abs=0`, strict/OJ mismatch=0).

| Probe | Atomic mechanism | Case2 direct change | Codegen/resource evidence | Decision |
|:--|:--|--:|:--|:--|
| long Step2 two-read pair window | two N32 `fp16x8` Down reads before their shared stores | `+0.8880%` | materialized; Step2 remains `220 MT / 56 ST / 2 waves` | reject |
| long Step2 four-read window | all four N32 Down reads before any shared store | `-0.4632%` | materialized; same resource tier | sub-floor, reject |
| long Step2 Down-column range proof | prove original N128 Down panel lies inside hidden | `-0.2309%` | source `64,475 -> 63,447` bytes; Down fallback guards deleted; same resource tier | sub-floor, reject |
| long Step2 native-A block range proof | prove the long expert owns two valid native workspace blocks | `-0.3739%` | source `64,475 -> 62,701`; Step2 `220/56 -> 220/54`, still 2 waves | sub-floor, reject |
| hybrid Step1 consecutive-K32 dual B fragments | stage LDS K32-0/K32-1 before consecutive Gate, then Up MMA | `+0.3260%` | ordering materialized; Step1 `226 -> 232 MT`, 46 ST, still 2 waves | reject |

The four-read result proves a larger outstanding Down window is directionally better than a two-read window, but its whole-operator ceiling is still less than half the required gate. Bounds deletion also materializes cleanly but is not on the endpoint critical path. These sub-floor changes must not be combined under the atomic-candidate rule.

## Required exact-v166 Case3 reprofile

After three failed mechanisms, exact v166 was reprofiled before changing direction. Raw mcProfiler JSON is archived under `profiler/`.

| Case3 stage | Symbol | Total cycles | Workgroups / waves | Avg wave life | MMA / MTE / STE duty | WSM stall | VLS pipeline stall |
|:--|:--|--:|--:|--:|:--|--:|--:|
| Step1 | `kernel_kernel_3` | `9,026.0 K` | `1536 / 6144` | `144,914.91` | `63.94 / 6.58 / 2.59%` | `29,787,713` | `162,589,006` |
| Step2 | `kernel_kernel_4` | `7,238.37 K` | `2688 / 10752` | `48,085.41` | `55.92 / 9.04 / 5.57%` | `14,787,765` | `56,598,806` |

Compared with the fresh Case2 profile, Case3 doubles dispatched work but does not double total cycles. Step1 average wave life is essentially unchanged (`145,576.58 -> 144,914.91`), and Step2 average wave life is also stable (`47,903.89 -> 48,085.41`) while MMA duty slightly improves. Therefore Case3 does not have a new grid-scaling or occupancy collapse; more CTA/raster changes are not supported. Step1 remains the higher-leverage stage, but its global weight accesses are already guard-free and near compulsory traffic.

## Causal closure and next routing

1. Ordinary synchronous Down load-window expansion is closed for the unified long Step2 branch. More independent reads can recover part of the hand-staging overhead, but cannot reach the endpoint gate.
2. Long Step2 Down and native-A range guards are real generated control, yet deleting them and two ST registers yields only `0.23-0.37%`. Do not stack them with other sub-floor controls.
3. Consecutive-K32 dual B fragments are closed for hybrid Step1. The backend's original LDS/MMA interleave beats explicit LDS0/LDS1 batching despite unchanged occupancy.
4. Case3 scales normally from Case2 at both main stages. Future work must change Step1 compulsory operand transport/reuse or expose a genuinely new legal hardware primitive; padding, bounds, raster and ordinary synchronous issue-order edits are closed.
5. Exact v166 remains the only external-OJ SOTA. `dorm`, `SOTA.json` and `restart-submission` must remain unchanged.
