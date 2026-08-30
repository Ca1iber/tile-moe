# exact-v166 Case2/3 post-threshold closure (sc-16g)

## Identity and gate

- Parent: external-OJ SOTA `v166_gateup_pairload_sc-16g`.
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Target: MetaX C500 sc-16g, 25% compute, 16 GiB.
- Promotion floor: direct paired whole-operator improvement of at least 1.2% versus exact v166.
- All runnable probes passed the OJ source validator and full valid-row correctness. Only normal TileLang primitives and `T.tvm_mfma` were used; no async copy, source injection, direct MXMACA builtin, cached contents, disabled race checker, or preprocessing reuse.

## Results

Positive change means regression. No sub-floor result was stacked or promoted.

| Probe | Mechanism | Case | Protocol | Direct-v166 change | Decision |
|:--|:--|--:|:--|--:|:--|
| two-A K-pair Step2 | stage two A K64 fragments and two Down halves before two MMAs | 2 | 1x20 | `+0.5195%` | reject |
| two-A K-pair Step2 | same mechanism, Case3-only specialization | 3 | 1x20 | `+0.9254%` | reject |
| unified valid-row prepack | one physical-expert prepack, rank construction in producer, skip padded reads/writes, predicate first Step1 read | 2 | 3x20 | `-0.8437%` mean | sub-floor |
| unified valid-row prepack | same source | 3 | 1x1 | `-0.6825%` | sub-floor |
| unified prepack, branch-free consumer | skip padded producer writes but keep the first Step1 read branch-free | 2 | 3x20 | `-0.9210%` mean | sub-floor |
| dual-B Step1 feed | `LDS Gate -> LDS Up -> MMA Gate -> MMA Up` with two B fragments | 2 | 1x20 | `-0.1054%` | noise |
| combined Gate/Up Step1 emitter | one logical Gate|Up B fragment and unified MFMA loop, separate original accumulators | 2 | 1x20 | `-0.0639%` | noise |
| contiguous-N direct slot | refine v178 with `long_n_half = bx - long_first_bx` | 2 | 1x20 | `+13.0939%` | strong reject |

## Static evidence

- The dual-B and combined-emitter Step1 probes both retained exact v166 Case2 resource tiers: Step1 `226 MT / 46 ST / 2 waves`, Step2 `220 MT / 56 ST / 2 waves`.
- The combined-emitter translation unit shrank to 63,468 bytes while keeping 13 MMA sites and 17 synchronization sites, but the shorter static form did not change endpoint time.
- The unified-prepack family removed auxiliary launches and padded-row producer work, but stable direct-v166 gain remained around 0.9%; adding a first-read predicate reduced rather than increased the gain.

## Causal conclusions

1. The Case2/3 two-A synchronous Step2 feed is closed. More live A/Down state does not create non-blocking overlap and regresses both official long shapes.
2. Auxiliary prepack/launch work contains a real roughly 0.9% ceiling, but it is too small for the 1.2% gate. Padded-row traffic is not large enough to turn it into a candidate, and Step1 predicates repay the saved traffic.
3. The backend already schedules independent Gate/Up Step1 LDS/MFMA chains effectively. Two B fragments and a unified emitter both materialize without a resource cliff yet remain noise-level.
4. v178's contiguous-N locality signal depends on its exact address form. Replacing `token_offset // 128` with the algebraically equivalent direct slot expression causes a 13.09% regression, so further source-level arithmetic rewriting is unsafe without new ISA evidence.
5. Exact v166 remains the only SOTA and submission parent. `dorm`, `restart-submission`, and `SOTA.json` must remain unchanged.
