# v152 Case3 long-Step1 M192 3-wave closure (sc-16g)

## Identity

- Date: 2026-08-28
- Starting branch / commit: `dorm` / `4a13d39b`
- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Candidate SHA-256: `4008a5a32982ff079d0855607267278287c7d6a4e3c42692695cf80910506bc9`
- Target: MetaX C500 `sc-16g`, official Case3
- Status: rejected after correctness and paired screen

No external-OJ SOTA or `restart-submission` state is changed.

## Evidence and hypothesis

The exact parent long-Step1 profile reports 68,749,989 VLS pipeline stall
cycles. Its M192xN64 CTA uses four waves, each owning 48 rows. Every wave loads
the same B fragment, so reducing the CTA to three waves could reduce replicated
`ldmatrix_b` consumption by 25%.

The candidate maps M192 as three waves x 64 rows and changes the native A
workspace from `256 threads x 6 vectors` to the element-count-equivalent
`192 threads x 8 vectors`. Each 32x64 weight half still contains 256 vector
loads, so 192 threads cover them in two predicated serial rounds. Grid, shared
weight buffers, mathematical work, barriers, and all non-long paths remain
unchanged.

Prediction: fewer consumer waves reduce VLS stalls enough to improve Case3 by
at least 1.2% without a resource cliff.

Falsifier: correctness/import failure, reduced occupancy, or paired improvement
below 1.2%.

## Exact result

- OJ source validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)
- Protocol: one AB screen round, warmup 3, repeat 20
- Parent: `7.0293632507 ms`
- Candidate: `8.9827453613 ms`
- Change: `+27.788891%` (candidate slower)
- Async copy / foreign code / direct MXMACA builtin: none

Long Step1 `kernel_kernel_4` resources:

| Source | Threads/CTA | Waves/CTA | MT/thread | ST/thread | static wave cap |
|---|---:|---:|---:|---:|---:|
| parent | 256 | 4 | 202 | 32 | 2 |
| candidate | 192 | 3 | 256 | 50 | 2 |

The extra 16-row accumulator microtile per wave raises MT registers by 54 and
ST registers by 18. The nominal static wave cap remains two, but the larger
per-wave live state plus imbalanced two-round weight copy overwhelms the saved
B-fragment consumer wave. The 27.79% end-to-end regression is decisive.

## Decision

Reject and close the M192 three-wave mapping. Historical six-wave evidence and
this three-wave result bracket the parent four-wave x 48-row mapping: moving in
either direction loses performance. Do not sweep nearby wave counts for this
tile. Future work should preserve the four-wave ownership and change a
different mechanism.

## Artifacts

- `trial_v152_case3_long_step1_3wave.py`: exact tested candidate
- `trial_v152_case3_long_step1_3wave_screen.json`: paired correctness/timing
- `codegen/`: exact generated source, compiler log, and resource JSON
- `oj_source_validation.txt`: source-level compliance result
