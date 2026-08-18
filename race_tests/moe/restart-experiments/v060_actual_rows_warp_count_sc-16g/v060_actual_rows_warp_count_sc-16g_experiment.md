# v060_actual_rows_warp_count_sc-16g 实验记录

## 身份

- 状态：local accepted；OJ promotion inconclusive
- 机器：sc-16g（C500 16G sGPU）
- 基线/父版本/当前线上最佳：v027，commit `0d02ed217409347548c9298d14fc9b19b0844e11`
- 分支：`exp/moe-padding-actual-rows`
- Kernel：`candidate_submission.py`
- SHA-256：`f38e15b9de3ebccb6eba69e4d2da8d88a1bc16b0eb2a7d451037a2f190213170`

## 假设卡

- Observed evidence / 已观测证据：官方输入每个 expert 固定 padding 到 192 行，但本组三个形状的有效行数分别为 100/184，原始有效槽位率为 9088/12288=73.958%。
- Verified bottleneck / 已验证瓶颈：v027 会让所有 192 行参加两个 GEMM；尾部无效行虽不写最终结果，仍消耗 MMA/搬运工作。
- Current hypothesis / 当前假设：按 32 行 MMA warp 粒度跳过完整的无效尾 warp，可减少 padding 造成的计算和访存。
- Proposed mechanism / 拟采用机制：每个 expert 计算 `active_row_warps=ceildiv(actual_rows,32)`，仅让对应 row warp 执行 MMA；保留物理输入布局和边界保护。
- Predicted metric changes / 预测指标变化：Step1/Step2 时间下降，memory/L2 read instructions 下降；grid 不变。
- Falsifying result / 证伪条件：正确性失败，或相对 v027 的配对时间不超过噪声；若相对 79.txt 无改善，则 `active_row_warps` 预计算本身无收益。
- Correctness and resource risks / 正确性与资源风险：非 32 对齐尾行、输出 padding 清零、隐藏样例分布，以及额外标量计算/寄存器压力。

## 实施经过

- 从 `dorm`/v027 独立分支；没有继承异步拷贝历史。
- 引入 79.txt 的 32 行尾 warp 裁剪机制，但将 Case3 prefetch 条件恢复到 v027，以隔离 padding 机制。
- 将重复的 `warp_base*32 < actual_rows` 条件改为一次 `active_row_warps` 计数比较。
- 没有改变 `(n*k,d_hidden)` 物理接口、expert offsets 或 192 行 padding 槽位；减少的是无效尾 warp 的执行工作，不是输入存储。
- Source snapshot：`v060_actual_rows_warp_count_sc-16g_custom_fusedmoe.py`
- Patch：`v060_actual_rows_warp_count_sc-16g.patch`

## 结果

- 结论：local accepted / OJ inconclusive。
- 三个官方形状独立参考校验全部 PASS，`max_abs<=0.001953125`，padding output 最大值 0。
- 相对 v027：Case1 1.11062x、Case2 1.07801x、Case3 1.13537x。
- 相对 79.txt：Case1 0.99948x、Case2 1.00028x，说明把条件预计算成 warp count 本身没有可测收益；真正有效的是尾 warp 裁剪。
- 没有外部 OJ 逐 case 分数，因此不创建 `restart-submission`，不移动 `dorm`。
- 证据报告：`../../restart-rep/v060_actual_rows_warp_count_sc-16g/v060_actual_rows_warp_count_sc-16g_report.md`
