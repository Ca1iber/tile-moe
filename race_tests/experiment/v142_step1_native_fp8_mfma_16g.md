# v142 MoE Step1 native FP8 MFMA（sc-16g）

- Parent：exact external-OJ-AC v110。
- 目标：用 C500 原生 K32 FP8 MFMA 替代 Step1 的 K16×2 FP16 MFMA。
- OJ 静态结构：PASS。
- Case3 正确性：FAIL；尺度补偿后 OJ 容差 mismatch `0.504%`，max abs `0.176758`。
- Case3 AB/BA：v110 约 `7.56 ms`，候选约 `205.6 ms`，中值回退 `+2618.23%`。
- Codegen：FP8 MFMA 已真实生成，但热循环包含大量 FP16→FP8 转换；Step1 达到 `256 MT / 58 ST / 2 waves`。
- Verdict：拒绝，不创建 submission，SOTA 仍为 v110；当前版本完成后暂停。
