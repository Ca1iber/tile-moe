# v103 Case3 Gate/Up half-load interleave experiment

## Observed evidence

Fresh v102 Case3 mcTracer measured about 4.73 ms in Step1 and 2.64 ms in Step2, with only about 0.003 ms between the two kernels. Generated v102 Case3 code issued half-weight loads in `Gate0 -> Gate1 -> Up0 -> Up1` order.

## Hypothesis and mechanism

After consumer-native A moved entirely before Gate0, alternating independent Gate and Up streams as `Gate0 -> Up0 -> Gate1 -> Up1` might restore memory-level overlap. Only Case3 changes; Case1/2, grids, resources, MMA, barriers, Step2, arithmetic, and output semantics remain unchanged.

## Falsifier

Reject unless strict paired Case3 end-to-end latency improves by at least 1.2% and Step1 evidence moves consistently.

## Evidence

- Source and all three generated-device OJ scans: PASS.
- Full padded-output Case3 correctness: PASS, `rtol=atol=1e-2`.
- Case1 and Case2 generated sources: byte-identical to v102.
- Case3 generated source: changed and shows `Gate0 -> Up0 -> Gate1 -> Up1`.
- Case3 resources: unchanged at 226 MT registers/thread, 42 ST registers, 2 waves/PEU; no private allocation.
- Three AB/BA screen changes: `-0.053771%`, `-0.267891%`, `-0.148993%`; median `-0.148993%`.

## Status

Rejected as noise-level. The intended code-generation change materialized, but it did not reach the 1.2% candidate threshold. No external OJ submission and no `restart-submission` directory.
