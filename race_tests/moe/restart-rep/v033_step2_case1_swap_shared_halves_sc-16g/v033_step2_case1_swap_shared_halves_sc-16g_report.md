# v033 实验报告：Step2 交换共享内存双半区

版本：`v033_step2_case1_swap_shared_halves_sc-16g`

父版本：`v032_step2_case1_hybrid_half_b_sc-16g`（`12b04f6a70f3599caf8ea4c7ac448aee8a6afd84`）

平台：MetaX C500 16 GiB / 25% sGPU（`sc-16g`）

状态：接受，作为新的 `dorm` 优化基线。

## 1. 上版本遗留问题

v032 的 Step2 已把每一对 K tile 拆成同步加载的 B0 与异步预取的 B1，但 B0 位于 32 KiB 共享内存缓冲区的低半区，B1 位于高半区。Case1 的 clean paired benchmark 仍显示 Step2 是主要可优化段；同时不能改变 OJ 导入集合、tile 形状、同步语义或 32 KiB shared-memory 资源预算。

## 2. 问题原因分析

假设是：共享内存物理半区会影响异步 B1 路径的地址生成、bank/partition 映射或后端调度成本。由于 B1 位于同步 B0 的 MMA 期间，是关键重叠路径，因此把 B1 放到零偏移低半区可能比把 B0 放到低半区更重要。

这是由实验支持的事实，不把原因过度归因到某一个尚未公开验证的硬件细节：生成 C++ 仅交换了相关 shared offset 的 `+8192`（FP16 元素）位置；grid、MMA 数、async/wait/barrier 数和寄存器/shared-memory 资源均未变化，但 Step2 稳定变快。

## 3. 本版本解决方案

只交换 Step2 通用 half-B 路径中两个逻辑 tile 的物理 shared-memory 半区：

- B0：同步加载到上半区 `rows[128:256]`，随后从上半区执行 ldmatrix/MMA；
- B1：异步加载到下半区 `rows[0:128]`，等待后从下半区执行 ldmatrix/MMA；
- global-memory 地址、数学顺序、tile 形状、wait/barrier、线程数和 32 KiB shared allocation 不变。

该固定 OJ 专用路径同时覆盖 Case1、Case2、Case3。

## 4. 具体落地策略

先执行一组机制探针，而不是直接认定任何一次快测：完整 half-B async、分离 token buffer、删除显式 waits、单独 B0 async、整体 shared 偏移、偏移后的 full async、最终半区交换。错误探针均被拒绝并保留源码；删除 waits 的正确探针收益接近噪声，也未接受。最终候选通过三 case 正确性后，使用 7 对 AB/BA 交错 clean benchmark，并用第二次独立 Case1 复现、mcTracer、mcProfiler、mx-smi、TileLang lowering C++ 和最终 MetaX 汇编交叉核验。

OJ submission SHA-256：`9b7e941dfa178756a0be29c56eb12007a5d6ed74205447b837d1a54d93a6ee68`。导入规则校验通过，未使用 `tvm`、`typing` 或未从 TileLang 顶层暴露的模块。

## 5. Benchmark 对比

权威结果为相同进程、相同输入、AB/BA 交错的 paired benchmark；负数表示 v033 更快。

| Case | v032 中位数 (ms) | v033 中位数 (ms) | paired 中位变化 | v033 获胜 |
|---|---:|---:|---:|---:|
| Case1，复现 1 | 3.158341 | 3.116467 | -1.3290% | 7/7 |
| Case1，复现 2 | 3.157307 | 3.116129 | -1.2866% | 7/7 |
| Case2 | 5.054943 | 4.991544 | -1.2482% | 7/7 |
| Case3 | 10.873469 | 10.740769 | -1.2088% | 7/7 |

独立 exact-OJ W20/R100 结果为 3.114877 / 4.985833 / 10.744589 ms，三 case 正确。与 v000 的独立进程记录相比变化为 -0.2209% / -13.1218% / -4.1687%；Case1 的跨进程差异很小，因此版本接受判断以 v032↔v033 paired 证据为准。

官方 benchmark 的 functional 模式 2/2 通过；performance fallback 为 86.741758 / 28.276494 ms。官方 fallback shape 不触发固定 OJ half-B 特化，仅用于兼容性验证，不用于判定这次优化收益。

## 6. Profile 指标变化

mcTracer 的 3 对 AB/BA Case1 结果：Step1 paired 中位变化 -0.2229%，视为噪声；Step2 从 1.088768 ms 降到 1.049344 ms，paired 中位变化 -3.2570%。grid 保持 Step1 `64x24`、Step2 `8x24`；Step1/Step2 每线程寄存器保持 206/234，dynamic shared 均为 32768 B，private memory 为 0。

mcProfiler 的方向性指标中，AP active cycles 从 2,447,682,967 降至 2,428,506,847（-0.7834%），MMA duty 从 24.68% 升至 24.87%，MTE duty 从 37.94% 升至 38.52%，shared efficiency 均为 100%，private read/write 均为 0。v032 与 v033 的 dispatched-wave replay 数分别为 3,252,296 与 1,626,148，虽 achieved waves 同为 1,626,148，但原始累计 stall/traffic/wave-life 计数不具备可比性，已明确隔离，不能作为因果结论。

mx-smi 在 5000 次 Case1 工作负载中取 HBM>100000 MB/s 且 AP 中位>=90% 的稳态样本，共 9/31 个：HBM 中位 787,330 MB/s，范围 783,574–790,906 MB/s；104/104 AP 的中位利用率均为 95%。这是 workload-observed 物理计数，不等同于 Roofline 的逻辑带宽。

schedule-aware Step2 模型使用 103,079,215,104 FLOPs、1,220,542,464 B、AI=84.453608 FLOP/B。按 mcTracer 时间计算，v032/v033 分别为 94.6751/98.2321 TFLOP/s，逻辑带宽 1121.03/1163.15 GB/s；在 479.232 TFLOP/s compute roof 与 1400 或 1843.2 GB/s bandwidth roof 下均处于 memory-side。mcProfiler native Roofline 两次采集的工作量与 duration 不相同，仅归档原图和 JSON，不用于版本对比。

lowering/汇编资源不变：生成 C++ 的 MMA/async/wait/syncthreads 站点分别为 8/4/1/8；Step1/Step2 寄存器为 206/234，static max waves 均为 2；最终 MetaX 汇编静态模式均为 MMA 512、BSM 153、BAR 18、WAIT 2、LDG 58、STG 57。汇编文本布局不同，因此只说明静态骨架一致，不宣称二进制相同。

## 7. 实验总结

接受 v033。它在不增加资源、不改变同步与计算语义、不突破 OJ import allowlist 的条件下，使三个固定 OJ case 都稳定提升约 1.2%–1.3%，收益集中于 Step2。最可靠的新认识是“异步 B1 使用 shared 零偏移低半区”优于 v032 的相反映射；具体是地址生成还是 shared bank/partition 效应仍需后续受控实验区分。后续版本应从 v033 单变量继续，不回收已证伪的 full-async 或 remove-waits 方案。
