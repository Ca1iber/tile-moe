# v120 Case3 prepacked bx metadata 试验

- 基线：v110 external-OJ-SOTA。
- 源码 SHA256：`20ccb358c7cdb72adbc762dfa1736f3e802df1d9d978d1911a75e73a3f600031`。
- 改动：仅 Case3 由现有 input prepack 的 `copy_col==0/thread==0` 为每个 bx 写入 `expert_id / actual_rows / raw_start / token_offset`，Step1/Step2 直接读取，避免每个 N-panel CTA 重复 group metadata 算术。
- 正确性与 OJ 源码校验：PASS；无 async、注入或结果缓存。
- 三轮 Case3 变化：`-0.082% / -0.190% / -0.274%`，中位 `-0.190%`，远低于 1.2% 门槛。
- 资源：prepack ST 11→30，Step1 ST 42→40，Step2 ST 52→48；MT 与 occupancy 档不变。

结论：控制面去重真实 lowering 到两个主 kernel，但收益量级仅约 0.2%，不能成为候选；不扩到 Case2，保持 v110。
