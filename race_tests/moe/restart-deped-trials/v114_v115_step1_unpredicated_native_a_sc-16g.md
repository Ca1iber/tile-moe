# v114/v115 Step1 native-A 整块无谓词读取反例

- 基线：v110 external-OJ-SOTA（源码 SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`）。
- v114 SHA256：`00e1f14a5fc72ee115990a81d58e9204432b56847361e07ac8a9a5ae75ead29a`；仅 Cases2/3 启用。
- v115 SHA256：`2b0e18dfca7517095cb51c311f98c865832ad02437ba0c5187bb653cd66a2ee1`；仅 Case1 启用。
- 机制：prepack 已写满每个 128-row native-A workspace，删除 Step1 稳态 A prefetch 的逐行 `actual_rows` 谓词，以额外 padding 读取换取更短控制路径。
- 正确性与合规：v114 Case2、v115 Case1 均通过 OJ 源码校验和完整有效输出校验；无 async copy、注入或缓存结果。
- v114 Case2 三轮变化：`+0.231% / +0.228% / +0.172%`，中位回退 `+0.228%`。
- v115 Case1 三轮变化：`+0.219% / +0.496% / +0.366%`，中位回退 `+0.366%`。
- 资源：Step1 均为 226 MT / 40 ST / 2 waves；相对 v110 的 42 ST 略降，但未跨 occupancy 档。

结论：整块读取增加约 35% 的 native-A padding 行流量，稳定抵消控制简化；Case2/3 同构，不再重复 Case3。后续只保留与现有 MMA tail pruning 对齐的 32-row wave 级谓词，不再尝试整块取消。
