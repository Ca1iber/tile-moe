# v091 vs v090 Case2 mcTracer summary

The generic helper labels the first two kernels as Step1/Step2, but this submission launches three kernels. Correct mapping is `kernel_kernel=prepack`, `kernel_kernel_1=Step1`, and `kernel_kernel_2=Step2`.

Pair 1 is invalid for causal timing because all three v091 kernels slowed together (`0.386/4.220/2.227 ms`), indicating a whole-run device-state disturbance.

Valid pairs:

| Pair | v090 Step1 | v091 Step1 | Step1 change | v090 total GPU | v091 total GPU | total change |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | 2.554880 ms | 2.485248 ms | -2.725451% | 4.063744 ms | 3.998976 ms | -1.593801% |
| 3 | 2.544128 ms | 2.438912 ms | -4.135641% | 4.049920 ms | 3.945728 ms | -2.572693% |

Normal launch gaps are `0.002816 ms`; prepack is unchanged near `0.128 ms`. The gain is localized to Step1.
