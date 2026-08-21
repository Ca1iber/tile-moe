# v084 experiment

## Hypothesis

v083 证明 Case3 Step2 的同步 producer 最佳相邻顺序为 `A0 -> B0 -> A1 -> B1`。Case1/2 使用相同 128-row token tile、64-wide Step2 K tile 和双阶段结构，因此精确 shape 专门化后应获得相同的 load/MMA overlap 收益，且不改变数学工作量。

## Change

- Parent：v083。
- 保留 Case3 已晋级路径。
- 对官方 Case1、Case2 精确 shape 打开同一个 `use_step2_half_interleave` 路径。
- 无异步 copy、外部调用、缓存结果或 harness 修改。

## Result

- Case1：5 轮中位 `-2.816%`，Step2 trace `-8.955%`。
- Case2：5 轮中位 `-3.089%`，Step2 trace `-8.705%`。
- Case3：生成 C++ 与 v083 SHA-256 相同。
- 三 shape OJ source/generated-code gate PASS；完整 padded correctness PASS。

Decision：超过 1.2% promotion gate，晋级为 v084。
