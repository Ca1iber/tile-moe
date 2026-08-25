# v137 Step1 valid-row SiLU predicate experiment

## Objective

Test whether avoiding Step1 SiLU/`exp2` work on padding rows can clear the 1.2% candidate gate while preserving v110's proven K-loop ordering, grids, native workspaces, and MMA layout.

## Change isolation

The only semantic scheduling change is moving the existing activation assignment into the existing `i < actual_rows` branch. No async copy, foreign-code injection, fast math, tile change, grid change, memory-layout change, or Step2 change is present.

For the official row distribution, each expert contributes either one 100-row block or a 128-row block plus a 56-row tail. Across the equally frequent 100/128/56 block classes, the change eliminates `(28 + 0 + 72) / (3 * 128) = 26.04%` of Step1 epilogue row activations.

## Result

Case1 correctness and OJ source/generated-code validation pass. Four alternating AB/BA rounds report candidate/parent changes of `-0.5191%`, `-0.4943%`, `-0.4462%`, and `-0.6428%`; mean improvement is `0.5256%` with `0.0725%` population standard deviation.

This is a repeatable real effect but is below the mandatory 1.2% gate. Cases2/3 and mcProfiler were intentionally not run after falsification. v137 is rejected and v110 remains SOTA.

