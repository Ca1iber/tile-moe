# v020 Step1 Roofline

本目录只包含 `v020_step1_prefetch_before_barrier_sc-16g` 的 Roofline 证据。

- Shape：OJ Case2，32 experts，hidden=7168，intermediate=2048，tokens=4544
- Point source：三轮 paired mcTracer 的 Step1 中位时间
- Arithmetic intensity：84.828402 FLOP/B，按 schedule-implied issued GEMM FLOPs 与 uncached global bytes 计算
- Parent：3.543296 ms，101.819677 TFLOP/s
- Candidate：3.509248 ms，102.807568 TFLOP/s
- Sensitivity roof：1400 GB/s；两点均位于 HBM 区域
- Roof efficiency：85.736%→86.568%

1400 GB/s 是 sc-16g 25% slice 的建模/敏感性上界，不是厂商保证的实测持续带宽。图的用途是比较同一 shape、同一模型下的相对移动，不能据此宣称整卡或 slice 的绝对硬件规格。

`render_roofline.py` 已生成可移植 SVG；环境未安装 matplotlib，因此没有 PNG。render JSON 记录了输入哈希、roof 参数和输出身份。
