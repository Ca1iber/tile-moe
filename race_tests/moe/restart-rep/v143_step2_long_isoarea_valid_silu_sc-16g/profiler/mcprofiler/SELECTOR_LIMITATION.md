# mcProfiler 选择器限制

本次 perfcount 本身成功，但三次按 Step1、Step2-short、Step2-long 选择的报告都出现相同的 `all_ops=3792307882368`、workgroups/waves `1450276/5801104`，说明当前选择器没有可靠地区分两个 Step2 kernel。因此归档原始文本用于复查，但不把 short/long counter 当作阶段证据。

可可信的 Step1 对照（相同协议，相对 v110）：processed data `69589716 -> 69026727`（-0.809%），平均 wave lifetime `4477.56 -> 4436.06`（-0.927%），AP active `7179285686 -> 7099786323`（-1.107%），workgroups/waves 不变。主要阶段结论仍来自 mcTracer 与 ISA。
