# v101 Case3 consumer-native full-A experiment

## Hypothesis

The Case2 consumer-native A prepack removes address/layout work from the Step1 consumer. Applying it to Case3 should help, but splitting its producer around Gate0 duplicates loop/control overhead. A single direct producer may retain native-layout savings and exceed the 1.2% candidate gate.

## Independent variable

Only official Case3 changes from v095 behavior:

- tiled input workspace: row-major K-tile to consumer-native per-thread storage;
- A producer: four direct native vectors before Gate0;
- v095 `up_logits` pitch, Step1 B ordering, Step2, grid, MMA count, and arithmetic remain unchanged.

## Evidence

- Static OJ source validation: PASS.
- Generated-device validation for all official cases: PASS.
- Full padded Case3 correctness: PASS.
- Seven-round Case3 median: `-2.627427%` versus v095.
- mcTracer Step1 median: `-5.148270%`; total GPU span median: `-3.050583%`.
- Case1/Case2 generated code: byte-identical to v095.

## Status

Qualified local candidate, awaiting external OJ. It is not yet the formal global SOTA.
