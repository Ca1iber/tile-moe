# v108 假设：让 Step1 直接写出 Step2 的消费布局

v102 已把输入 A 改成 consumer-native 布局，但 Step1 仍按普通二维矩阵写 `up_logits`，Step2 随后再把同一数据重排进自己的 MMA-A shared tile。该 producer/consumer 边界存在纯布局开销。

假设：Step1 可以按 Step2 每线程最终需要的 `(k_tile, vec, thread, elem)` 布局直接写 workspace，Step2 再用每线程连续 128-bit 读取恢复 shared tile。这样不减少有效元素、不改变数学顺序，也不使用异步拷贝或代码注入，却能减少 Step2 地址计算、指令与寄存器压力。

成功判据：全部官方 Case 正确；至少一个主 Case 在严格 AB/BA 长测中超过 1.2%，其余 Case 不回退；源码和三 Case 生成代码通过 OJ 合规检查；trace 能把收益定位到 Step2，而不是启动间隙。
