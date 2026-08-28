# v152 Case3 path-local Step2 scheduling closure (sc-16g)

## Identity

- Date: 2026-08-28
- Starting branch / commit: `dorm` / `6f075fde4889c79b04425934009417f6bed3a34b`
- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Full path-local source SHA-256: `f548caf7b68f27864645ac350dcb7c26f6f10aeebe39b3f5a280ebbfa65b4582`
- Safe long-Step2-first SHA-256: `af73eb44610863fef3e48ca83bf6b9a5c36905f6fb06f5b3617970bb5e5bc3a4`
- Target: MetaX C500 `sc-16g`, official Case3
- Status: full variant failed IR construction; safe variant correct but noise

No external-OJ SOTA or `restart-submission` state is changed.

## Evidence and hypothesis

v152 launches:

```text
rank -> short prepack -> short Step1 -> long prepack -> long Step1
     -> short Step2 -> long Step2
```

The short and long Step1 paths write disjoint native `up_logits` regions. The
intervening weight streams are much larger than the 8 MiB L2, so producer-side
workspace cache state is not expected to survive until both Step2 consumers.

The full proposal was:

```text
rank -> short prepack -> short Step1 -> short Step2
     -> long prepack -> long Step1 -> long Step2
```

It changes only kernel launch order; arithmetic, grids, layouts, bytes, and
individual kernel bodies remain unchanged. Prediction: improved producer-
consumer cache recency reduces Case3 by at least 1.2%.

Falsifier: build/correctness failure or paired improvement below 1.2%.

## Full path-local build result

The source-level OJ validator passes, but TileLang rejects the mechanically
moved short-Step2 block during prim-func construction with
`Failed to build prim_func from kernel`. The builder dump ends with open
`LetFrame` objects at the later long-Step1 bindings. This is consistent with
the moved block rebinding generic Python/TIR locals (`bx`, `by`, `expert_id`,
and related names) before the long block. Fixing it would require a broad
identifier refactor, not a pure scheduling experiment, so this exact variant
is marked failed rather than benchmarked.

## Safe isolated variant

The recovery variant preserves all original variable order until the end and
only swaps the two already-independent Step2 kernels:

```text
... -> long Step1 -> long Step2 -> short Step2
```

This immediately consumes the most recently produced long `up_logits` without
adding the in-kernel mapping control that made the older v149 long-block-first
trial regress.

- OJ source validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)
- Protocol: one AB screen round, warmup 3, repeat 20
- Parent: `7.0264701843 ms`
- Candidate: `7.0249214172 ms`
- Change: `-0.022042%`
- Async copy / foreign code / direct MXMACA builtin: none

Code generation confirms only kernel identity/order changes. Parent short/long
Step2 resources `220/52` and `190/32` MT/ST reappear as candidate
`kernel_kernel_6` and `kernel_kernel_5` respectively, with the same two-wave
caps. The timing result is pure noise.

## Decision

Reject and close kernel-order cache recency. Even immediately consuming the
long native workspace cannot produce measurable benefit because Step2 is
dominated by compulsory Down-weight traffic and MMA rather than the small
`up_logits` stream. Do not invest in the broad variable renaming needed for the
full path-local order under the 1.2% floor.

## Artifacts

- `trial_v152_case3_path_local_step2.py`: exact build-failed full order
- `trial_v152_case3_separate_long_step2_first.py`: exact tested safe variant
- `trial_v152_case3_separate_long_step2_first_screen.json`: correctness/timing
- `codegen/`: safe candidate generated source, compiler log, and resources
- `oj_source_validation.txt`: source-level compliance result for safe variant
