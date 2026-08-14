# v050 Case1 修复报告

状态：已通过 OJ 平台正确性检查，正式接受。

v048 的 OJ Case1 出现有效行数值污染。v050 以 v049 为基底，只将 Case1 Step2 恢复到 v027 的同步 `T.copy` ping-pong；Case1 Step1 和 Case2/Case3 保持不变。

三组 OJ shape 均通过本地 FP32 reference 校验，最大绝对误差均为 `0.001953125`，padding 输出均为 `0`；官方功能测试 2/2 通过，OJ import allowlist 通过。正式 submission SHA-256 为 `3ca06895240e4634e431de2628a887617fca138a6c247a63f4ecf4aa3d95d568`。

W20/R100 延迟为 Case1 `2.967862 ms`、Case2 `5.151442 ms`、Case3 `10.227418 ms`。Case1 相对本地 v049 配对中位回退 `6.1059%`；按本次 OJ baseline `11.272 ms` 估算仍约为 `3.80x`。

mcTracer 将代价定位在 Step2：Step1 中位变化 `+0.3236%`，Step2 中位变化 `+18.2355%`。重新生成的 v050 Case1 Step2 没有 continuous/async 调用，结构计数与当前编译器重新生成的 v027 相同：4 个 MMA 站点、4 个 CTA 同步；资源为 `236 MT / 52 ST`、2 个 static waves、无 private memory。

OJ 平台复测已通过正确性检查。用户回报 Case1、Case2 加速比均约为 `3.8x`，Case3 略低于 `3.5x`；平台未提供更精确的逐 case 时间，因此此处只记录近似值，不反推或虚构平台延迟。

结论：v050 正式成为新的 OJ 有效基线。结果进一步将 v048 的 Case1 平台错误收敛到 v050 禁用的 Step2 half-B、row1-tail async、continuous async 组合范围内，但尚未隔离到其中某一个子机制。
