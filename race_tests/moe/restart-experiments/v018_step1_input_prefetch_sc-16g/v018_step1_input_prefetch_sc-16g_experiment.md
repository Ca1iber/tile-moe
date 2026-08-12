# v018 Step1 input register ping-pong prefetch on sc-16g

## Hypothesis card

- v013 Case3 Step1 is `198 MT / 28 ST`, 32 KiB dynamic shared, no spill, two static waves/PEU, and about 7.08 ms in paired mcTracer.
- The weight path remains constrained by the single shared buffer, but each thread's input-A fragment is register-local and accounts for a repeated global-load stream.
- Mechanism: retain BN128 and the existing gate/up accumulators, add a second A fragment, and keep A tiles ping-ponging across K-pairs so that the next input tile is loaded before the current MMA retires.
- Prediction: Case3 Step1 should fall without changing Step2, grid, shared memory, MMA count, or static occupancy. Any spill, occupancy loss, or Case2 regression falsifies acceptance.

## Candidate A: odd-tile-only prefetch

- SHA-256: `45cc70e812210ff712e5d2387e807012a292c272639178e04c8d11cbaddd84e4`.
- It prefetches only each pair's odd A tile before the even MMA, but reloads the next even tile at the following pair boundary.
- Generated C++ confirms that the odd input load precedes the even MMA; Step1 resources are `226 MT / 28 ST / 2 waves`, with no stack frame.
- Strict 3-pair OJ: Case2 median `+1.033%` regression; Case3 median `-0.307%` improvement. All outputs pass with `max_abs=0.001953125`.
- Decision: reject. The partial overlap is too weak and damages Case2.

## Candidate B: full A ping-pong

- SHA-256: `f856ab903980f63f71a92151635ec94b2d7e81f29f93c3d6d53eea136efeda7b`.
- Tile 0 is loaded before the K-pair loop. Within each pair, odd A is loaded before even MMA; after odd weights are staged, the next pair's even A is loaded before odd MMA. The final no-consumer synchronization is omitted.
- The path is compile-time specialized to `n_routed_experts >= 64`; Cases 1/2 retain the v013 path.
- Generated C++ preserves the intended load/MMA order. Step1 is `226 MT / 52 ST / 2 waves`, 32 KiB dynamic shared, zero stack/private spill. Step2 remains `196 MT / 28 ST / 2 waves`.

## Correctness and performance

Protocol: three fresh-process AB/BA pairs, warmup 10, repeat 100.

- Case1 median paired change: `-0.027%` (unchanged).
- Case2 median paired change: `-0.041%` (unchanged).
- Case3 pair changes: `-2.596%`, `-2.764%`, `-2.882%`; median `-2.764%`.
- Case3 parent/candidate median times: `10.624780 -> 10.331136 ms`.
- All 18 samples pass; maximum absolute error is `0.001953125`.
- Installed-main confirmation: `3.074637 / 5.414436 / 10.334513 ms`, all PASS, and main SHA equals the accepted candidate SHA.
- Official `fusedmoe_benchmark.py`: both functional configurations pass; performance configurations complete at `80.444326` and `25.547507 ms`. These configurations have fewer than 64 experts, so they exercise the unchanged path.

## Phase attribution

Paired Case3 mcTracer gives Step1 changes `-5.445%`, `-4.393%`, and `-3.632%` (median `-4.393%`). Step2 median change is `+0.123%`, while device span median change is `-2.913%`. The gain is therefore localized to Step1 rather than launch order or Step2 drift.

## Lowering and ISA

- Parent Step1: 24,472 code bytes, 256 static MMA, 30 static global loads, 64/16 shared loads/stores, 3 static barrier sites, `198 MT / 28 ST / 2 waves`.
- Candidate Step1: 24,832 code bytes, 256 static MMA, 34 static global loads, 64/16 shared loads/stores, 4 static barrier sites, `226 MT / 52 ST / 2 waves`.
- Both have zero private loads/stores and zero spill annotations. Step2 ISA is byte/resource equivalent.
- The fourth static barrier site is the conditional loop-back synchronization. Dynamically, Candidate B skips the terminal no-consumer barrier; it does not add a synchronization per K tile.

## mcProfiler direction

Elapsed time authority remains paired OJ plus mcTracer. Targeted replay is directional only: average wave life `-0.638%`, AP active cycles `-0.825%`, average WG-stage latency `-4.093%`, MMA duty `24.87% -> 25.08%`, and MTE duty `38.19% -> 38.55%`. Both sources report zero private instructions, identical wave counts, and 100% non-conflicting shared access. Global-read replay `+1.927%` and VLS-pipeline-stall replay `+26.085%` are not converted into elapsed-time claims; earlier issue of in-flight loads can increase those replay aggregates while measured Step1 falls.

## Decision

Accept Candidate B as v018 and current best. The successful mechanism is continuous register ping-pong across pair boundaries, not merely allocating a second A fragment. Preserve the `experts >= 64` specialization because Candidate A showed that the same schedule is not profitable for Case2.
