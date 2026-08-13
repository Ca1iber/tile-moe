# v041 report: Case1 Step1 one-wave BSM producers

Version: `v041_step1_one_wave_async_sc-16g`  
Parent: `v040_step1_split_wave_async_sc-16g` (`d43efefcb0ee5d29a943da2d21911b54e45ed038`)  
Platform: MetaX C500 16 GiB / 25% sGPU (sc-16g)  
Status: accepted, new dorm best.  
Submission SHA-256: `20a591b49e161bf07b841d41c13f6db644e00a8b237318b49567e860fdd2a2d0`

## Result / 结果

Clean 13-pair AB/BA: v040 median 2.936609 ms, v041 median 2.867272 ms; paired median -2.35001%, mean -2.35786%, 13/13 wins. OJ W20/R100: 2.868605 / 4.918267 / 10.646902 ms. All three OJ shapes passed with max_abs=0.001953125 and padding=0; OJ imports passed; official functional tests passed 2/2. Case2/3 device C++ is byte-identical to v040.

## mcTracer and mcProfiler / 阶段与计数器

mcTracer Step1 median 1.975552 -> 1.908992 ms; paired median -3.38214%, 3/3 wins. Step2 codegen is unchanged and its mixed-direction trace changes are noise. mcProfiler shows VLS pipeline stall -17.457%, mean VL1 partition stall -5.736%, AP active cycles -1.964%, waves unchanged, WSM flat, and no private traffic. Multi-event Total Cycles conflicts with clean benchmark/mcTracer (+3.858%) and is retained as a tool caveat, not used for acceptance.

## C++, ISA, resources, Roofline / 底层证据

Final ISA: 220 MT / 52 ST, two static waves/PEU, zero stack/private and no `ldp/stp` spill. The producer loop has more static BSM sites because one active wave executes sixteen unrolled requests, but dynamic bytes and mathematical work are unchanged. Barriers remain two static Step1 sites and MMA remains 128 static sites. At AI=83.591837 FLOP/B, Step1 moves 104.3548 -> 107.9933 TFLOP/s and 1248.39 -> 1291.91 GB/s schedule-equivalent traffic, remaining memory-side in the declared model.

## Decision / 决策

Accept v041. The causal chain is consistent: v040 exposed VLS/VL1 queue pressure; reducing BSM producer waves relieves those stalls and improves clean Step1. Register count rises without lowering the two-wave residency limit or causing spill.
