# v141_step2_native_vector_pair_interleave_sc-16g

## Hypothesis

v110 Step2 half-interleave lets only two of four 64-thread waves issue native `up_logits` loads during each producer stage. Repartitioning the same 8 KiB stage payload over all four waves may create more simultaneous global-memory requests and hide native-A latency behind the split Down-weight producer.

## Atomic delta

At both hot-loop native-A producer sites:

- parent: `producer_stage == thread // 128`, then four 128-bit vectors per active thread;
- candidate: two vectors per thread selected by `producer_stage * 2 + pair`, with all 256 threads active.

The initial tile load is unchanged. Logical traffic, global addresses, shared destinations, MFMA operations, barriers, grids and output arithmetic are unchanged.

## Safety and compliance

- Parent is exact external-OJ-AC v110.
- Candidate source SHA-256: `cd69d357e951ff800ffa0e67a2075b3a61c663c945a5f0d1daebbc5a88620159`.
- OJ import/TileLang-only validation: PASS.
- No async copy, injected source, cached result, arithmetic shortcut or expanded API surface.

## Protocol

Three official cases were checked in one process against exact v110. Each module compiled independently, full output correctness used `rtol=atol=1e-2`, then three AB/BA rounds used `warmup=10`, `repeat=80` and device events.

## Verdict

Rejected. All cases are correct but consistently slower. Median changes are `+0.602% / +0.888% / +0.940%`; the candidate gate fails before mcTracer or mcProfiler. No `restart-submission` is created.
