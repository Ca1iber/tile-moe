# v009 / v008 paired Case3 benchmark

The verdict uses alternating fresh Python processes to control the process-to-process variance previously observed on sc-16g.

| pair | v008 (ms) | v009 (ms) | v009 delta |
|---:|---:|---:|---:|
| 1 | 15.743301 | 14.126718 | -10.27% |
| 2 | 16.645103 | 14.086508 | -15.37% |
| mean | 16.194202 | 14.106613 | -12.89% |

All four samples passed OJ Case3 correctness with `max_abs=0.001953125`. The script trap restored the byte-identical v009 source. The stable improvement confirms that removing the post-MMA CTA barrier is beneficial; the wait-following CTA barrier in the next K iteration is sufficient to fence the prior shared-memory consumers before the compute tile is overwritten.

