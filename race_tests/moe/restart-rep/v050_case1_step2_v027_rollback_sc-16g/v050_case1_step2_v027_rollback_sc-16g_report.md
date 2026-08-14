# v050 Case1 修复报告

状态：本地门禁通过，等待 OJ 平台确认。

v048 的 OJ Case1 出现有效行数值污染。v050 以 v049 为基底，只将 Case1 Step2 恢复到 v027 的同步 `T.copy` ping-pong；Case1 Step1 和 Case2/Case3 保持不变。

三组 OJ shape 均通过本地 FP32 reference 校验，最大绝对误差均为 `0.001953125`，padding 输出均为 `0`；官方功能测试 2/2 通过，OJ import allowlist 通过。正式 submission SHA-256 为 `3ca06895240e4634e431de2628a887617fca138a6c247a63f4ecf4aa3d95d568`。

W20/R100 延迟为 Case1 `2.967862 ms`、Case2 `5.151442 ms`、Case3 `10.227418 ms`。Case1 相对本地 v049 配对中位回退 `6.1059%`；按本次 OJ baseline `11.272 ms` 估算仍约为 `3.80x`。

mcTracer 将代价定位在 Step2：Step1 中位变化 `+0.3236%`，Step2 中位变化 `+18.2355%`。重新生成的 v050 Case1 Step2 没有 continuous/async 调用，结构计数与当前编译器重新生成的 v027 相同：4 个 MMA 站点、4 个 CTA 同步；资源为 `236 MT / 52 ST`、2 个 static waves、无 private memory。

结论：v050 是保守的 Case1 OJ 修复候选。由于原错误只在 OJ 出现，本地结果不能替代平台复测；在 OJ 确认前不把它描述为根因已完全闭环。
