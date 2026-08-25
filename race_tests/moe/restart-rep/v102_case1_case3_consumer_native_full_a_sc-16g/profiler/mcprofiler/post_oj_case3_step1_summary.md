# v102 post-OJ Case3 Step1 mcProfiler summary

Target kernel: `kernel_kernel_1` (Step1), official Case3, exact v102 submission SHA-256 `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.

## Core counters

- AP MTE duty: 44.36%.
- AP MMA duty: 24.47%.
- AP active cycles: 7,198,285,257.
- ISU VLS pipeline stall: 1,594,784,543 cycles.
- VL1 partition stalls: 336,147,195 / 331,954,804 / 328,312,341 / 332,266,464 cycles; sum 1,328,680,804.
- Achieved/dispatched waves: 5,801,104 / 5,801,104.
- Private read/write instructions: zero.

## Memory counters

- Memory instructions: 245,428,718.
- VL1 hit: 87.38%.
- L2 hit: 41.66%.
- Global read: 38,065,288,576 bytes.
- Global write: 13,185,049,696 bytes.

## Same-shape comparison with archived v59

- VLS pipeline stall: 2,221,198,682 to 1,594,784,543 (`-28.20%`).
- AP active cycles: 7,937,945,908 to 7,198,285,257 (`-9.32%`).
- Global read: 40,524,338,496 to 38,065,288,576 bytes (`-6.07%`).
- Aggregate VL1 partition stall: 931,571,081 to 1,328,680,804 (`+42.63%`).
- MTE duty: 40.03% to 44.36%; MMA duty: 22.19% to 24.47%.

Interpretation: consumer-native A successfully reduces VLS/address-feed work and total active cycles, but the residual Step1 opportunity has moved toward VL1/weight-feed contention. Generated C++ already uses 128-bit vector weight loads, so further work should preserve cooperative vector copies while changing reuse or request phasing.
