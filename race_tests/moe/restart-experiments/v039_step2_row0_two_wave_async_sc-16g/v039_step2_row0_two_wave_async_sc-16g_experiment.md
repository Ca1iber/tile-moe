# v039 Step2 row0 two-wave continuous async

## 假设

v038 证明 row1 batch0 的每个 32 行 copy batch 映射到两 wave 后更快且正确。本轮逐阶段验证同样的映射能否泛化：把 128 行 row0/2/3 从四个 32 行 round（四 wave 单发）改为八个 16 行 round（前两 wave 单发），保持总事务数和地址覆盖不变。

## 候选筛选

- batch0 选择后两 wave：正确但回退 +0.5003%；交错 wave 0/2、1/3 分别回退 +0.0568% / +0.0683%，确认前两 wave 最优。
- `T.unroll(2)` 只生成 pragma，资源不变，paired 中位 +0.0052%，拒绝。
- row0 两-wave mapping：正确，相对 v038 13 轮 paired 中位 -1.0540%，接受。
- row2 两-wave mapping：正确但回退 +1.9359%；row3 回退 +3.1567%，拒绝。

最终只对 Case1 row0 启用八轮 16 行的前两-wave mapping；v038 row1 batch0 映射保持不变，row2/3 保持四-wave mapping。Case2/3 编译代码与 v038 完全相同。submission SHA-256：`889041d15adbce76a83b8901c4848ff89e92c7295eb7245bf4c96a3618b3e944`。
