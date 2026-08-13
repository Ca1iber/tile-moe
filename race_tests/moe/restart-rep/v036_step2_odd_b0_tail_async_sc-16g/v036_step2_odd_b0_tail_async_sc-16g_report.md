# v036 实验报告：Step2 odd-B0 tail async

版本：`v036_step2_odd_b0_tail_async_sc-16g`  
父版本：`v034_step2_next_even_b0_async_sc-16g`（`b289fb0dfd074ca8b30daf1be40088e2104485af`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，作为新的 `dorm` 最优基线。  
OJ submission SHA-256：`b4fa1b36f518dd034a467f0480a39ffc978eae7f14f72b52f81f24afc9ba7396`

## 结论

v036 只对 Case1 启用 Step2 odd-B0 的安全子带异步化：batch0 保持同步，batch1..3 在当前 even-B1 MMA 前发射 async copy，并在 MMA 后等待。三 OJ shape 全部正确；Case1 最终七轮 AB/BA 7/7 获胜，paired 中位 -0.2107%（3.073769→3.067156 ms）。Case2/3 生成设备代码与 v034 字节级完全一致。

## 时间与资源

mcTracer 三轮把收益定位到 Step2：1.009920→0.995072 ms，paired 中位 -1.5201%，3/3 获胜；Step1 +0.2232% 为未改代码的采样噪声。Step2 registers 234→218 MT，ST=52、dynamic shared=32768 B、private=0、static max 2 waves/PEU 不变。

Exact OJ W20/R100 为 3.067187 / 4.943739 / 10.638234 ms，三 case max abs error 均为 0.001953125、padding 为 0。官方 functional 2/2 通过；非 OJ fallback performance 为 86.762021 / 28.357205 ms。

## C++ 与汇编

Case2/3 device C++ SHA-256 分别为 `94ab5e1c6ba70106afaba1195d34d126f51062a66d888134838d0baeddaa0280` 与 `6c21d4b369758fca20a8cc345bd416ce8a166ccaed4efd78aeb53abc7b759a1b`，两版完全相同。Case1 最终 MetaX ISA 静态 MMA/LDG/STG 保持 512/58/57；BSM 155→158、barrier-like 22→25，对应三个新增 async transaction。静态文本计数不代表动态执行次数。

## mcProfiler 诚实性检查

Broad replay 的 dispatched waves 两版均 1,626,148，但 v036 出现 achieved=2,778,148 与 MTE duty=139.33%，物理上不自洽。拆分 metric 复采后 achieved=dispatched=2,778,148，但 AP active 与 duty 随 metric 分组剧烈漂移。因此不使用 duty/latency 作跨版本定量结论。原始数据完整归档；broad replay 中 AP active -0.1648%、WSM stall -6.3764%、VL1 四分区 stall 均下降，只作为方向性诊断，不替代 clean benchmark/mcTracer。

## mx-smi 与 Roofline

5000 次 Case1 同步采样平均 3.066868 ms，9/31 稳态样本 HBM 中位 794,708 MB/s，范围 792,755–796,476 MB/s；104/104 AP entry 活跃，AP 中位约 95%。该值是 workload-observed，不是带宽 roof。

共同 schedule 模型 AI=84.453608 FLOP/B。按 mcTracer Step2 中位，v034/v036 为 102.0667→103.5897 TFLOP/s；在 479.232 TFLOP/s compute roof 与 1400/1843.2 GB/s 带宽 sensitivity 下仍在 memory side。

## 决策

接受 v036。收益小但在 clean paired 与 mcTracer 中方向一致、全组获胜；底层资源还减少 16 MT registers，并通过配置门控保证 Case2/3 不回退。下一轮可继续研究为什么 odd-B0 batch0 的 async copy 丢失，而不应直接恢复 full odd-B0 async。
