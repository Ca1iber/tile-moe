# v037 实验报告：Case1 Step2 continuous async

版本：`v037_step2_continuous_async_sc-16g`  
父版本：`v036_step2_odd_b0_tail_async_sc-16g`（`8dbc48ae395262229499e0f55b3232b8fd535408`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，作为新的 dorm 最优基线。  
OJ submission SHA-256：`e2cb7e70fbaa5eedd2277b7e6d796a993dad0cf34b546224f896b9e80c3a3f53`

## 结论

v037 只对 Case1 将已证明安全的 Step2 下权重搬运换成 MXMACA continuous pipeline async，并用原有 CTA barrier 作为消费边界。Case2/3 最终机器码与 v036 相同。三 OJ shape 全部正确，max abs error 均 0.001953125、padding 为 0，OJ import allowlist 通过。

Case1 clean AB/BA 9 轮 9/9 获胜：3.066813 -> 3.064325 ms，paired 中位 -0.07547%，均值 -0.10044%。Exact OJ W20/R100 为 3.061778 / 4.921124 / 10.644127 ms。官方 functional 2/2 通过；含路由适配器的补充 performance 为 86.578809 / 28.567402 ms，不用于 OJ 加速结论。

## mcTracer 与版本门控

Case1 Step2 中位 0.994560 -> 0.989696 ms，paired 中位 -0.48906%（2/3，trace 粒度噪声明显）；Step1 未改。Case3 continuous 候选的 Step2 3/3 回退，paired 中位 +0.23405%，所以最终关闭 Case3。Case2 clean pair 无稳定收益，同样关闭。

## C++、汇编与资源

Case1 Step2 保持 218 MT、52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU。后端汇编静态文本计数为 MMA 512、BSM 159、WAIT 0、LDG 58、STG 57；静态计数不代表动态执行次数。Case2/3 generated C++ 因包含 helper 文本而不同，但最终 `.text` SHA 分别在 v036/v037 间完全一致：`ac0e9981...4235f`、`84d3b428...e669a`。

## mcProfiler

Compact replay 中 dispatched/achieved waves 两版均 1,626,148，private read/write=0。v037 AP active -0.0742%，VLS pipeline stall -0.7233%，VL1 partition 1/3 stall 约 -5.96%，但 WSM stall +2.164%。由于 profiler total-cycle replay 与 clean event timing 方向相反，这些指标只作方向性诊断，不替代 benchmark/mcTracer。

## Roofline

共同 schedule AI=84.453608 FLOP/B。按 mcTracer Step2 中位，103.6430 -> 104.1524 TFLOP/s，schedule traffic rate 1227.22 -> 1233.25 GB/s；在 479.232 TFLOP/s compute roof 与 1400/1843.2 GB/s bandwidth sensitivity 下仍为 memory side。

## 决策

接受 v037。绝对收益很小，但 clean pair 9/9、Case1 Step2 trace 中位改善，并通过 shape gate 将 Case2/3 精确还原为 v036 机器码。下一轮应继续围绕 batch0 hazard 或更大粒度 overlap，而不是把 continuous async 泛化到所有 shape。
