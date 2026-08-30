# v203 Case2/3 atomic rank-builder closure (sc-16g)

## Verdict

Rejected.  Replacing the designated producer CTA's per-expert stable prefix
scan with two CTA-local atomic counters preserves correctness but does not
improve the endpoint.  The refined static-index implementation measures
`-0.0321%` versus exact v203 on official Case2, which is noise and far below
the mandatory `1.2%` promotion floor.  A subsequent loop-free stable mapping
derived directly from padded offsets measures `+0.0299%`, independently
confirming that rank construction has no remaining endpoint leverage.

## Identity and hypothesis

- Parent: `v203_case23_parallel_rank_builder_sc-16g`
- Parent SHA-256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Mechanism: initialize two shared counters in the one designated producer
  CTA; every expert thread atomically claims a compact short or long rank and
  writes the existing rank table.  Short slots remain before long slots, and
  each long expert still owns two adjacent Step1 slots.
- Safety: normal TileLang `T.atomic_add` and CTA synchronization only; no async
  copy, direct MXMACA builtin, source injection, cached contents, disabled race
  checker, or out-of-run preprocessing.

## Evidence

Both implementations pass the OJ source validator and full valid-row Case2
correctness (`rtol=atol=1e-2`).  Positive change means regression.

| Probe | Atomic address form | Protocol | Change vs v203 | Decision |
|:--|:--|:--|--:|:--|
| initial | dynamic `rank_counters[is_long]` | 1x10 | `+0.3458%` | reject; compiler inserted index guards |
| refined | two static counter-index branches | 1x20 | `-0.0321%` | noise / reject |
| offset rank | `long_rank = padded_offset / 128 - expert_id` | 1x20 | `+0.0299%` | noise / reject |

Refined Case2 generated resources are producer `76 MT / 48 ST / 6 waves`,
Step1 `226 / 46 / 2`, and Step2 `220 / 56 / 2`.  Relative to v203, the producer
keeps the six-wave tier but rises from 74 to 76 MT registers and adds one CTA
barrier (`18` generated `__syncthreads` sites total).  The two GEMM kernels,
13 MMA sites, and all mathematical work are unchanged.

## Conclusion

The visible O(E^2) rank source is confined to one CTA and is not an endpoint
bottleneck.  Reducing it to O(E) atomic work cannot repay the extra shared
counter/barrier and leaves whole-operator time unchanged.  Do not number,
stack, submit, or promote this mechanism.  v203 remains the local OJ-pending
candidate; v166 remains the external-OJ SOTA.

The offset-rank refinement preserves v203's exact producer tier (`74 MT / 48
ST / 6 waves`) while deleting the prefix loop.  The unchanged endpoint proves
that neither the dynamic instruction count nor the loop's one-CTA execution is
visible after the existing unified-prepack improvement.
