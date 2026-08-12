# UNAVAILABLE

v013 的 Case3 targeted mcProfiler 在启动阶段卡入 sc-16g 主机的 `flush_workqueue`，随后 mcTracer `macainfo` 与普通 TileLang 初始化卡入 `synchronize_srcu`。因此没有完整、可信的版本专用 All Ops/AI/traffic 点，不能生成 Roofline 图。

旧 `minibs-baseline` Roofline 只可作为硬件背景，不能重命名为 v013。主机恢复后应重新采集六个 OJ stage，并沿用 1843.2 GB/s physical、1400 GB/s sc16 measured conservative、1916.928 TFLOP/s FP16 MMA roofs。
