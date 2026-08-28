# v186 hypothesis: N64 short Step1 plus spill-free next-Gate register pipeline

## Observed evidence

- Fresh exact-v166 Case1 profile: Step1 is about 1.186 ms and 59.2% of the GPU span, with 226 MT registers, 32 KiB shared memory, about 44.8 M VLS pipeline stalls, and almost no avoidable HBM bytes.
- An older full-N128 Gate register pipeline spilled at 232 MT registers and regressed badly.
- Prior N64 evidence reduced short-path register/shared pressure and VLS stalls, but the isolated endpoint result was below the 1.2% floor.

## Hypothesis and mechanism

Halve only the short-expert N tile from 128 to 64, use the freed register headroom for two per-thread `fp16x8` Gate vectors, and software-pipeline the next Gate K tile across current MMA. Remap the unified mixed grid from `128 x 24`-style duplicated long slots to `128 x 16`: eight short-expert rows and eight long-expert rows, preserving exactly 1024 long CTAs while increasing short CTAs from 512 to 1024.

## Prediction and falsifier

- Generated Step1 must have no private spill and materially lower register/shared usage.
- The Gate loads should overlap current MMA enough to offset the extra short CTAs.
- Reject on static/OJ failure, correctness failure, spill, or direct-v166 paired Case1 improvement below 1.2%.

## Safety

TileLang primitives only; synchronous operations; no async copy, injection, direct compiler builtin, disabled checker, warmup-only work, or cached contents.
