# v060 Roofline sensitivity

这些点使用 `6*M*hidden*intermediate` 有用 FLOPs 除以端到端时间；只用于版本间敏感性比较，不等价于 profiler 的单 kernel native Roofline。

- Compute roof：479.232 TFLOP/s，来自 C500 全卡 1916.928 TFLOP/s 的 25% sGPU 配额模型，属于 provisional model。
- Bandwidth roof：1843.2 GB/s 是物理 HBM 理论值；1400 GB/s 是 sc-16g 保守实测敏感性值。HBM 未按 sGPU 配额机械缩放。
- v060 有用吞吐：Case1 79.509、Case2 84.564、Case3 82.754 TFLOP/s。
- 图的结论仅是：尾 warp 裁剪提高端到端有用吞吐；不能凭此图单独判定某一 stage 的原生瓶颈。
