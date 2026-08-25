# v104 Case3 wave-split Gate/Up weight experiment

## Observed evidence

Fresh post-OJ mcProfiler data for v102 Case3 Step1 shows that, relative to v59, VLS pipeline stalls fell by about 28% and AP active cycles fell by about 9%, while aggregate VL1-partition stalls rose by about 43%. Generated v102 code already uses 128-bit vector loads for all Gate/Up global-to-shared copies.

## Hypothesis and mechanism

Assign the four CTA waves to Gate-low, Up-low, Gate-high, and Up-high respectively. This keeps logical bytes, MMA operations, shared-memory footprint, barriers, tile sizes, and grids unchanged, while trying to keep independent Gate and Up address streams in flight concurrently.

## Falsifier

Reject unless strict paired Case3 end-to-end latency improves by at least 1.2%, with correctness and OJ source/generated-code validation passing.

## Evidence

- Source plus all three generated-device OJ scans: PASS.
- Full padded-output Case3 correctness: PASS, `rtol=atol=1e-2`.
- Case1/2 generated sources are byte-identical to v102; only Case3 changes.
- Case3 Step1 resources changed from 226 to 255 MT registers/thread, while static occupancy remained 2 waves/PEU and no private allocation appeared.
- Short AB/BA Case3 changes: `+30.959460%`, `+30.836032%`, `+31.030079%`; median `+30.959460%` (positive is slower).

## Status

Rejected as a large regression. The fixed wave ownership lengthens each wave's dependent producer chain and loses the efficient four-wave cooperative bulk copy. No external OJ submission and no `restart-submission` directory.
