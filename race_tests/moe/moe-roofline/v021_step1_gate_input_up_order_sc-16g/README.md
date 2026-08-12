# v021 Step1 gate-input-up order Roofline

本目录比较 sc-16g 上 Case2 Step1 的 v020 与 v021。点位使用三对 AB/BA mcTracer 的阶段中位数；FLOP 与字节数是 TileLang schedule-implied 静态模型，不是 mcProfiler replay 字节计数。

- arithmetic intensity：84.828402 FLOP/B
- compute roof：160 TFLOP/s（25% slice sensitivity）
- HBM roof：1400 GB/s（sc-16g sensitivity，不是厂商保证值）
- ridge point：114.285714 FLOP/B，因此两个点均位于 HBM 区域
- v020：3.525120 ms，102.344673 TFLOP/s，1400 GB/s roof efficiency 86.178%
- v021：3.412480 ms，105.722892 TFLOP/s，1400 GB/s roof efficiency 89.022%

图只用于同模型下的前后比较。真实 elapsed-time 结论以配对 OJ 与 mcTracer 为准。
