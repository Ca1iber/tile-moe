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
| Disable Case1 grouped Step2 CTA mapping | 1 | `0efb9308...` | PASS | **+3.442%** | reject: regression |
| Apply grouped Step2 CTA mapping to Case2/3 | 3 | `f983b2b3...` | PASS | **+2.176%** | reject: regression |

## Causal conclusions

1. The remaining first-tile `actual_rows` load is real work, but it is too small relative to the GEMM and synchronization path: both large cases stay below 0.12%.
2. Case1's existing grouped CTA mapping is locally meaningful. Removing it costs about 3.4%; applying the same mapping to the 64-expert shape costs about 2.2%, so the mapping is shape-specific rather than a general rule.
3. Padding zero stores cannot be removed under the current output contract. A valid-row-only screen looked 0.22% faster, but a sentinel run showed that padded rows remain untouched; this is a correctness failure, not an optimization.
4. The current tail-pruning and grouped-grid mechanisms are already close to their useful local limits. None of the tested mechanisms clears the 1.2% floor, so no source is promoted and `dorm` is unchanged.
5. Moving the `actual_rows` predicate inward through the Step1 epilogue saves essentially no time (`0.027%` in Case3); the GEMM and vector-load pipeline dominate the tail epilogue.

## Next direction

Keep the 79.33 source as the reference and investigate a different causal family: the Case2/Case3 vector-load pipeline stall, especially synchronous Step1/Step2 staging order and barrier placement. Any new rejected or inconclusive trial goes in this directory and remains unversioned.
