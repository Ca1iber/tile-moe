# v105 Case3 K-pair 错相报告（sc-16g）

## 结论

拒绝。v105 保留 v102 的四-wave cooperative 128-bit 权重搬运，只让相邻 N-tile CTA 从 K 循环的不同半程开始。完整 padded correctness 与 OJ 源码/生成代码检查均通过，但 Case3 稳定回退 `13.098189%`，不创建 submission，SOTA 保持 v102。

## 动机

v102 Case3 Step1 的 fresh mcProfiler 显示：相对 v59，VLS pipeline stall、AP active cycles 和 global read 均下降，但 VL1 partition stall 合计上升约 42.6%。v104 的固定 wave 分工回退 30.96%，说明不能破坏原始 cooperative copy，因此本版只改变 CTA 间请求相位。

## 实现

Case3 偶数 N tile 按 K-pair 0..55，奇数 N tile 按 28..55、0..27。每个 pair 内仍是 even/odd K tile、相同 A prefetch、Gate/Up copy、MMA 和 barrier。Cases1/2 编译期关闭该路径。

## 生成代码与资源

- Case1 SHA：`1cd46135b729c20e3fbeac77bf119cf73d56992b9f195f0323261c0e42495c63`，与 v102 相同。
- Case2 SHA：`717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`，与 v102 相同。
- Case3 SHA：`feeeef8b9a5784da2218374797b8939cc3f583c919681745433657ff4384dd17`。
- Case3 Step1：218 MT / 36 ST registers，2 waves/PEU，无 private allocation；v102 为 226/42/2。
- 生成 C++ 体积约 50.4 KB（v102 约 29.1 KB），说明相位选择增加了控制与地址路径。

## Benchmark

协议：Case3，同进程 AB/BA 3轮，warmup=5，repeat=20，device event，完整 padded output `rtol=atol=1e-2`。

| round | v102 ms | v105 ms | change |
|---:|---:|---:|---:|
| 1 | 7.644992 | 8.618983 | +12.740244% |
| 2 | 7.635033 | 8.635085 | +13.098189% |
| 3 | 7.636378 | 8.643712 | +13.191256% |

中位回退 `13.098189%`，pstdev `0.194422%`。

## 因果判断

相邻 CTA 同步推进 K 并非纯粹的 VL1 冲突源，它还让同一 bx 的 16 个 N tiles 同时读取同一 consumer-native A tile，形成强 L2/VL1 复用。错相把这组复用拆成两半，并增加 K 索引选择控制；虽然寄存器下降，运行时间仍显著回退。因此关闭 CTA K-phase stagger，后续应在保持 K 同步的条件下减少真实中间张量或重复权重流量。
