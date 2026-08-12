# v027 Step2 input ping-pong RoofLine

本目录保存 Case2 Step2 的父版 v024 与候选 v027 原生 mcProfiler RoofLine 图。两组图来自独立 profiler replay，只作结构快照：本优化不改变数学 FLOPs 或理论必要字节，而是改变 global load 与 MMA 的时间重叠。

原生报告给出的父/子吞吐方向与 16 轮同窗口对称 benchmark、3 对 mcTracer 相反，并且 counted memory traffic 不一致，因此不能用独立 RoofLine replay 裁决约 1% 的小差值。接受依据见 `restart-rep/v027_step2_input_pingpong_sc-16g/`。

- `native_parent_v024/`：父版三张原生图。
- `native_candidate_v027/`：候选三张原生图。
- 原始 JSON 和完整 profiler 输出保存在对应 `restart-rep/.../profiler/mcprofiler/raw/roofline_*` 目录。
