# v018 Step1 input prefetch evidence report

## Verdict

- Run type: lowering/resource gate, paired OJ, paired mcTracer, final ISA, targeted mcProfiler, official benchmark.
- Decision: accepted and installed as current best.
- One-line cause: continuous register ping-pong issues the next A tile before the current MMA without changing the grid, shared-memory footprint, static occupancy, or Step2.

## Benchmark authority

- Strict three-pair OJ Case3: `10.624780 -> 10.331136 ms`, median paired change `-2.764%`; all three pairs win.
- Case1/2 remain unchanged at `-0.027%` and `-0.041%` median paired change.
- All samples pass with maximum absolute error `0.001953125`.
- Installed-main OJ: `3.074637 / 5.414436 / 10.334513 ms`, all PASS.
- Official functional tests: 2/2 PASS. Official performance tests complete at `80.444326 / 25.547507 ms`.

## Causal evidence

- Paired mcTracer Case3 Step1 median change: `-4.393%`.
- Step2 median change: `+0.123%` (unchanged).
- Device-span median change: `-2.913%`.
- Grid and dynamic shared stay `16x96` and 32 KiB for Step1; Step2 remains identical.

## Resource and codegen gate

- Step1 resources: `198 MT / 28 ST / 2 waves -> 226 MT / 52 ST / 2 waves`.
- Zero stack frame, zero private instructions, zero spill annotations.
- Static MMA and shared operations remain 256 and 64/16. Code grows only 360 bytes.
- Generated C++ proves odd and next-even A loads occur before the preceding MMA consumers complete; the final loop iteration skips the no-consumer barrier.

## Counter boundary

mcProfiler replay is retained as directional evidence, not elapsed-time authority. It reports WG-stage latency `-4.093%`, wave life `-0.638%`, AP active `-0.825%`, MMA/MTE duty slightly higher, and no private traffic. Increased global-read/VLS-stall replay totals are explicitly quarantined from runtime claims because replay aggregation and earlier in-flight issue do not map directly to wall time.

## Roofline

The schedule-implied Case3 Step1 arithmetic intensity remains `84.828 FLOP/B`, so the classification remains HBM-bound under both 1843.2 GB/s physical and 1400 GB/s conservative sc-16g roofs. Paired mcTracer throughput rises from `101.901` to `106.582 TFLOP/s`, increasing the conservative-roof efficiency from `85.80%` to `89.75%` without changing arithmetic intensity.

## Source identity

- Parent v013 SHA-256: `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
- Accepted v018/main SHA-256: `f856ab903980f63f71a92151635ec94b2d7e81f29f93c3d6d53eea136efeda7b`.
