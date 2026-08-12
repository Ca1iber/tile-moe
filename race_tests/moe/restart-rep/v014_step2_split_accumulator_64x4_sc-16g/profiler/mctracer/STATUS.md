# mcTracer status

- 三对 Case3 AB/BA/AB 均成功，显式绑定 v013/v014 源码快照。
- v013 Step2 samples：3.535360、3.548160、3.556352 ms。
- v014 Step2 samples：3.539456、3.539200、3.552768 ms。
- 逐对变化：+0.1159%、-0.2525%、-0.1008%；平均 -0.0791%，中位 -0.1008%，不构成稳定收益。
- 第二对 v014 launch gap 为 0.285184 ms，属于 sGPU 时间片异常；阶段判断只使用 kernel duration。
- 机器可读汇总：`paired_case3/v014_vs_v013_case3_mctracer_summary.json`。
