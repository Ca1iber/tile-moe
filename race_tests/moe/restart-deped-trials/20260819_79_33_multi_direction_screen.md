# 79.33 incumbent: multi-direction screen (2026-08-19)

## Scope and baseline

This is a research-only screen from the 79.33 candidate source, not a restart version, branch, or submission update. The exact incumbent source was:

```text
race_tests/moe/restart-experiments/v059_teammate_79_33_case1_grid_sc-16g/
v059_teammate_79_33_case1_grid_sc-16g_custom_fusedmoe.py
SHA-256: 30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9
```

The first batch of screens in this session used the stale root `custom_fusedmoe.py` (`RoutedMoEKernel`, SHA-256 `601c1d...`) rather than this `run_kernel` incumbent. Those results are not promotion evidence and are intentionally excluded from the verdict below.

For the valid screens, each source was loaded in a separate module-local cache, correctness was checked on the padded layout's valid rows, and three AB/BA rounds were measured with warmup=3 and repeat=100. The 1.2% promotion floor was applied; no candidate reached it.

## Results against 79.33

| Direction | Case | Candidate SHA-256 | Correctness | Median change (lower is better) | Decision |
|---|---:|---|---|---:|---|
| Enable Step2 tail pruning for Case1 | 1 | `1af0d82a...` | valid rows PASS | **+0.102%** | reject/noise |
| Remove explicit zero stores for padded output rows | 1 | `a176f127...` | valid rows PASS; sentinel full-padding check FAIL (26.0% rows unchanged) | -0.221% in invalid partial check | reject: correctness |
| Predicate Step1 initial input tile by `actual_rows` | 2 | `2607bd8f...` | PASS | **-0.069%** | reject: below 1.2% |
| Predicate Step1 initial input tile by `actual_rows` | 3 | `2607bd8f...` | PASS | **-0.110%** | reject: below 1.2% |
| Predicate Step1 activation (`exp2/sigmoid`) by `actual_rows` | 3 | `9d517c01...` | PASS | **-0.027%** | reject: below 1.2% |
| Reorder Case2/3 Step2 synchronous staging: up-logits copy before down-weight copy | 3 | `ccc88632...` | PASS | **+1.382%** | reject: regression |
| Reorder Case3 staging: next up-logits before odd down-weight copy | 3 | `d2ee5ec7...` | PASS | **+1.373%** | reject: regression |
| Disable Case1 grouped Step2 CTA mapping | 1 | `0efb9308...` | PASS | **+3.442%** | reject: regression |
| Apply grouped Step2 CTA mapping to Case2/3 | 3 | `f983b2b3...` | PASS | **+2.176%** | reject: regression |

## Causal conclusions

1. The remaining first-tile `actual_rows` load is real work, but it is too small relative to the GEMM and synchronization path: both large cases stay below 0.12%.
2. Case1's existing grouped CTA mapping is locally meaningful. Removing it costs about 3.4%; applying the same mapping to the 64-expert shape costs about 2.2%, so the mapping is shape-specific rather than a general rule.
3. Padding zero stores cannot be removed under the current output contract. A valid-row-only screen looked 0.22% faster, but a sentinel run showed that padded rows remain untouched; this is a correctness failure, not an optimization.
4. The current tail-pruning and grouped-grid mechanisms are already close to their useful local limits. None of the tested mechanisms clears the 1.2% floor, so no source is promoted and `dorm` is unchanged.
5. Moving the `actual_rows` predicate inward through the Step1 epilogue saves essentially no time (`0.027%` in Case3); the GEMM and vector-load pipeline dominate the tail epilogue.
6. Reordering the synchronous Step2 producer sequence is directionally harmful: the incumbent order is about `1.38%` faster, so the current ordering is not an accidental load-order artifact.
7. The complementary producer order is equally harmful (`1.37%` slower), closing this simple two-way reorder family without a viable candidate.

## Next direction

Keep the 79.33 source as the reference and investigate a different causal family: the Case2/Case3 vector-load pipeline stall, especially synchronous Step1/Step2 staging order and barrier placement. Any new rejected or inconclusive trial goes in this directory and remains unversioned.

## Additional screens (same incumbent, 2026-08-19)

These candidates were generated directly from the incumbent source above and were kept outside the repository during screening.

The fused-store row was rerun after correcting an initial no-op text replacement; only the `3c35ed7f...` measurements below are valid for that direction.

| Direction | Case | Candidate SHA-256 | Correctness | Median change | Decision |
|---|---:|---|---|---:|---|
| Fuse the two Step2 output-half store loops | 1 | `3c35ed7f...` | PASS | `-0.021%` | reject: noise |
| Fuse the two Step2 output-half store loops | 2 | `3c35ed7f...` | PASS | `+0.582%` | reject: below 1.2% |
| Fuse the two Step2 output-half store loops | 3 | `3c35ed7f...` | PASS | `+0.558%` | reject: below 1.2% |
| Remove Step2 `down_shared` swizzled layout | 2 | `8a82be52...` | PASS | `+34.978%` | reject: regression |
| Remove Step2 `down_shared` swizzled layout | 3 | `8a82be52...` | PASS | `+34.724%` | reject: regression; Case1 compile killed |
| Remove Step1 gate/up shared layouts | 1 | `3c424fe4...` | PASS | `+69.098%` | reject: regression |
| Enable Step2 `use_swizzle` | 3 | `4731bd06...` | PASS | `+2.683%` | reject: regression |
| Enable Step1 `use_swizzle` | 2 | `c29292fc...` | PASS | `+2.886%` | reject: regression |
| Disable Step1/Step2 tail pruning | 3 | `43e5964f...` | PASS | `+9.981%` | reject: regression |
| Increase `num_stages` from 1 to 2 | 1 | `3e5e5dcc...` | PASS | `+0.025%` | reject: noise |
| Remove Step2 MMA-to-down-copy barrier | 3 | `b127ca5f...` | PASS | `-0.011%` | reject: noise |
| Increase Step1 K tile from 64 to 128 | 3 | `0d37b444...` | PASS | `+156.251%` | reject: regression |
| Increase Step2 expert-K tile from 64 to 128 | 3 | `75029916...` | PASS | `+80.050%` | reject: regression |
| Disable Step2 input prefetch | 3 | `cfc98015...` | PASS | `+4.092%` | reject: regression |

### Additional conclusions

8. Combining the two output-half stores does not materially reduce epilogue cost; the store loops are not the bottleneck.
9. The incumbent swizzled shared layouts are essential: default layouts cause large vector-load/occupancy regressions (or compilation resource failure in Case1).
10. Enabling hardware swizzle at either kernel boundary is harmful on this shape mix; the incumbent explicit layout plus disabled launch swizzle is the better combination.
11. Tail pruning is worth far more than the small padding fraction: removing it costs about 10% in Case3.
12. Doubling pipeline stages and removing the first Step2 barrier are both noise-level changes, not promotable improvements; the latter passed the paired correctness check but gives no stable gain.
13. The incumbent 64-wide K tiles are strongly tuned to the MMA/shared-memory layout: widening Step1 or Step2 K tiles creates severe resource/occupancy regressions (about 156% and 80% slower respectively), despite passing correctness.
14. Step2 input prefetch is also a material win: disabling it makes Case3 about 4.09% slower, confirming that the synchronous prefetch path is hiding useful latency rather than adding overhead.

All additional candidates remain research-only; `dorm`, the submission, and version history are unchanged because no stable candidate clears the 1.2% floor.
