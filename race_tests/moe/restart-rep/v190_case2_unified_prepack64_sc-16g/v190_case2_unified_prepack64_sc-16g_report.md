# v190 Case2 unified-prepack 64-row phase report (sc-16g)

## Verdict

v190 is a locally qualified external-OJ candidate, not yet an accepted SOTA. It passes the exact-source OJ validator and all three local correctness gates. Direct exact-v166 Case2 timing improves by `1.6193%` median over three AB/BA rounds, while Case1/3 remain inside the local noise band. External OJ scores are still missing, so no `restart-submission/v190...`, no `SOTA.json` update and no `dorm` SOTA movement are allowed yet.

## Identity

- Date: 2026-08-30 (Asia/Shanghai)
- Starting branch / commit: `dorm` / `9f5d8f7539aa59f189ad22b5e2ca17e3311368fe`
- Device: MetaX C500 `sc-16g`, 25% compute, 16 GiB; MACA 3.7.1.5 / KMD 3.8.30
- Parent v166 SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Candidate v190 SHA-256: `65bc8a14f1aef0fc7ed53be25eb48a4ff10d29a5344a917fd4b71b8d145dbc11`
- Safety: public TileLang primitives only; synchronous preprocessing; no async copy, source injection, direct compiler builtin, cached result/content, disabled checker, or out-of-run preprocessing

## Evidence that selected the mechanism

Fresh Case2 mcTracer decomposed exact v166 into:

| Stage | Mean time |
|:--|--:|
| rank map | `0.008128 ms` |
| short input prepack | `0.076480 ms` |
| long input prepack | `0.087296 ms` |
| Step1 | `2.103360 ms` |
| Step2 | `1.188096 ms` |

The three auxiliary kernels total `0.171904 ms`, a 4.9% endpoint ceiling. Archived v182 merged them but its fixed `2x96-row` physical-expert producer still took `0.144192 ms`, because short experts require M128 while v182 processed an M192 producer schedule for all experts.

## Implementation

- One Case2 producer grid: `28 x 32` CTAs, 512 threads.
- One CTA owns one expert and a 256-column input panel (two N128 panels).
- Shared bridge: `64 x 128` FP16 = 16 KiB.
- Short expert: two 64-row phases; long expert: three 64-row phases.
- Per phase each producer thread handles two 128-bit vectors.
- The `copy_col==0` CTAs construct expert rank entries before the kernel boundary; Step1 consumes the completed table in the following launch.
- Case1 and Case3 retain the original two M96 phase path at shape-specialization time.

## Correctness and paired timing

All results are from the exact candidate SHA above and compare directly with exact external-OJ SOTA v166 using device-event AB/BA.

| Case | Protocol | Paired changes (candidate vs v166) | Mean | Median | Verdict |
|:--|:--|:--|--:|--:|:--|
| 1 | 3 rounds, warmup 10, repeat 20 | `-0.0438%, +0.2721%, +0.0761%` | `+0.1015%` | `+0.0761%` | correctness PASS; noise/no material regression |
| 2 | 3 rounds, warmup 10, repeat 20 | `-1.6193%, -1.6104%, -1.6726%` | `-1.6341%` | `-1.6193%` | correctness PASS; exceeds 1.2% floor |
| 3 | 1 round, warmup 10, repeat 20 | `+0.0821%` | `+0.0821%` | `+0.0821%` | correctness PASS; noise |

Negative is faster. The raw JSON files are under `benchmark/`.

## Causal trace and resources

Final candidate Case2 mcTracer:

| Kernel | Mean time |
|:--|--:|
| unified rank + input prepack | `0.127552 ms` |
| Step1 | `2.093568 ms` |
| Step2 | `1.180800 ms` |

The unified auxiliary stage saves `44.352 us` versus v166's three auxiliary kernels. The producer launch uses 16 KiB dynamic shared memory, `92 MT / 44 ST` registers, and zero private spill. Main Step1/Step2 remain at `226/46` and `220/56` registers respectively. Generated source has 0 async-copy sites.

The paired endpoint gain is slightly larger than the auxiliary delta because the trace also sampled small main-kernel variation; the structural, repeatable lower bound is the removed auxiliary time, not a claim that Step1/Step2 arithmetic changed.

## Promotion state

Local evidence clears the 1.2% floor and justifies external OJ submission of the exact candidate SHA. Promotion remains pending because the monotonic global-SOTA contract requires all three external OJ score components: no case may regress and at least one must strictly improve. Until then v166 remains the global SOTA ledger entry.
