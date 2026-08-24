# Roofline artifact unavailable for v088

v088 不改变 Step1/Step2 FLOPs、算法 compulsory bytes、grid、MMA 数或中间张量尺寸，因此没有生成一个伪造的新 Roofline 点来解释纯调度收益。

本版本的因果证据来自 clean paired benchmark、mcTracer stage timing、generated-device load ordering 和 MetaX ISA/resource 对比：Step1 通过更早发出同步 input load 改善 latency overlap；prepack 与 Step2 不变。

当前空闲 `sc-16g` 工程分析可使用 1400 GB/s 保守实测 HBM roof，但该数值不是平台保证值，也不是本版本验收依据。

