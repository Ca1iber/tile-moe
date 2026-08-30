# v166 Case2/3 tail-control and fresh-profile closure (sc-16g)

## Verdict

No candidate qualifies.  Every runnable probe passed the OJ source validator and
full valid-row correctness, but the best direct result versus exact external-OJ
SOTA v166 was only `-0.2837%`, below the mandatory `1.2%` local promotion floor.
The probes are rejected/diagnostic only and must not be stacked with other
sub-floor mechanisms.

## Identity and environment

- Date: 2026-08-30 (Asia/Shanghai)
- Branch / starting commit: `dorm` / `32660a57`
- Parent submission: `race_tests/moe/restart-submission/v166_gateup_pairload_sc-16g/submission.py`
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- External OJ SOTA: display `[84,83,83]`, ratios `[0.848108,0.839953,0.839162]`, latency `[2.015,3.546,6.876] ms`
- Device: MetaX C500, sGPU minor 007 / id 3, compute 25%, 16 GiB, idle at collection
- Software: KMD 3.8.30, MACA 3.7.1.5, BIOS 1.33.5.0, mx-smi 2.3.1
- Compliance: TileLang primitives only; no async copy, source injection, direct MXMACA builtin, cached results, out-of-run preprocessing, or disabled race checker

## Fresh exact-v166 mcProfiler baseline

The perfcount channel was operational after the container restart.  The two core
captures agree with the prior v166 evidence and establish a stable current
baseline.

| Case2 stage | Symbol | Total cycles | Workgroups / waves | Avg wave life | MMA / MTE / STE duty | WSM stall | VLS pipeline stall |
|---|---|---:|---:|---:|---:|---:|---:|
| Step1 | `kernel_kernel_3` | 6,861.24 K | 768 / 3,072 | 145,576.58 | 63.08% / 6.49% / 2.56% | 14,878,166 | 82,928,153 |
| Step2 | `kernel_kernel_4` | 5,812.39 K | 1,344 / 5,376 | 47,903.89 | 54.64% / 8.83% / 5.44% | 7,388,273 | 28,483,103 |

The exact resource tier remains Step1 `226 MT / 46 ST / 2 waves` and Step2
`220 MT / 56 ST / 2 waves`.  This confirms that both stages are still limited by
operand issue/feed and long wave lifetime rather than a transient profiler or
GPU-maintenance failure.

## Probe results

Positive change means regression.  All screens use the project-native same-process
device-event AB/BA harness, exact official distributions, warmup 10, repeat 20,
one screen round.  A sub-floor screen terminates the probe without a formal long
verdict.

| Probe | Atomic mechanism | Case | Correctness | Direct change vs v166 | Decision |
|---|---|---:|---|---:|---|
| short Step2 unpredicated native reads | remove `intermediate_row < actual_rows` only from the short/generic consumer-native Step2 loads | 2 | PASS | `+0.2468%` | reject |
| same | same | 3 | PASS | `+0.1818%` | reject |
| long Step2 unpredicated native reads | remove `long_i < group_size` from unified M192 A loads only | 2 | PASS | `-0.1060%` | noise; reproduces archived v175 |
| hybrid wave-MMA control removal | execute Step1/Step2 wave MMA unconditionally for Case2/3 while retaining all input/output predicates | 2 | PASS | `-0.2837%` | sub-floor diagnostic |

The short-read result reproduces the older all-case unpredicated-read conclusion:
extra padding traffic cancels branch removal for the long shapes.  The long-read
result exactly reproduces v175, providing an independent environment sanity check.

## New materialization evidence

The hybrid wave-MMA probe is a new mechanism.  Official short experts have 100
rows, so all four M32 wave starts (`0/32/64/96`) are live; official long experts
have 184 rows, so all four M48 wave starts (`0/48/96/144`) are live.  Removing the
wave-level tail condition therefore adds no official-shape MMA work or bytes.

Case2 generated code proves the change materialized:

- generated device source: `64,475 -> 63,703` bytes;
- Step1 resources: `226/46 -> 226/44` MT/ST, still 2 waves;
- Step2 resources: `220/56 -> 220/54` MT/ST, still 2 waves;
- MMA sites remain 13, `__syncthreads` sites remain 17;
- async and barrier-wait sites remain zero.

Despite deleting control and two ST registers in each hot stage, the endpoint gain
is only `0.2837%`.  This is direct evidence that remaining Case2/3 headroom is not
primarily the wave-tail branch.  Do not combine it with the archived 0.9% prepack
or 0.65% slot-mapping signals under the 1.2% atomic-candidate rule.

## Decision and restore

- No version number, experiment branch, or submission directory is created.
- `dorm` and `restart-submission/SOTA.json` remain on exact v166.
- Exact v166 submission SHA-256 remains unchanged.
- Future normal-track work needs a mechanism that changes compulsory operand
  transport/reuse or a newly exposed OJ-compliant hardware primitive; more tail,
  predicate, store, or synchronous issue-order micro-edits are closed.
