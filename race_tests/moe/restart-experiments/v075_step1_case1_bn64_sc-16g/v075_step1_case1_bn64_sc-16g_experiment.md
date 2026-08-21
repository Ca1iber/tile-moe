# v075 Case1 Step1 BN64 resource/occupancy trade（sc-16g）

## Observed evidence

- v59 Case1 Step1 uses `BM128×BN128 / 256 threads / 4 waves`, 32 KiB dynamic shared, 222 MT registers/thread, and about 1.74 ms.
- v074's BN256/two-column CTA halves repeated A reads but increases resources to 64 KiB/238 registers and regresses Step1 by 52.0%.
- The inverse direction, BN64 at the original 4-wave CTA, has not been isolated for Step1. The analogous Step2 BN128 experiment reached 144 registers and 3 waves/PEU but lost to duplicated A traffic, so this is a deliberately falsifiable resource-versus-traffic test rather than an assumed win.

## Verified bottleneck

v59's current performance is sensitive to operand-feed scheduling and high register pressure; simply reducing bytes via larger CTA shapes has repeatedly lost to coordination/resource costs.

## Current hypothesis

Halving the Step1 N accumulator tile may materially reduce accumulator registers and Gate/Up shared footprint, potentially increasing resident waves/PEU. If the resulting scheduling/latency benefit exceeds the cost of loading each A tile twice, end-to-end Case1 can improve.

## Proposed mechanism

- Case1 only: `block_dexpert_step1 128→64`.
- Preserve `BM128`, 256 threads, 4 row waves, K64, dual-A interleaving, actual-row pruning, Step2, and all benchmark semantics.
- Step1 N-grid doubles `64→128`; Gate/Up weight bytes and output bytes are theoretically unchanged, while A bytes and CTA scheduling work double.
- No async copy, foreign calls, source injection, atomics, or benchmark changes.

## Predicted metric changes

- Step1 MT registers and dynamic shared should decrease substantially; static waves/PEU should rise if registers/shared are limiting.
- Correctness and OJ source/generated-code checks must pass.
- Case1 end-to-end must improve by at least 1.2% to advance.

## Falsifying result

Reject if codegen does not lower the intended grid/tile, correctness/compliance fails, occupancy does not improve, or three-round paired end-to-end gain is below 1.2%.

## Correctness and resource risks

The doubled CTA count also doubles A loads and fixed per-CTA control/synchronization. Higher nominal occupancy may therefore reduce efficiency rather than latency.
