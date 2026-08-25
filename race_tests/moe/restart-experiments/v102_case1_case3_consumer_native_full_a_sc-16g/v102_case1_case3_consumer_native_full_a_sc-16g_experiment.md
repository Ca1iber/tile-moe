# v102 Case1 consumer-native full-A experiment

## Hypothesis

v101 proved that consumer-native full-A removes old row-major A-feed overhead in Case3. Case1 also spends roughly 63% of its GPU span in Step1 and still uses the old feed, so the same mapping should produce a material independent gain.

## Independent variable

Only official Case1 changes from v101: enable the existing consumer-native workspace/bridge and one complete direct A producer before Gate0. Case2 and Case3 switches are untouched.

## Evidence

- Full padded Case1 correctness: PASS.
- OJ source plus all three generated cases: PASS.
- Seven-round Case1 median: `-3.565378%` versus v101.
- mcTracer Step1 median: `-6.496794%`; GPU span median: `-4.355180%`.
- Case2/Case3 generated device code: byte-identical to v101.

## Status

Qualified local candidate combining the v102 Case1 gain with the inherited v101 Case3 gain; awaiting external OJ.
