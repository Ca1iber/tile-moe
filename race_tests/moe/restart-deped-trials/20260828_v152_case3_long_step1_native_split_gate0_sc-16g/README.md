# v152 Case3 long-Step1 native-A split closure (sc-16g)

## Identity

- Date: 2026-08-28
- Starting branch / commit: `dorm` / `11ec086b27d7f32f3d2df0c991f5fafbcf35f2c2`
- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Candidate SHA-256: `c2468c6752fbfe58de63a2b37e9682b8c260016b51283468caf1958f072c56ad`
- Target: MetaX C500 `sc-16g`, official Case3
- Status: parent long-Step1 profile captured; native-A split trial rejected

No `restart-submission` or external-OJ SOTA state is changed.

## Parent long-Step1 profile

The exact symbol is `kernel_kernel_4`, v152's long-expert M192xN64 Step1
path. It dispatches 1,024 CTAs / 4,096 waves for the 32 long experts.

Core subset:

- total cycles: `7,414.44 Kcycles`
- average wave life: `135,861.62 cycles`
- AP MMA duty: `62.13%`
- AP MTE duty: `6.79%`
- AP STE duty: `2.99%`
- VLS pipeline stall: `68,749,989 cycles`
- WSM stall: `15,064,774 cycles`
- VLS write-data stall: `393,216 cycles`

Memory subset:

- global reads: `2,069,078,624 B`
- global writes: `24,117,568 B`
- VL1 hit: `87.5%`
- L2 hit: `55.5217%`
- DNOC read latency: `264.60 cycles`

The compulsory Gate+Up weight traffic for these 32 experts is
`1,879,048,192 B`; measured reads are only about 10.1% above it. A full
same-size per-call weight prepack would add one complete read and write and is
therefore ruled out by traffic economics.

## Trial hypothesis

The M192 consumer-native A path issues six native vectors per thread before
Gate0, versus four in the older M128 path. Split the odd and next-even A
producer at row 96, changing only the long path from full-A-before-Gate0 to
`A-low96 -> Gate0 -> A-high96`. Keep the native mapping, grid, MMA work,
weights, workspace, barriers, and all Case1/Case2 paths unchanged.

Prediction: Gate0 copy overlaps the second A request group, reducing exposed
VLS latency by enough to improve end-to-end Case3 at least 1.2%.

Falsifier: correctness/import failure, resource cliff, or paired improvement
below 1.2%.

## Exact result

- OJ source validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)
- Protocol: one AB screen round, warmup 3, repeat 20
- Parent: `7.0354812622 ms`
- Candidate: `7.1871231079 ms`
- Change: `+2.155387%` (candidate slower)
- Async copy / foreign code / direct MXMACA builtin: none

Resource comparison for long Step1 `kernel_kernel_4`:

| Source | MT/thread | ST/thread | static wave cap |
|---|---:|---:|---:|
| parent | 202 | 32 | 2 |
| candidate | 202 | 48 | 2 |

The split adds 16 ST registers without improving the occupancy tier. More
importantly, delaying half of the synchronous A requests loses latency-hiding
time and regresses the end-to-end kernel by 2.16%. The existing full native-A
producer remains preferable even for the larger M192 burst.

## Decision

Reject and close M192 native-A 96/96 splitting around Gate0. Do not sweep other
split ratios: older M128 evidence already showed that reducing early requests
or delaying the high half regresses, and this M192 experiment confirms the same
causal direction. Future long-Step1 work must change a different mechanism,
such as consumer layout/instruction cost or mathematical/padding work, rather
than delaying the current A stream.

## Artifacts

- `trial_v152_case3_long_step1_native_split.py`: exact tested candidate
- `trial_v152_case3_long_step1_native_split_screen.json`: paired correctness/timing
- `codegen/`: candidate generated source, compiler log, and resource JSON
- `mcprofiler/core/`, `mcprofiler/memory/`: exact parent counter subsets
- `run_v152_mcprofiler_subset.sh`: profiler driver
