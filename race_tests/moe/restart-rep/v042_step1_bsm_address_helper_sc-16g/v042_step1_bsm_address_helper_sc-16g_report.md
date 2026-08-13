# v042 report: Case1 Step1 BSM address helper

Parent: `v041_step1_one_wave_async_sc-16g` (`19591940612dc5eddde581d76bf2acd0d88cbc46`); platform: C500 25% sGPU / 16 GiB; status: accepted new best. Submission SHA-256: `56e66c37871a9f5149b57c481aa2a18b4408314fe8d7c60f296d34baacc69e5d`.

Clean 13-pair AB/BA: v041 median 2.869110 ms, v042 2.856563 ms; paired median -0.43165%, mean -0.43442%, 13/13 wins. OJ W20/R100 is 2.857331 / 4.916887 / 10.651711 ms. Three OJ cases pass with max_abs=0.001953125 and padding=0; imports pass; official functional 2/2 pass. Case2/3 kernel regions are byte-identical from the first extern-C kernel onward; only the unused helper prefix changes whole-file SHA.

mcTracer Step1 paired median is -0.30852%, 3/3 wins. mcProfiler: Total Cycles -0.538%, AP active -0.334%, VLS pipeline stall -3.792%, mean VL1 stall -1.957%, waves unchanged, WSM flat, private traffic zero. Final ISA is 222 MT / 36 ST, two static waves, zero stack/private/spill; MMA/LDS/barrier sites stay fixed, while SNOP sites fall 563->511. At fixed AI=83.591837, tracer-derived throughput rises 108.0948->108.4004 TFLOP/s.

Decision: accept. The consistent clean benchmark, tracer, counters, and ISA support a smaller address/control dependency chain without changing data movement or math.
