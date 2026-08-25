# v103 Case3 Gate/Up half-load interleave hypothesis

## Observed evidence

- v102 is the external-OJ-verified SOTA, SHA-256 `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`.
- Fresh steady-state Case3 mcTracer places about 4.73 ms in Step1 and 2.64 ms in Step2; the Step1-to-Step2 gap is only about 0.003 ms.
- Case3 Step1 uses 226 registers/thread, 32 KiB dynamic shared memory, and no private allocation.
- Generated Case3 device code issues each K-tile's four half-weight producers in the order `Gate0 -> Gate1 -> Up0 -> Up1`.
- v101/v102 moved the entire consumer-native A producer before Gate0, so A no longer separates the two adjacent Gate loads as it did in the older interleaved schedule.

## Verified bottleneck

Case3 Step1 dominates the steady-state GPU span at roughly 62%; launch gaps and prepack are not the primary target.

## Current hypothesis

Alternating the independent Gate and Up base-address streams can restore memory-level overlap after the native-A producer was collapsed before Gate0. The proposed order is `Gate0 -> Up0 -> Gate1 -> Up1` for both even and odd K tiles.

## Proposed mechanism

Change only official Case3 (`num_experts == 64`) Step1 half-weight producer order. Preserve tile sizes, grids, MMA count/order, barriers, native-A workspace, tail pruning, Step2, arithmetic, and every other case's generated code.

## Predicted metric changes

- Case3 Step1 latency decreases by at least about 2%.
- End-to-end Case3 latency decreases by at least 1.2% in strict paired AB/BA runs.
- Registers, shared memory, grids, MMA count, and correctness remain unchanged.
- Case1 and Case2 generated device sources remain byte-identical to v102.

## Falsifying result

Reject if generated Case3 load order does not change as intended, correctness/OJ compliance fails, Case3 paired median improvement is below 1.2%, or Step1 timing fails to improve consistently.

## Correctness and resource risks

The four copies target disjoint Gate/Up shared-memory regions and retain the same barrier after all producers, so dependencies should be unchanged. Risks are backend rescheduling/canonicalization, worse HBM locality, or increased address/register liveness.
