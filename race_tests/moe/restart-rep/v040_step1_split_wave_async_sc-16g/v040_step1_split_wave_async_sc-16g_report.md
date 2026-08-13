# v040 实验报告：Case1 Step1 split-wave continuous BSM

版本：`v040_step1_split_wave_async_sc-16g`  
父版本：`v039_step2_row0_two_wave_async_sc-16g`（`88d421463813769eb2f56d7ef6d58caa53afb2fd`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`ea74ce0311e63bba27ad6464a6875baf1dbd33ef1b768c84c271996d3b26cb8a`

## 结论

Case1 Step1 的 gate/up 权重 staging 全部改用 continuous BSM；wave 0/1 负责 gate，wave 2/3 负责 up。每个 CTA、每个 K tile 的地址覆盖和数学工作不变，每线程八笔 16-byte BSM。这样既避免 gate-only 混合 shared writer 触发 TileLang 的额外 barrier，又让四个 wave 均衡参与搬运。

最终 13 对 clean AB/BA：v039 3.015693 ms，v040 2.936602 ms；13/13 提升，paired 中位 -2.61518%、均值 -2.62202%。OJ W20/R100 为 2.937183 / 4.918592 / 10.646587 ms。三 OJ shape max abs 均 0.001953125、padding=0、OJ import allowlist 通过；官方 functional 2/2 通过。Case2/3 device C++ SHA 与 v039 字节级相同。

## mcTracer

Case1 Step1 中位 2.054144 -> 1.976320 ms，paired 中位 -3.63229%，3/3 同向。Step2 codegen 未改，trace paired 中位 -0.26925% 且方向混合，判为采样噪声。Step1 private memory 为 0，register 206->204，dynamic shared 仍 32 KiB。

## mcProfiler

Compact replay：Total Cycles -5.856%、AP active -1.591%、WSM stall -67.925%；dispatched/achieved waves 都保持 1,626,148，private read/write 都为 0。VLS pipeline stall +25.071%，四分区 VL1 stall 平均 +10.427%。这说明收益来自把同步 staging 迁移到 BSM 后减少 CTA 等待并增加计算/搬运重叠，而不是所有访存 stall 同时下降。Profiler replay 只作机制证据，elapsed time 仍由 clean benchmark 和 mcTracer 裁决。

## C++、ISA 与 Roofline

Step1 资源 206->204 MT、ST 28 不变、2 static waves/PEU、0 stack/spill。候选汇编出现 32 个静态 `ldg_b128 ... bsm` 文本站点，显式 STS 文本站点 16->0，barrier 站点 3->2；MMA/LDG/LDS 静态数受循环展开变化影响，不能解释为动态工作减少。AI=83.591837 FLOP/B；按 mcTracer 中位，100.3622->104.3143 TFLOP/s，schedule traffic 1200.62->1247.90 GB/s，在 1400/1843.2 GB/s sensitivity 下仍位于 memory side。

## 决策

接受 v040。下一轮可继续围绕 Step1 的 BSM wave 分工、循环展开与 VLS/VL1 排队压力优化，但不得把 VLS/VL1 stall 上升误判为整体负优化；必须同时看 Total Cycles、WSM、mcTracer 与 clean OJ。
