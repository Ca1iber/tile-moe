# v041 Step1 one-wave continuous-BSM producers

## Hypothesis / 假设

v040 removed synchronous shared staging and reduced WSM stalls, but mcProfiler showed VLS pipeline stall +25.07% and mean VL1 partition stall +10.43% versus v039. The hypothesis was that four simultaneous producer waves overfilled the BSM/VLS path. Keep the same 32 KiB shared buffers, 16-byte request size, address coverage, MMA, and two CTA barriers, while reducing producer concurrency.

## Exploration / 探索

- Gate/up group reversal was neutral; tensor identity was not the cause.
- Interleaved waves and wave-local 64-row strips regressed, proving adjacent waves and original row ordering matter.
- A 32 KiB tensor-stagger overlap schedule was correct but added a third CTA barrier per K tile and regressed 1.868%.
- One producer wave per tensor improved about 2.3%. Mapping sweep selected wave0=gate and wave1=up; later waves were consistently weaker.

## Final mechanism / 最终机制

Wave0 stages the complete 128x64 gate tile and wave1 stages the complete up tile. Each active thread issues sixteen continuous 16-byte BSM requests; waves2/3 issue no weight copy. Dynamic address/byte coverage is identical to v040. Submission SHA-256: `20a591b49e161bf07b841d41c13f6db644e00a8b237318b49567e860fdd2a2d0`.
