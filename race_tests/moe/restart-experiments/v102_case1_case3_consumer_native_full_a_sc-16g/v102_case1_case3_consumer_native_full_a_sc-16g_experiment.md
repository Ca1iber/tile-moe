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

## External OJ result

- Candidate SHA-256: `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.
- Case latencies: `[2.332, 3.974, 7.690] ms`.
- Score ratios: `[0.828315, 0.824035, 0.823482]`.
- Display scores: `[82, 82, 82]`.
- Correctness: all three cases AC.
- Versus incumbent v092, no case regresses and all three score ratios improve.

## Status

Accepted as the new external-OJ-verified global SOTA and promoted to `restart-submission`.
