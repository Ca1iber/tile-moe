# v019 Step1 input ping-pong 32e evidence report

## Verdict

- Decision: accepted and installed as current best.
- Code delta: one schedule threshold, `n_routed_experts >= 64 -> >= 32`.
- Case2 strict OJ median change: `-1.171%`, with all three pairs winning.
- Paired mcTracer Step1 median change: `-1.657%`; Step2 `-0.014%`.
- All OJ and official functional correctness checks pass.

## Resource safety

Case2 Step1 moves from `198 MT / 28 ST` to `226 MT / 52 ST`, retains two waves/PEU and 32 KiB dynamic shared, and has zero compiler stack, ISA private operations, spill annotations, and mcTracer private memory. Static MMA remains 256 and Step2 is unchanged.

## Control groups

Case1 and Case3 compile identical parent/candidate kernels and show only `+0.103%` and `+0.045%` median paired drift. The Case2-only `-1.171%` signal therefore cannot be explained by common environment drift.

## Tool boundary

The targeted mcProfiler candidate replay is quarantined because achieved/dispatched waves disagree 1x/2x and several totals contradict elapsed-time/resource evidence by orders of magnitude. Raw data and the machine-readable quarantine summary are archived; no replay total is used in the acceptance decision.

## Roofline

Schedule-implied Case2 Step1 AI remains `84.828 FLOP/B`. Paired mcTracer throughput increases from `100.656` to `102.256 TFLOP/s`; efficiency against the conservative 1400 GB/s line rises from `84.76%` to `86.10%`. Classification remains HBM-bound.

## Source identity

- Parent v018: `f856ab903980f63f71a92151635ec94b2d7e81f29f93c3d6d53eea136efeda7b`.
- Accepted v019/main: `35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0`.
