# 2026-08-25 v135 Step1 B-fragment grouping（sc-16g）

父版本为 external-OJ SOTA v110（SHA256 `439a2b80...509e`）。尝试把 Step1 每线程 8 列、64 FP16 的 B fragment 改成逐列复用 8 FP16，并保持 global copy、barrier、MMA 数量与 producer 顺序不变。

结果：

- `group_cols=1`：生成 C++ 局部数组 64→8 FP16，但最终 Step1 仍为 226 MT/42 ST/2 waves。
- `group_cols=2/4`：Step1 反而升到 242 MT，未计时。
- `group_cols=1` 三例 correctness PASS；AB/BA 中位变化为 Case1 -0.263%、Case2 -0.103%、Case3 +0.012%，均未达到 1.2%。
- source 与三例 generated-code OJ 合规扫描 PASS；无 async copy/foreign injection。

结论：当前 MXMACA 后端会 unroll/重新调度逐列 B operand，源码数组缩小不会转化为 MT 或 occupancy 改善，且端到端只有噪声级变化。关闭 B-fragment column grouping/live-range sweep；后续改用能改变真实流量、request 并发或 reuse 的机制。
