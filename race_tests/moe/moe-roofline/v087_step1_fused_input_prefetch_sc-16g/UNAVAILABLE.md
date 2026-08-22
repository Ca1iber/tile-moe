# Roofline unavailable

本轮是 v086 上的 Step1 指令调度优化，不改变 FLOP 或理论全局字节数。没有新的 mcProfiler counter Roofline 数据；以严格 device-event、mcTracer 分段时间和最终 xcore1000 ISA 作为裁决证据，禁止用缺失的 Roofline 图推导带宽结论。
