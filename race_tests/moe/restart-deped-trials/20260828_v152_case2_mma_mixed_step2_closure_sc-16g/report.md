# v152 Case2 paired-MMA and single-grid mixed-Step2 closure (sc-16g)

Status: rejected research trials.  None meets the 1.2% promotion floor;
`restart-submission` and the SOTA marker remain unchanged.

## Parent and constraints

- Exact parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Official Case2 shape: 32 experts, H=7168, I=2048, 4544 valid tokens
- TileLang primitives and the existing inline emitter only
- No async copy, injection, MXMACA builtin, hidden cache, or cross-run state
- Every source passes the OJ structure validator and full padded-output check

## A. Innermost Gate/Up paired MMA

Source SHA256:
`00312ed6bf8ef2ffed730810c0c04557d0922af50ca6c7b7b9aad10bb70df81f`

This source holds two B fragments and emits Gate then Up MFMA for each
`(k_pack, row_microtile, col_microtile)` tuple.  The generated C++ preserves
the requested fine-grained order.

- Parent: 3.9402622223 ms
- Candidate: 3.9339649200 ms
- Delta: -0.159819% (noise)
- Step1 resources: unchanged at 226 MT / 42 ST / two-wave static limit
- Generated device source: 30,341 bytes, eight MMA sites, nine syncthreads

The accumulator reuse distance was not the missing 1.2% lever.  Do not repeat
Gate/Up source-order variants that leave traffic, tile shape, and resources
unchanged.

## B. Single-grid mixed Step2 with two M128 fragments

Source SHA256:
`9a02a2e173fe95e8ba68662735522ae0ed9464896cb1a23ebefd7ec104ef66fe`

The original 28x48 launch is retained.  Short physical slots use the parent
M128xN256 path.  For a 184-row expert, its two physical M slots become the two
N128 halves of an M192 output tile.  Each long CTA loads one Down N128 panel
and reuses it for the first 128 and tail 56 rows.

- Parent: 3.9407615662 ms
- Candidate: 4.5111808777 ms
- Delta: +14.474850%
- Step2 resources: 224 MT / 54 ST / two-wave static limit
- Generated device source: 42,576 bytes, ten MMA sites, eleven syncthreads

mcTracer isolates the regression to Step2:

| Stage | parent | candidate |
|---|---:|---:|
| input prepack | 0.126720 ms | 0.128512 ms |
| Step1 | 2.484224 ms | 2.485504 ms |
| Step2 | 1.322752 ms | 1.788928 ms |

The second M128 fragment has only 56 valid rows, so only two of four row waves
perform its MMA.  The long path averages three active waves and loses much more
execution efficiency than the saved Down load is worth.

## C. Single-grid mixed Step2 with natural M192/4-wave fragment

Source SHA256:
`e214142f40bff41587cb97581f4ee00c0692fceb91a4c3246f21cf36416844db`

The long branch embeds v152's already-proven M192xN128 layout, distributing 48
rows to each of four waves.  This removes the two-idle-wave defect while the
short branch remains the parent M128xN256 path.

- Parent: 3.9524993896 ms
- Candidate: 4.3500545502 ms
- Delta: +10.058323%
- Step2 resources: 220 MT / 56 ST / two-wave static limit
- Generated device source: 39,694 bytes, nine MMA sites, eleven syncthreads

Restoring balanced M192 waves recovers about four percentage points relative
to experiment B, and MT registers return exactly to the parent value.  The
remaining large loss therefore comes from carrying two substantially different
runtime paths in one kernel: larger instruction footprint, extra scalar state,
and branch-constrained scheduling.  It is not an occupancy cliff.

## Closure

Two complementary implementations now reject the previously open idea of
reinterpreting Case2 physical M slots inside one heterogeneous Step2 kernel.
The split-kernel experiment was throughput-neutral; the single-kernel versions
are 10--14% slower.  Case2's parent unified M128xN256 Step2 remains locally
optimal.

The positive v152 Case3 M192 path remains untouched.  Further work must change
a different dominant mechanism; combining these sub-floor or regressing probes
is forbidden by the experiment policy.
