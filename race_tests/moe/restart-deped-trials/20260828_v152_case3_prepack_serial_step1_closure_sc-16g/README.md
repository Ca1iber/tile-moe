# v152 Case3 prepack / serial-Step1 closure (sc-16g)

## Scope

- Date: 2026-08-28
- Branch / starting commit: `dorm` / `41623e7d3bde9d207fdb1a33ef131805bad205cc`
- Parent source: `restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Target: MetaX C500 `sc-16g`, official Case3 (`E=64, H=7168, I=2048, total_valid=9088, total_padded=12288`)
- Verdict: both trials rejected; neither advances `dorm` or `restart-submission`.

All candidate work uses OJ-allowed TileLang primitives only. No asynchronous copy, foreign-code injection, MXMACA builtins, or cached/precomputed results are used.

## Trial A: combined short/long input prepack

### Hypothesis

Replace the two Case3 input-prepack launches with one 512-thread launch. Each CTA first packs an M128 short-expert panel and then reuses the same 64 KiB shared buffer to pack the paired M192 long-expert panel. This halves prepack CTA count and removes one launch while preserving the exact packed layouts consumed by Step1.

### Exact source

- Source: `trial_v152_case3_combined_input_prepack.py`
- SHA-256: `c47ca9069c4ab03ab9308b45746a16b5aa026bc8fb7e927214f1a751ea5d78d2`
- Static OJ validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)

### Screen result

Protocol: one paired AB/BA round, warmup 3, repeat 20.

- Parent: `7.0323585510 ms`
- Candidate: `7.0344062805 ms`
- Change: `+0.029119%` (slower/noise)

### mcTracer / resource evidence

- Candidate combined-prepack steady-state durations: `314.112, 297.984, 288.768, 292.096 us`; median `295.040 us`.
- Parent v152 separate prepack stages: short `134.912 us` + long `156.416 us` = `291.328 us`.
- The combined kernel is slightly slower than the exact sum of the two parent stages; removing one launch and halving CTA count did not reduce the synchronous copy work.
- Combined-prepack resources: 30 MT registers, 30 ST registers, 8 static max warps/PEU.
- Main compute-kernel resources were unchanged (short Step1 226/42, long Step1 202/32, short Step2 220/52, long Step2 190/32 MT/ST).

### Stop reason

The predicted launch/CTA saving was fully offset by serialized synchronous copy work. End-to-end change is below the 1.2% floor and inside noise. A same-layout combined prepack is therefore closed.

## Trial B: Case3 long-Step1 two N64 panels per CTA

### Hypothesis

Halve long-Step1 grid X from 32 to 16 and let each existing M192/4-wave CTA serially compute two adjacent N64 panels using the same fragment allocations. This tests whether lower CTA scheduling overhead and immediate input-panel locality can outweigh reduced parallelism without adding a second accumulator set.

This is not true weight reuse: adjacent N panels consume different Gate/Up weight rows. It preserves total weight work and repeats the input pass.

### Exact source

- Source: `trial_v152_case3_long_step1_2panel_serial.py`
- SHA-256: `826808bb21aa6db0d5c4eacdbdc226191a6584ff410e3dbf1f1d12fb5f9bd3b9`
- Static OJ validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)

### Screen result

Protocol: one paired AB/BA round, warmup 3, repeat 20.

- Parent: `7.0256637573 ms`
- Candidate: `7.5031936646 ms`
- Change: `+6.796937%` (regression)

### Stop reason

The long-Step1 CTA count was halved, but each CTA occupied the machine for two full N-panel passes. With no reduction in FLOPs or weight bytes, the lower grid parallelism materially reduced latency hiding. The regression is large enough to reject at the screen gate; no formal five-round verdict or profiler promotion bundle is warranted.

## Conclusions

1. Case3 short/long synchronous input prepack time is work-dominated rather than launch-dominated.
2. Reducing CTA count without reducing bytes or arithmetic is harmful for the M192 long-Step1 path.
3. Adjacent N-panel serialization does not reuse weights; genuine B-weight reuse must combine M work. v152 already combines each long expert's two physical M128 blocks into one M192 CTA, so the obvious Case3 long-expert M-reuse opportunity is already consumed.
4. Future preprocessing trials must either reduce representation bytes, restrict work to demonstrably hot experts, or remain entirely inside the consuming CTA. Full same-size HBM weight repacking is excluded by its bandwidth lower bound.

## Reproduction

```bash
/opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/validate_oj_submission.py /tmp/<candidate>.py
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax MACA_PATH=/opt/maca \
  /opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/run_permuted_fullcheck.py \
  --parent race_tests/moe/restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py \
  --candidate /tmp/<candidate>.py --case 3 --output /tmp/<candidate>_screen.json \
  --rounds 1 --warmup 3 --repeat 20
```

Raw paired JSON, the combined-prepack resource report, and the combined-prepack mcTracer JSON are stored beside this report.
