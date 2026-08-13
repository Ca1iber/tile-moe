# v038 实验报告：Step2 batch0 两 wave 双发

版本：`v038_step2_two_wave_batch0_async_sc-16g`  
父版本：`v037_step2_continuous_async_sc-16g`（`ee23a15663c7d1182401cc242f850ce62beae700`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`56f168c2a774f47287c194489c688b66b20b3efdd55a76f274a611456a5a81aa`

## 结论

将 Case1 Step2 odd-B0 batch0 从四 wave 单发改为前两 wave 每线程双发，完整覆盖相同 256 笔 16-byte continuous BSM transaction，既解除四 wave 并发 hazard，也消除 v037 的 batch0 同步搬运。batch1 保持同步，batch2/3 保持 continuous async；Case2/3 device C++ 与 v037 字节相同。

三 OJ shape 全部正确，max abs=0.001953125、padding=0，OJ allowlist 通过。精确最终源码 Case1 9 轮 clean AB/BA 9/9，3.064000 -> 3.049370 ms，paired 中位 -0.47137%、均值 -0.48173%；更长的语义等价候选 13 轮中位 -0.46615%。OJ W20/R100 为 3.047593 / 4.932820 / 10.641715 ms。官方 functional 2/2 通过。

## mcTracer

Case1 Step2 三轮 3/3 改善，paired 中位 -2.21478%，trace 中位 0.997120 -> 0.975616 ms。Step1 未改却 +0.4003%，作为采样噪声，不归因于优化。

## mcProfiler 与资源

Step2 218 -> 222 MT registers，52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU 不变。Compact replay waves 两版均 dispatched=achieved=1,626,148；Total Cycles -3.50%、AP active -0.54%、WSM stall -2.32%、VLS pipeline stall -2.30%，四个 VL1 partition stall 全部下降。该方向与 clean benchmark/mcTracer 一致，但 elapsed time 仍以后二者为准。

## C++、ISA 与 Roofline

Case1 device C++ SHA=`a4f08758...63a8c`，`.text` SHA=`b2a7b318...6f221`；静态汇编文本 MMA/BSM/WAIT/LDG/STG 为 512/161/0/59/57，不代表动态计数。AI=84.453608 FLOP/B；按 mcTracer Step2 中位，103.3769 -> 105.6555 TFLOP/s，schedule traffic 1224.07 -> 1251.05 GB/s，在 1400/1843.2 GB/s sensitivity 下仍为 memory side。

## 决策

接受 v038。相较 v037，clean pair、mcTracer 与 mcProfiler 三类证据同方向，且底层诊断解释了错误为何只发生在完整四 wave batch0 async。下一轮可尝试把同样的两-wave映射用于 row0/2/3，但必须逐阶段验证，因为 batch1 的泛化已证明会负优化。
