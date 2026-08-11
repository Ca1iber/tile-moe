# v004_step2_router_weight_register_reuse_sc-16g vs v002_step2_input_locality_grid_sc-16g

Positive latency reduction means v004 is faster.

| suite | case | v000 ms | v002 ms | v004 ms | vs v002 | vs v000 | v004 range |
|---|---|---:|---:|---:|---:|---:|---:|
| official | h7168_i2048_e8_top4_bs2_seq8192 | 80.951421 | 80.943892 | 80.225239 | 0.888% | 0.897% | 0.299% |
| official | h3584_i1024_e4_top2_bs8_seq4096 | 26.056882 | 25.974597 | 25.382446 | 2.280% | 2.588% | 0.756% |
| oj | case1 | 3.121774 | 3.063875 | 3.058279 | 0.183% | 2.034% | 0.048% |
| oj | case2 | 5.738880 | 5.509847 | 5.445212 | 1.173% | 5.117% | 0.112% |
| oj | case3 | 11.211986 | 10.793464 | 10.650980 | 1.320% | 5.004% | 0.188% |

| case | v002 Step1 | v004 Step1 | Step1 reduction | v002 Step2 | v004 Step2 | Step2 reduction |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 1.959168 | 1.961728 | -0.131% | 1.074432 | 1.082368 | -0.739% |
| 2 | 3.516416 | 3.519744 | -0.095% | 1.970944 | 1.890560 | 4.078% |
| 3 | 6.945280 | 6.946304 | -0.015% | 3.869952 | 3.720448 | 3.863% |

- Optimized LLVM IR Case3 Step2 routed-weight loads: 32 -> 2.
- mcProfiler Case3 Step2 during change: -4.541%.
- mcProfiler all_memacs raw-proxy change: 2.705% (not bytes).
- mx-smi long-load HBM median: 794.714 -> 811.503 GB/s (2.113%).
