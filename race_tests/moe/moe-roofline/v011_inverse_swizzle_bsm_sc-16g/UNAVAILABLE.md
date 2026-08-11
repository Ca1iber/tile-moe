# UNAVAILABLE

v011 的 mcProfiler 是围绕 barrier/token 假设进行的 targeted collection，未采集生成版本专用 Roofline 点所需的 All Ops 和 arithmetic-intensity 字段。旧 `minibs-baseline` 的 native 点属于不同 kernel，不能复制后标成 v011。

恢复动作：若需要 v011 专用图，在空闲 sc-16g 上按相同六个 OJ stage 重新采集完整 mcProfiler Roofline 指标，再用 1843.2 GB/s physical roof、1400 GB/s sc16 conservative roof 和 1916.928 TFLOP/s FP16 MMA compute roof渲染。
