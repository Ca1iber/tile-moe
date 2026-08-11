# v008 / v004 paired Case3 benchmark

The standalone v008 Case3 samples varied from 14.49 to 16.69 ms, so the verdict uses an alternating fresh-process comparison under the same machine state.

| pair | v004 (ms) | v008 (ms) | v008 delta |
|---:|---:|---:|---:|
| 1 | 10.663076 | 16.636584 | +56.02% |
| 2 | 10.644235 | 16.679219 | +56.70% |
| mean | 10.653655 | 16.657902 | +56.36% |

The trap restored the byte-identical v008 source after the alternating run. This paired result supersedes the unusually fast standalone 14.255 ms screen sample for the production verdict.
