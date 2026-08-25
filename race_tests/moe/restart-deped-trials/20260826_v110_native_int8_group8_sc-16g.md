# 2026-08-26 v110 consumer-native INT8 group8 `up_logits`（已放弃）

- Parent：exact external-OJ-AC v110，SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 探针源码：`20260826_v110_native_int8_group8.py`，SHA256 `014060c8cb13bdcd1d31a5db8f3ef5a2d43b5be5c7db477afdd34808e83cb42d`。
- 改动：保留 v110 consumer-native 物理布局；每个线程拥有的连续 8 个 `up_logits` 共用一个 FP16 scale，数据以 INT8 写回，Step2 原位反量化为 FP16 后继续原有 MMA。
- 合规性：OJ 静态结构校验 PASS；仅使用 PyTorch/TileLang 允许接口，无异步拷贝、注入或结果缓存。

## Case3 筛选

- OJ 容差 `rtol=0.05, atol=0.05`：`0` mismatch。
- 严格容差 `rtol=0.01, atol=0.01`：`954 / 88,080,384` mismatch（`0.001083%`），max abs `0.0163574`，mean abs `0.000917842`。
- 一轮短 AB/BA 筛选（warmup 2 / repeat 10）：v110 `7.563879 ms`，候选 `8.551808 ms`，回退 `+13.061%`。
- 结果远低于 `>=1.2%` 候选门槛，因此按筛选规则不扩展 Case1/Case2、不编号、不创建 submission。

## 生成代码与阶段归因

- Case3 资源：prepack `78 MT / 11 ST / 6 waves`；Step1 `228 MT / 52 ST / 2 waves`；Step2 `220 MT / 52 ST / 2 waves`。
- v110 对照资源：Step1 `226 MT / 42 ST / 2 waves`；Step2 保持同一 `220 MT` occupancy 档。量化令 Step1 ST 增加 10，但没有改变静态驻留档。
- mcTracer 六次调用中位数：

| 阶段 | v110 | INT8 group8 | 变化 |
|---|---:|---:|---:|
| prepack | `0.250240 ms` | `0.251904 ms` | `+0.665%` |
| Step1 | `4.711808 ms` | `4.902912 ms` | `+4.056%` |
| Step2 | `2.586880 ms` | `3.394688 ms` | `+31.227%` |

- 中间工作区理论字节量从纯 FP16 的 `2 byte/value` 降为 INT8 加 group8 scale 的 `1.25 byte/value`，减少 `37.5%`；Case3 单向约从 `50.33 MB` 降到 `31.46 MB`。
- 生成 C++ 确认 INT8 数据以 8-byte 向量读取，但每个向量被拆成 8 次 scalar signed-char→FP16 转换，再广播 scale 做 8 次 half multiply。Step1 同时包含 absmax、除法、clamp、4-lane `roundf` 和打包。
- 因而该实现不是被 HBM 流量限制：流量确实下降，但转换/缩放使 Step2 增加 `31.2%`，净结果回退 `13.1%`。

## 结论与重开条件

关闭“FP16 MMA 前逐元素 INT8→FP16 反量化”的 group8/group16 工作区路线；把 group8 改成 group16只能减少 scale 流量，无法消除主导的 8 次逐元素类型转换。

仅在以下条件之一成立时重访：

1. 后端暴露并能由合规 TileLang 映射的 packed INT8xN→FP16xN 向量转换；
2. Step2 可直接使用 INT8/低比特 MMA，不再反量化到 FP16；
3. scale 能融合进原生矩阵操作或硬件 load path，而不是每个 K tile 显式广播乘法。

