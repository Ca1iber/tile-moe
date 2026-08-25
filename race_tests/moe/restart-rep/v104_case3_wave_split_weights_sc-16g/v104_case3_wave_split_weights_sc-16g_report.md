# v104 Case3 权重 wave 分工报告（sc-16g）

## 1. 上版本遗留问题

v102 已获外部 OJ AC，并把 Case1/2/3 分别推进到 2.332/3.974/7.690 ms。三组 mcTracer 均显示 Step1 约占总 GPU span 的 62%，kernel 间空泡只有约 3–30 us，因此继续优化应集中在 Step1 内部。

## 2. Profile 后的原因分析

新采集的 v102 Case3 Step1 mcProfiler 数据为：MTE duty 44.36%，MMA duty 24.47%，VL1 四分区 stall 合计约 1.329B cycles，L2 hit 41.66%，global read 38.065 GB。与同口径 v59 数据相比，v102 的 VLS pipeline stall 下降约 28.2%、AP active cycles 下降约 9.3%、global read 下降约 6.1%，但 VL1 partition stall 合计上升约 42.7%。生成 C++ 已确认 Gate/Up 权重全部使用 `uint4` 128-bit load，不能再靠简单加宽加载解决。

## 3. 本版本方案

仅对官方 Case3 将四个 waves 固定分配给 Gate-low、Up-low、Gate-high、Up-high，使两个独立权重基址流同时在飞。逻辑字节、MMA、barrier、shared 32 KiB、tile、grid、A prefetch、Step2 和输出语义不变。

## 4. 生成代码与资源

Case1/2 生成代码 SHA-256 与 v102 完全相同；Case3 生成 SHA 改为 `552528d45b2970b8321282bb32232e895a126a10a7ce55547a9283a49ae5ec69`。Case3 Step1 仍是 2 waves/PEU、无 private allocation，但 MT registers/thread 从 226 增至 255，ST registers 从 42 墀至 54。

## 5. Benchmark 对比

机器为 MetaX C500 25% sGPU（sc-16g）。协议：同进程 AB/BA 3 轮，warmup=5，repeat=20，device event；完整 padded output 按 `rtol=atol=1e-2` 检查。

| round | v102 ms | v104 ms | change |
|---:|---:|---:|---:|
| 1 | 7.634944 | 9.998682 | +30.959460% |
| 2 | 7.630886 | 9.983949 | +30.836032% |
| 3 | 7.622643 | 9.987955 | +31.030079% |

中位回退 `+30.959460%`，population stddev `0.080191%`，远差于至少 1.2% 的候选门槛。

## 6. 因果结论

VL1 stall 证据指向权重供给，但“固定 wave 负责一个半块”不是正确解法。原实现让四 waves 协作完成每个连续 64x64 copy；本版把每个 wave 变成八次连续 128-bit load/store 的长依赖链，控制路径与寄存器也增加。独立 Gate/Up 地址流带来的潜在并发不足以抵消这些代价。

## 7. 实验结论

状态：`rejected_performance_regression`。不创建 submission，不推进 SOTA；正式基线保持 v102。后续不再尝试固定 wave ownership，应优先研究不破坏 cooperative bulk copy 的权重相位分散、缓存复用或 CTA 调度机制。
