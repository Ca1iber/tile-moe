# v191 Case2/3 unified-prepack 64-row report (sc-16g)

## Verdict

v191 is the strongest locally qualified external-OJ candidate. Against the exact external-OJ v166 source it improves Case2 by `1.4723%` mean and Case3 by `1.2411%` mean over three AB/BA rounds; Case1 remains noise-equivalent. All correctness and source-compliance gates pass. External OJ is pending, so v166 remains the accepted SOTA and no v191 `restart-submission` exists yet.

## Identity and constraints

- Date: 2026-08-30 (Asia/Shanghai)
- Device: MetaX C500 sc-16g, 25% compute, 16 GiB; MACA 3.7.1.5 / KMD 3.8.30
- Exact v166 baseline SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Exact v191 candidate SHA-256: `f4cf60816c8b56a683e1325d477645563ed1add4b5f83668a0c8785275ab982a`
- Public TileLang primitives only; no async copy, source injection, direct compiler builtin, result/content cache, disabled checker, or out-of-run preprocessing

## Mechanism

The v166 Case2/3 M192 Step1 path materializes expert rank plus short- and long-expert input layouts in three launches. A first unified implementation still processed two M96 phases for every physical expert, so each short expert needlessly traversed 64 padded row slots.

v191 uses one physical-expert producer with a 16-KiB `M64 x N128` shared bridge. A short expert executes two phases (M128); a long expert executes three phases (M192). The `copy_col==0` CTAs also build the expert-rank table before Step1 begins. This specialization is enabled only for the exact official Case2 and Case3 shapes; Case1 compiles to the unchanged v166 path.

## Exact-source correctness and timing

Protocol: direct v166 versus v191, three AB/BA rounds, warmup 10 and repeat 20 per sample, device-event timing. Negative change is faster.

| Case | Paired changes | Mean change | Median change | Mean endpoint delta | Correctness |
|:--|:--|--:|--:|--:|:--|
| 1 | `-0.0116%, +0.3040%, -0.0187%` | `+0.0913%` | `-0.0116%` | `1.81 us` slower | PASS; noise |
| 2 | `-1.5142%, -1.4520%, -1.4507%` | `-1.4723%` | `-1.4520%` | `+50.73 us` saved | PASS |
| 3 | `-1.1330%, -1.3659%, -1.2244%` | `-1.2411%` | `-1.2244%` | `+82.29 us` saved | PASS |

All valid output rows pass at `rtol=atol=1e-2`. The exact candidate passes the project OJ source validator.

## Case3 causal trace

Fresh paired-shape mcTracer means:

| Source | rank | short prepack | long prepack | unified producer | Step1 | Step2 | traced sum |
|:--|--:|--:|--:|--:|--:|--:|--:|
| v166 | `0.012992 ms` | `0.136256 ms` | `0.161408 ms` | — | `4.065600 ms` | `2.258880 ms` | `6.635136 ms` |
| v191 | — | — | — | `0.230272 ms` | `4.077056 ms` | `2.289216 ms` | `6.596544 ms` |

The structural auxiliary saving is `80.384 us`. Main-kernel trace variation offsets part of it in this single trace capture, while the balanced three-round endpoint measurement saves `82.29 us` on average. The repeatable claim is the reduced producer work and the formal endpoint distribution, not a Step1/Step2 arithmetic improvement.

## Code generation

Case3 producer/Step1/Step2 register reports are `92/44`, `226/46`, and `220/56` MT/ST respectively, with zero reported private spill. The generated source contains 13 MMA sites, 16 synchronization sites, and zero async-copy sites.

## Promotion state

Both targeted cases clear the 1.2% local floor and Case1 shows no material regression. The exact file is ready for external OJ. Promotion still requires all three OJ score components to be non-regressing with at least one strict improvement; until then `restart-submission`, `SOTA.json`, and the accepted v166 source remain unchanged.
