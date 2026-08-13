# v039 实验报告：Step2 row0 两-wave mapping

版本：`v039_step2_row0_two_wave_async_sc-16g`  
父版本：`v038_step2_two_wave_batch0_async_sc-16g`（`44df5bdadc9ce716b9abfc6373d6ee88b1b27209`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`889041d15adbce76a83b8901c4848ff89e92c7295eb7245bf4c96a3618b3e944`

## 结论

将 Case1 Step2 row0 的每个 32 行 continuous BSM copy batch 从四 wave 单发改为前两 wave 执行两个连续 16 行 round；仍覆盖相同 1024 笔 16-byte transaction。v038 row1 batch0 映射不变，row2/3 因实测回退而保持原映射；Case2/3 device C++ 与 v038 字节相同。

三 OJ shape 全部正确，max abs=0.001953125、padding=0，OJ allowlist 通过。精确最终源码 Case1 9 轮 clean AB/BA，3.048111 -> 3.015723 ms，paired 中位 -1.07653%、均值 -1.05899%；13 轮候选中位 -1.05397%。OJ W20/R100 为 3.013773 / 4.931858 / 10.642809 ms。官方 functional 2/2 通过。

## mcTracer

Case1 Step2 三轮 3/3 改善，paired 中位 -2.86608%，trace 中位 0.982528 -> 0.953600 ms。Step1 未改，paired 中位 -0.1122%，作为采样噪声。

## mcProfiler 与资源

Step2 两版均 222 MT、52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU。Compact replay waves 两版均 dispatched=achieved=1,626,148；Total Cycles -4.07%、AP active -0.235%、WSM stall -0.079%，四个 VL1 partition stall 明显下降。VLS pipeline stall +2.35% 是反向指标，说明收益不是所有 stall 同降；elapsed time 仍以 clean benchmark/mcTracer 为准。

## C++、ISA 与 Roofline

Case1 device C++ SHA=`dae34f4d...049b0`，`.text` SHA=`5023640d...c7963`；静态汇编文本 MMA/BSM/WAIT/LDG/STG 为 512/165/0/63/57，不代表动态计数。AI=84.453608 FLOP/B；按 mcTracer Step2 中位，104.9122 -> 108.0948 TFLOP/s，schedule traffic 1242.25 -> 1279.93 GB/s，在 1400/1843.2 GB/s sensitivity 下仍为 memory side。

## 决策

接受 v039。相较 v038，clean pair、mcTracer 与 mcProfiler Total Cycles 同方向。逐阶段对照证明 row0 收益不可机械泛化到 row2/3，下一轮应分析 row0 与 row2/3 的并行工作差异（A 预取与下一 tile 准备），而不是全局替换。
