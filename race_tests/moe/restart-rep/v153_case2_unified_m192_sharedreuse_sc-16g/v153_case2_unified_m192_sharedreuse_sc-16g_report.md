# v153 Case2 unified M192 shared-reuse report

## Verdict

**Retained local candidate; external OJ pending.**  The exact source passes the
OJ submission-source validator and full valid-row correctness.  Two independent
5x20 AB/BA runs show a stable Case2 improvement around 3.9%, above the 1.2%
local floor.  Case1 and Case3 remain in the noise band.

This is not an `accepted` global-SOTA promotion.  The incumbent external-OJ SOTA
remains v148 until this exact SHA is evaluated by the external OJ and satisfies
the per-case monotonic gate.  No `restart-submission/v153` directory is created.

## Identity and mechanism

- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Candidate SHA-256: `0f345d082b1e5bc761757110a9271ff905c4e02a866dd3b83a1726666d2b4a6a`
- Target: MetaX C500 `sc-16g`, 25% compute slice, MACA 3.7.1.5
- Change: preserve the single Case2 `28 x 48` Step2 grid; short slots retain
  M128xN256, while each long expert's two physical M slots compute complementary
  M192xN128 N-halves.  Both paths explicitly share one 32-KiB Down buffer.

The change is not a separate weight-preprocessing launch.  It is consumption-time
Down-tile reuse inside the scored Step2 kernel, so it adds neither HBM materialization
nor hidden warmup work.

## Gates

- Python syntax: PASS.
- OJ source validator: PASS on exact candidate SHA.
- Async-copy/injection/direct-builtin scan: PASS through the project validator.
- Full valid-row correctness: PASS, `rtol=1e-2`, `atol=1e-2`, all three cases.
- External OJ: pending; therefore no submission promotion.

## Paired benchmark

Primary clean rerun, exact source, warmup 5, repeat 20, five alternating AB/BA
rounds:

| Round | Parent v152 | Candidate v153 | Change |
|---:|---:|---:|---:|
| 1 | 3.915290 ms | 3.775296 ms | -3.5756% |
| 2 | 3.926886 ms | 3.777382 ms | -3.8072% |
| 3 | 3.937216 ms | 3.775603 ms | -4.1048% |
| 4 | 3.927821 ms | 3.771174 ms | -3.9881% |
| 5 | 3.930701 ms | 3.773798 ms | -3.9917% |

- Mean: **-3.8935%**
- Median: **-3.9881%**
- Population standard deviation: 0.1853 percentage points

The first independent exact-source 5x20 run had four rounds in the -3.85% to
-4.20% range and one parent-only 4.227-ms outlier.  Its median was -4.0472%; the
outlier-inflated -5.31% mean is not used as the headline result.

Exact-source side checks:

| Case | Parent | Candidate | Change | Interpretation |
|---:|---:|---:|---:|---|
| 1 | 2.159053 ms | 2.150528 ms | -0.3948% | noise |
| 3 | 7.023616 ms | 7.029607 ms | +0.0853% | noise |

## mcTracer and resources

| Stage | v152 median | v153 median | Change |
|---|---:|---:|---:|
| input prepack | 0.128896 ms | 0.128640 ms | -0.20% |
| Step1 | 2.466688 ms | 2.460160 ms | -0.26% |
| Step2 | 1.331328 ms | 1.176192 ms | **-11.65%** |

The speedup is isolated to Step2 as predicted.  Step2 remains one 1,344-CTA
launch with 5,376 waves.

| Step2 resource | v152 | v153 |
|---|---:|---:|
| MT registers/thread | 220 | 220 |
| ST registers/thread | 52 | 56 |
| dynamic shared | 32 KiB | 32 KiB |
| static max waves/PEU | 2 | 2 |
| generated async-copy sites | 0 | 0 |

The rejected intermediate M192 implementation used 48 KiB because mutually
exclusive shared buffers were summed and regressed Case2 by 15.11%.  Explicit
reuse removes that accidental resource penalty.

## mcProfiler causal comparison

Same Case2 shape and `kernel_kernel_2` symbol:

| Memory metric | v152 | v153 | Change |
|---|---:|---:|---:|
| global read bytes | 1,201,755,104 | 971,569,952 | **-19.15%** |
| global write bytes | 88,088,928 | 88,090,944 | unchanged |
| DNOC average read latency | 286.75 | 280.57 | -2.16% |
| VL1 partition stalls, sum | 57,309,862 | 27,751,395 | **-51.58%** |
| L2C duty ratio | 24.19% | 23.95% | -0.24 pp |

| Core metric | v152 | v153 | Change |
|---|---:|---:|---:|
| total cycles | 5,894.10 K | 5,765.49 K | -2.18% |
| average wave life | 54,509.93 | 48,072.46 | -11.81% |
| WSM stall cycles | 10,311,567 | 7,397,589 | -28.26% |
| VLS pipeline stall cycles | 41,003,600 | 28,878,276 | -29.57% |
| AP active cycles | 153,336,102 | 135,838,616 | -11.41% |
| MMA duty ratio | 47.87% | 54.03% | +6.16 pp |

The result matches the hypothesis: fewer repeated Down reads shorten wave
lifetime and reduce both VL1 and issue-pipeline waiting without changing grid,
MMA work, or occupancy.

## Promotion state and next action

The local 1.2% floor is satisfied and v153 may advance the linear `dorm`
experiment history.  It must not enter `restart-submission` until the external
OJ runs this exact SHA and confirms that all official case scores are monotonic
against external-OJ SOTA v148, with at least one strict improvement.

