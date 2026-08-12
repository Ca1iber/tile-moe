# v019 full Step1 input ping-pong for 32 experts on sc-16g

## Hypothesis card

- v018 enables continuous register A-fragment ping-pong only for `n_routed_experts >= 64`; Case3 total OJ improved `2.764%` and Step1 improved `4.393%`.
- Case2 has the same K=7168 loop, BN128, per-CTA MMA count, and shared-memory footprint. The only uncertainty is whether its smaller 48-expert-block grid has enough work to hide the extra live register fragment.
- Candidate changes exactly one compile-time threshold from `>=64` to `>=32`; Case1 remains on the legacy path and Case3 remains on the accepted v018 path.
- Falsifier: Case2 does not win all paired runs, loses static occupancy, spills, or cannot localize its gain to Step1.

## Resource and lowering gate

- Parent Case2 Step1: `198 MT / 28 ST / 2 waves`, 32 KiB dynamic shared, zero stack/private.
- Candidate Case2 Step1: `226 MT / 52 ST / 2 waves`, 32 KiB dynamic shared, zero stack/private.
- Generated source matches v018's accepted full ping-pong structure. Step2 remains `196 MT / 28 ST / 2 waves`.

## Strict benchmark

Protocol: three fresh-process AB/BA pairs, warmup 10, repeat 100, all OJ cases.

- Case1 control median: `+0.103%`.
- Case2 pair changes: `-1.171%`, `-1.314%`, `-1.158%`; median `-1.171%`.
- Case2 parent/candidate median: `5.410640 -> 5.347996 ms`.
- Case3 control median: `+0.045%`.
- All samples pass with maximum absolute error `0.001953125`.
- Installed-main confirmation: `3.072535 / 5.348572 / 10.330012 ms`, all PASS; main SHA equals the candidate SHA.

## Phase attribution

Paired Case2 mcTracer reports Step1 changes `-0.984%`, `-2.576%`, and `-1.657%` (median `-1.657%`). Step2 median is `-0.014%` and device span median is `-1.169%`, matching the OJ result. Grid remains `16x48` for Step1 and `28x48` for Step2; dynamic shared remains 32 KiB and trace private memory remains zero.

## Final ISA

- Parent Step1: 24,472 code bytes, 256 MMA, 30 global loads, 64/16 shared loads/stores, 3 static barrier sites.
- Candidate Step1: 24,832 code bytes, 256 MMA, 34 global loads, 64/16 shared loads/stores, 4 static barrier sites.
- Both show zero private loads/stores and zero spill annotations. Step2 ISA/resources are equivalent.

## mcProfiler quarantine

The Case2 candidate replay is internally inconsistent: achieved waves are `2,863,304` while dispatched waves are `5,726,608`; AP active is reported `+2005%`, global writes `+2298%`, and WG latency `+3389%`, despite lower mcTracer time. It also reports 24 private read/write instructions, conflicting with zero-byte MXCC stack, zero ISA private operations, and zero mcTracer private memory. The raw capture is retained, but the entire candidate replay is quarantined from causal and elapsed-time claims.

## Official benchmark boundary

Both official functional configurations pass. Performance completes at `111.210703 / 25.657974 ms`; those 4/8-expert shapes compile the unchanged path. The first timing drifts sharply from v018's `80.444326 ms`, so official performance is recorded as completion evidence, not a v019 comparison.

## Decision

Accept v019. Full cross-pair register input prefetch is profitable for both 32- and 64-expert OJ shapes; enable it at `n_routed_experts >= 32`.
