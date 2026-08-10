# v001_step1_input_locality_grid_sc-16g vs v000_minibs_baseline_sc-16g

Positive latency reduction means v001 is faster.

| suite | case | v000 ms | v001 ms | latency reduction |
|---|---|---:|---:|---:|
| official | h7168_i2048_e8_top4_bs2_seq8192 | 80.951421 | 80.953867 | -0.003% |
| official | h3584_i1024_e4_top2_bs8_seq4096 | 26.056882 | 25.999631 | 0.220% |
| oj | case1 | 3.121774 | 3.061635 | 1.926% |
| oj | case2 | 5.738880 | 5.605153 | 2.330% |
| oj | case3 | 11.211986 | 10.986158 | 2.014% |

| case | Step1 reduction | Step2 reduction |
|---:|---:|---:|
| 1 | 3.053% | -2.398% |
| 2 | 3.397% | -1.070% |
| 3 | 2.974% | 0.246% |

- mcProfiler case3 Step1 all_memacs reduction: 21.379%.
- mcProfiler case3 Step1 native AI increase: 27.192%.
- mx-smi long-load HBM median: 1024.212 -> 900.027 GB/s (12.125% less throughput) with all 104 AP active in both versions.
