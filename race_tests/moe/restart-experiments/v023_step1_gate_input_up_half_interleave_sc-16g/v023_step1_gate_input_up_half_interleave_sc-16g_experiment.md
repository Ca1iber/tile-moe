# v023 实验经过：Step1 gate/input/up 半块交错

## 目标

在 v022 的 Case2 Step1 `gate-half -> input-half -> gate-half -> input-half -> up-full` 基础上，继续缩短 up 权重 copy 的连续 burst，验证完整三路半块交错是否能改善无插桩 OJ。

## 实验变量

- Parent：`v022_step1_split_gate_staging_sc-16g`
- Candidate：仅 Case2 Step1 采用 `gate0 -> input0 -> up0 -> gate1 -> input1 -> up1`
- 不变项：BN/BK、线程数、shared buffer、barrier 数、MMA 数、Step2、Case1、Case3

## 过程

1. 源码屏幕测试通过后，编译 Case2 生成 C++、资源报告和 MetaX 汇编。
2. 严格 OJ Round 1 出现一个候选热态离群，但配对中位仍为 `-2.011301%`。
3. 立即复测 Round 2：4/4 配对提升，中位 `-2.063507%`。
4. 扩大到 repeat=2000：2/2 配对提升，中位 `-2.232525%`。
5. mcTracer 标准采样反向显示 Step1 `+9.842306%`；提高 warmup 后候选出现快/慢双峰。
6. 增加 20 次 kernel 的 trace window 后，插桩态仍反向 `+6.800751%`，确认是插桩语境中的真实退化，而非单次首样本。
7. mcProfiler 同向显示 Total Cycles `+0.699446%`、VLS stall `+2.178738%`，但同时报告静态 ISA 无法支持的 global-read bytes `+9.622978%`，因此将 profiler 数据隔离为诊断证据。
8. Case1/3 生成 C++ 与 v022 逐字节同哈希；官方功能、源码态三 case、安装态三 case全部 PASS。
9. 依据提交 workload 的无插桩长窗结果接受并安装候选。

## 结论

该优化不减少指令和字节，收益来自源码分块触发的后端调度/寄存器分配变化。它在无插桩 OJ 下稳定带来约 2.1%–2.23% 的 Case2 总时延收益，但对 mcTracer/mcProfiler 插桩敏感。后续不能简单用 profiler elapsed time 替代 OJ，也不能忽略这种 inversion；两套口径必须并列保存。
