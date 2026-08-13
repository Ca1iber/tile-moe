# v034 Step2 next-even B0 异步预取

## 问题与假设

v033 的 half-B Step2 已将 B1 异步搬运，但每个 K-pair 中 B0 仍同步加载。最初假设是把 B0 也异步化，使当前 B1 MMA 与下一块 B0 global-to-shared 搬运重叠。完整 B0 async 的 Case1 输出约 11.8% 错误，因此没有在第一次负结果后换方向，而是继续下钻到地址、token、shared half、K tile、生成 C++ 与最终汇编。

## 机制隔离

- 手写 16-byte async copy：两个 source half、两个 destination half 全部通过。
- 带 MoE `LD=8192` 行跨度及 col=0/64/4096/8128：16/16 通过。
- token 分离、immediate wait、inline issue+wait：仍不能修复 full B0 async。
- 错误图：仅每个 256-wide 输出 tile 的前 128 列错误，后 128 列完全正确；错误跟随逻辑 B0，不跟随 accumulator 变量。
- K-tile 隔离：k=0/2/4/64/126 完全正确，k=1/3/5/63/127 失败。这说明 `row_batch_1` 的 odd-B0 async 路径不安全，而 `row_batch_3` 的 next-even B0 async 路径是正确的。
- 8-byte 拆分并非数值失败，而是 MXCC 后端拒绝：`Unexpected memcpy_async usage scenarios`。

## 最终单变量改动

保留 `row_batch_1 / odd-B0` 的同步 16-byte copy；只把有 K-tile 正确性证据的 `row_batch_3 / next-even-B0` 改成 16-byte async copy。copy 在当前 odd-B1 MMA 前发射，四个 token 在 MMA 后、CTA shared reuse barrier 前等待。最后一次 K-pair 保留条件保护，不等待未发射 token。

数学顺序、global 地址、tile 形状、MMA 数、CTA barrier 数、32 KiB shared allocation 和输出布局均不变。v033→v034 生成 C++ 只有一个 sync→async call 和一个四 token wait loop。

## 结果

三组固定 OJ case 正确；OJ import allowlist 通过。七轮 AB/BA 配对中，Case1/2/3 的 paired 中位变化分别为 -1.2838% / -1.0544% / -0.9772%，全部 7/7 获胜；Case1 独立复现为 -1.2829%，仍 7/7 获胜。mcTracer 将收益定位到 Step2（paired 中位 -3.6029%），Step1 为 -0.0124% 噪声。

接受为新的 dorm 最优版本，submission SHA-256 为 `55ddb8a06f4469a17bc64270a1836a82d5b8b769d0dfe1ee463802c3241ae0a6`。
