# 2026-08-26 v138 Step1 直接 shuffled-A 实验

## 结论

拒绝，不移动 v110 SOTA。v138 成功删除了每次调用中的 input prepack kernel，并通过“连续 128-bit 行主序加载 + 64-lane 寄存器转置”正确恢复 MFMA-A fragment；但 Case1 四轮 AB/BA 平均回退 **19.213%**，远低于至少 **1.2%** 的候选门槛。

## 关键证据

- 正确性：Case1 完整 padded 输出 PASS，`rtol=1e-2`、`atol=1e-2`。
- OJ 合规：源码与 Case1 生成设备代码均 PASS；没有异步拷贝或外部代码注入。
- 生成代码：kernel 数量从 3 降到 2，目标路径确实是 `load_global_128_conditional` + `__shfl_sync(width=64)`。
- 四轮延迟变化：`+18.9651% / +18.9215% / +19.5832% / +19.3834%`。
- 均值 `+19.2133%`，中位数 `+19.1743%`，population stddev `0.2795%`。
- Step1 资源从 `226 MT / 42 ST / 2 waves` 增至 `240 MT / 44 ST / 2 waves`，未跨 occupancy 档位。

## 原因

prepack 在 Case1 只占约 0.021 ms；而每个 Step1 K64 tile、每个线程新增四次 128-bit load 后的十六次 32-bit shuffle、拆 half 和标量 fragment 写入。新增工作处于占主导的 K-loop 内，最终即使扣除 prepack，整体仍多约 0.419 ms。问题不是访存不连续，也不是 occupancy 突降，而是寄存器转置与 operand-feed 的动态成本过高。

## 关闭的方向

不要再重复“每个 K64 tile 内执行完整 16x4、四 word、32-bit `shfl_sync` 转置”。除非先用 microprobe 证明存在更便宜的 64-bit/vector shuffle 或后端原生 row-major MFMA-A 映射，否则不应重开。

## 证据位置

- 源码、patch、假设卡：`restart-experiments/v138_step1_direct_shuffled_a_sc-16g/`
- AB/BA、生成代码、资源与报告：`restart-rep/v138_step1_direct_shuffled_a_sc-16g/`
- 复现脚本：`restart-scripts/v138_step1_direct_shuffled_a_sc-16g/`
- Roofline 跳过原因：`moe-roofline/v138_step1_direct_shuffled_a_sc-16g/`
- 原始临时证据：`/root/moe_runs/v138_direct_shuffled_a/`
- SOTA：仍为 `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`
