# v062 Roofline sensitivity

图中各点使用 `6*M*hidden*intermediate` 有用 FLOPs 除以端到端配对中位时间，仅用于版本敏感性比较，不等价于单 kernel native Roofline。

- Compute roof：479.232 TFLOP/s，采用 C500 整卡 1916.928 TFLOP/s × 25% sGPU compute quota 的 provisional 模型。
- HBM roofs：1843.2 GB/s 物理理论值，以及 sc-16g 空闲单租户 1400 GB/s 保守实测值；HBM 不按 25% 配额机械缩放。
- v062 只减少 padding 行的 Step1 epilogue 指令，不改变算法有用 FLOPs、MMA 或主要 compulsory bytes，因此图上仅表现为很小的端到端有用吞吐提升。
