# v104 hypothesis: wave-specialized Gate/Up weight producers

## Parent

- Formal SOTA: `v102_case1_case3_consumer_native_full_a_sc-16g`.
- Parent SHA-256: `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.
- External OJ: AC; Case3 7.690 ms.

## Evidence motivating the trial

The fresh v102 Case3 Step1 profile reports 44.36% AP MTE duty, 24.47% AP MMA duty, and four VL1 partition stalls summing to about 1.329 billion cycles. The equivalent archived v59 profile summed to about 0.932 billion cycles. v102 reduced global read bytes from 40.524 GB to 38.065 GB in profiler replay, so the remaining issue looked more like partition/request scheduling than a failure to vectorize: generated weight copies are already `uint4`/128-bit.

## Single variable

Only official Case3 changes. Each 64-thread wave owns one 64x64 FP16 weight half: Gate-low, Up-low, Gate-high, or Up-high. A single existing CTA barrier still protects all four shared-memory regions. A prefetch, MMA order, accumulation order, output stores, Step2, grids, tile sizes, and logical bytes are unchanged.

## Expected result

If same-address-stream synchronization was driving VL1 partition stalls, independent Gate/Up waves should improve Step1 latency without an occupancy loss.

## Falsifier and result

The candidate must beat v102 by at least 1.2% under paired timing. It instead regressed by a stable 30.959% median. The mechanism raised Step1 MT registers from 226 to 255 and forced each wave through eight consecutive vector-copy iterations for one region. This closes fixed wave ownership as a latency-hiding mechanism for the current synchronous producer path.
