# 2026-08-25 v100 Step2 expert-grid-after-pad128（sc-16g）

## 结论

以 external-OJ-AC v095 为性能父版本、warning-free v096 为源码脚手架，分别只在 Case2 和 Case3 打开 Step2 expert-grouped CTA 映射。两者完整 padded correctness 与 OJ source gate 均 PASS，但三轮 AB/BA 中位分别稳定回退 `+4.256570%`、`+4.245676%`。

候选 Step2 从 v095 的 `222 MT / 54 ST / 2 waves` 变为 `206 MT / 60 ST / 2 waves`；MT 明显下降却没有跨 occupancy 档，性能反而退化。这表明 pad128 后当前 CTA 顺序保留的同 K-front/地址局部性比 expert 邻接更重要。

该组合方向关闭，不再在 v95 上重试 Case2/3 expert-grouped Step2 grid；不创建 submission，不推进 dorm 性能源码。
