# v110 假设：Case1 native workspace 读取不需要 padding 谓词

v108 的 Step1 只写有效行，但 consumer-native workspace 为完整 128 行 tile 分配了合法地址。Step2 的 MMA 按行独立，最终输出也只保留有效行，因此 padding 行可以读取 workspace 中的任意旧值而不会影响有效行。

假设：仅在官方 Case1 编译期删除三处 `intermediate_row < actual_rows` 读取谓词，可减少长 K 循环中的控制、地址活跃区间和寄存器压力。Case2/3 保留 v108 原路径，避免形状相关回退。

成功判据：Case1 完整正确且相对 v108 超过 1.2%；Case2/3 生成代码逐字等同 v108；三 Case OJ source/generated validation PASS；trace 将收益定位到 Step2。
