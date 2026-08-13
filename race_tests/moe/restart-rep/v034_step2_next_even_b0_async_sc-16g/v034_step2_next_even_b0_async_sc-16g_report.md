# v034 实验报告：Step2 next-even B0 异步预取

版本：`v034_step2_next_even_b0_async_sc-16g`

父版本：`v033_step2_case1_swap_shared_halves_sc-16g`（`faf5b865283aa404e4f86030c04d4059bd3e2471`）

平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）

状态：接受，作为新的 `dorm` 优化基线。
OJ submission SHA-256：`55ddb8a06f4469a17bc64270a1836a82d5b8b769d0dfe1ee463802c3241ae0a6`

## 1. 结论

v034 只将 Step2 中 `row_batch_3 / next-even B0` 从同步 16-byte copy 改成异步 copy，并把四 token wait 放在当前 odd-B1 MMA 之后。odd-B0 保持同步。三组 OJ shape 全部正确，三组七轮 AB/BA 全部 7/7 获胜；独立 Case1 复现也 7/7 获胜。因此接受为新的 OJ-compliant 最优版本。

## 2. Benchmark

| Case | v033 中位数 (ms) | v034 中位数 (ms) | paired 中位变化 | 获胜 |
|---|---:|---:|---:|---:|
| Case1 | 3.112126 | 3.072417 | -1.2838% | 7/7 |
| Case1 独立复现 | 3.115878 | 3.076355 | -1.2829% | 7/7 |
| Case2 | 4.985418 | 4.932196 | -1.0544% | 7/7 |
| Case3 | 10.746919 | 10.638082 | -0.9772% | 7/7 |

Exact OJ W20/R100 为 3.074726 / 4.918525 / 10.643622 ms，三 case max abs error 均 0.001953125、padding error 为 0。与 v033 独立 exact-OJ 记录相比为 -1.2890% / -1.3500% / -0.9397%；接受判断仍以同进程配对为准。官方 functional 2/2 通过；performance fallback 为 86.882402 / 28.584607 ms，只用于非 OJ 特化 shape 的兼容性验证。

## 3. mcTracer 与资源

Case1 三轮 AB/BA mcTracer：Step1 paired 中位变化 -0.0124%，为噪声；Step2 paired 中位变化 -3.6029%，三轮全部更快。Step2 中位时间 1.044480→1.006592 ms。grid 保持 `8x24`；Step1/Step2 每线程寄存器保持 206/234，dynamic shared 均 32768 B，private memory 为 0。

编译资源保持 Step2 `234 MT / 52 ST registers`、0-byte stack、static max 2 waves/PEU，没有 spill 或 occupancy 损失。生成 C++ 的 MMA 与 `__syncthreads` 站点保持 8/8；async call 3→4、sync call 3→2、wait call 3→4。最终 MetaX 汇编静态 MMA/LDG/STG 保持 512/58/57；BSM 153→157、barrier-like 18→22，符合新增四个异步 transaction/wait lowering。静态文本计数不等同于动态指令数。

## 4. mcProfiler 与 mx-smi

定向 mcProfiler 的 achieved/dispatched waves 在两版均为 1,626,148，累计指标可同轮比较：AP active cycles 2,427,425,643→2,410,096,687（-0.7139%）；WSM stall -7.3369%；平均 stage latency -0.4656%；MMA duty 24.88%→25.06%，MTE duty 38.32%→38.60%。shared efficiency 均 100%，private read/write 均为 0。VLS pipeline stall +0.6125%、replay global-read proxy +1.0870%，说明改动并非所有底层计数都改善；elapsed-time authority 仍是 clean benchmark 与 mcTracer。

5000 次 Case1 同步 mx-smi 采样正确性通过，平均 3.073276 ms。9/31 个稳态样本（HBM>100000 MB/s 且 AP 中位>=90%）的 HBM 中位为 801,624 MB/s，范围 800,698–804,668 MB/s；104/104 AP entries 的中位 usage 均为 95%。这是 workload-observed 物理计数，不是 Roofline 带宽上限。

## 5. Roofline

共同 schedule 模型为 103,079,215,104 FLOPs、1,220,542,464 B、AI=84.453608 FLOP/B。按 mcTracer Step2 中位时间，v033/v034 为 98.6895→102.4042 TFLOP/s，逻辑流量率 1168.56→1212.55 GB/s。在 479.232 TFLOP/s compute roof 和 1400/1843.2 GB/s 带宽 sensitivity 下两点仍位于 memory side。原生 mcProfiler Roofline 完整归档，但不替代共同工作量模型。

## 6. 深挖失败路径所得结论

full B0 async 的错误不是简单 shared-half 地址、8192 stride、token alias、wait 位置或 accumulator 变量问题。K-tile 隔离证明 odd-B0 async 失败而 next-even B0 async 正确；最终版本因此只启用后者。8-byte async 拆分被 MXCC 后端明确拒绝。所有失败探针、错误图与隔离脚本均保存在 `restart-experiments/v034_step2_next_even_b0_async_sc-16g/probes`，后续不得在没有新底层证据时重试完整 B0 async。

## 7. 决策

接受 v034。它在不改变数学、tile、shared allocation、CTA barrier 数、寄存器/occupancy 和 OJ import 集合的前提下，稳定加速三个固定 OJ case；收益被 mcTracer 定位到 Step2，并由 C++、资源、汇编和 mcProfiler 交叉支持。
