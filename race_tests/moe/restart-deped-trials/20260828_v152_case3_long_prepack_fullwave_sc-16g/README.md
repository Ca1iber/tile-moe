# v152 Case3 long-input prepack full-wave writeout closure (sc-16g)

## Identity

- Date: 2026-08-28
- Starting branch / commit: `dorm` / `f22ba4ab`
- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Candidate SHA-256: `905ea690a8a141f1a4e689bda2e815d91a23bccbba93c5baa93143954b90a23b`
- Target: MetaX C500 `sc-16g`, official Case3
- Status: correct and OJ-valid, rejected as performance noise

No external-OJ SOTA or `restart-submission` state is changed.

## Hypothesis

The v152 long-input prepack launches 512 threads. Its global-to-shared producer
uses all eight waves, but the phase-to-native-workspace loop iterates six
vectors on only the first 256 destination-owner threads. In each 96-row phase,
only 128 owners are active, leaving substantial branch/control work on idle
waves.

Linearly enumerate the 768 native destination vectors in each phase and assign
them to the 512 prepack threads as 512 + 256 items. Preserve the exact native
workspace coordinates, bytes, shared bridge, barriers, CTA grid, and all Step1
and Step2 code.

Prediction: higher writeout participation reduces prepack latency enough to
improve Case3 by at least 1.2% without changing consumer code.

Falsifier: correctness/import failure or paired improvement below 1.2%.

## Exact result

- OJ source validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)
- Protocol: one AB screen round, warmup 3, repeat 20
- Parent: `7.0274818420 ms`
- Candidate: `7.0268417358 ms`
- Change: `-0.009109%`
- Async copy / foreign code / direct MXMACA builtin: none

The generated prepack symbol `kernel_kernel_3` changes from parent `28 MT / 30
ST` to candidate `20 MT / 32 ST`; its static wave cap remains eight. Long Step1
and both Step2 kernels retain their parent resource counts. Therefore the
rewrite reaches code generation, but the end-to-end result is pure noise.

## Decision

Reject and close native-workspace owner linearization. v152's prepack writeout
is not a meaningful bottleneck; its cost is governed by the fixed
global-to-shared traffic and synchronization rather than inactive destination
owner lanes. Do not combine or promote this sub-noise change under the 1.2%
rule.

## Artifacts

- `trial_v152_case3_long_prepack_fullwave.py`: exact tested candidate
- `trial_v152_case3_long_prepack_fullwave_screen.json`: paired correctness/timing
- `codegen/`: exact generated source, compiler log, and resource JSON
- `oj_source_validation.txt`: source-level compliance result
