# v085 hypothesis: deconflict the Step2 `up_logits` row stride

## Observed evidence

- v084 writes and then rereads `up_logits` with physical FP16 row strides of 16,384 bytes in Case1 and 4,096 bytes in Cases2/3.
- A physically compacted valid-row workspace did not improve performance, so padded holes were not the important HBM traffic source.
- Step2 dominates the actionable part of the remaining latency, and adjacent Step2 load-order experiments showed that its operand-feed timing is sensitive to address order.

## Verified bottleneck

The exact cache/bank mapping function is not exposed, but the power-of-two leading dimension is a plausible source of repeated set/bank aliases while Step2 consumes multiple rows concurrently.

## Current hypothesis

Adding a small non-power-of-two pitch to `up_logits` will distribute consecutive rows over different cache/bank mappings. The logical tensor extent, arithmetic, CTA grid and useful bytes remain unchanged.

## Proposed mechanism

Allocate and compile `up_logits` with `intermediate + 128` FP16 columns. The extra 128 columns are never read or written logically; they add 256 bytes to the physical row pitch only.

## Predicted metric changes

- No extra kernel or launch.
- Same MMA count, logical global access sites and synchronization structure.
- Same 2-wave occupancy class with no spill.
- Step1 changes little; Step2 duration falls materially.
- End-to-end latency improves by at least the 1.2% local candidate threshold on all three OJ shapes.

## Falsifying result

- Improvement disappears under repeated AB/BA order reversal;
- Step2 trace does not improve;
- a 512-byte pitch perturbation behaves the same as 64/128/256/384-byte perturbations, contradicting a periodic mapping effect;
- any official shape loses correctness, materializes async copy, spills, or drops below 2 waves.

## Correctness and resource risks

- Workspace grows by 0.75 MiB / 1.5 MiB / 3 MiB for Cases1/2/3.
- Shape-dependent address arithmetic may increase register pressure.
- Padding rows in the output must still be zeroed and checked in full, not only valid rows.

## Outcome

Local evidence supports the hypothesis: +256-byte pitch gives stable 4.3%--4.6% end-to-end gains, while the Case3 Step2 trace improves 12.75% median. The 64/128/256/384/512-byte sweep is periodic and the 512-byte perturbation returns to baseline, which strongly supports—but does not prove without hardware counters—a cache/bank mapping conflict. External OJ performance remains pending, so the version is archived as `inconclusive` for SOTA promotion.
