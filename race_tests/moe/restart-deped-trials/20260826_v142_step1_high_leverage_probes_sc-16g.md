# 2026-08-26 v142 Step1 高杠杆结构探针（已放弃）

Parent：exact external-OJ-AC v110。

## 1. BM128×BN128 的 8 row waves

- 仅把 Step1 CTA 从 256 threads/4 waves 改为 512 threads/8 waves，tile、MMA 数、流量和 barrier 不变。
- Step1 资源从 `226 MT / 42 ST / 2 static waves` 变为 `126 MT / 28 ST / 4 static waves`。
- Case3 完整正确性 PASS；三轮 AB/BA：`+8.606% / +8.653% / +8.600%`，中值回退 `+8.606%`。
- 结论：更高静态驻留不能抵消翻倍的调度 waves；不再重复同 tile 的 512-thread row-wave 扩展。

## 2. 原生 K32 FP8 Step1

- C500 后端成功生成 `__builtin_mxc_mma_16x16x32f8`。
- 未缩放权重在 OJ 容差下有 `46.253%` mismatch；按 H2048/H7168 分别乘 32/64 后降至 `0.504%`，仍不 AC。
- 缩放版本 Case3 从约 `7.56 ms` 退化到 `205.6 ms`，AB/BA 中值 `+2618.23%`。
- 生成代码显示输入逐 lane FP16→FP8，权重经 float2 转换；Step1 上升至 `256 MT / 58 ST`。
- 结论：FP8 MFMA 本身可用，但 OJ 的 FP16 接口要求热循环转换，转换成本远大于 MFMA 节省。

## Reopen conditions

仅在以下条件之一成立时重访 FP8：

1. 输入/专家权重由接口直接提供预量化 FP8；
2. 后端出现低成本原生 FP16xN→FP8xN 转换并能被 TileLang 向量化映射；
3. 可在 kernel 外一次量化并跨多次调用复用，且平台规范明确允许。

当前 OJ 约束下该方向关闭。
