# v002_step2_input_locality_grid_sc-16g vs v001_step1_input_locality_grid_sc-16g

Positive latency reduction means v002 is faster.

| suite | case | v001 ms | v002 ms | latency reduction |
|---|---|---:|---:|---:|
| official | h7168_i2048_e8_top4_bs2_seq8192 | 80.953867 | 80.943892 | 0.012% |
| official | h3584_i1024_e4_top2_bs8_seq4096 | 25.999631 | 25.974597 | 0.096% |
| oj | case1 | 3.061635 | 3.063875 | -0.073% |
| oj | case2 | 5.605153 | 5.509847 | 1.700% |
| oj | case3 | 10.986158 | 10.793464 | 1.754% |

| case | Step1 reduction | Step2 reduction |
|---:|---:|---:|
| 1 | 0.416% | 2.667% |
| 2 | 1.023% | 5.208% |
| 3 | -0.181% | 4.450% |

- mcProfiler case3 Step2 all_memacs reduction: 32.117%.
- mcProfiler case3 Step2 native AI increase: 47.312%.
- mx-smi long-load HBM median: 900.027 -> 794.714 GB/s (11.701% less throughput).
