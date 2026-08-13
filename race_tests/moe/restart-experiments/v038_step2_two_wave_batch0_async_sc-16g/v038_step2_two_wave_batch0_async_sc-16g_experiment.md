# v038 Step2 two-wave batch0 continuous async

## 机制定位

v037 中 row1 batch0 的四 wave 单发 continuous BSM 固定产生约 11.8% 错误。8-byte 拆分仍失败，排除 16-byte 事务宽度；前后 16 行分别单独异步均正确，排除地址段本身；row0 后 pipeline arrive 仍失败，排除简单软件队列未清空。两 wave 双发覆盖完整 batch0 保持总计 256 笔事务且正确，证明 hazard 与同一 copy batch 的四 wave 并发映射相关，而不是总事务数。

## 候选筛选

- 上/下 16 行混合同步异步：正确，但分别回退约 +0.784% / +0.736%。
- batch0 分两波并每波 arrive：正确，但回退 +0.942%。
- batch0 两 wave 双发：正确，相对 v037 13 轮 paired 中位 -0.4661%。
- batch0/1 各两 wave 双发：正确，但相对最终候选回退 +0.3909%。

最终只将 batch0 映射为前两 wave 每线程双发；batch1 同步、batch2/3 延续 v037 continuous async。Case2/3 编译代码与 v037 完全相同。submission SHA-256：`56f168c2a774f47287c194489c688b66b20b3efdd55a76f274a611456a5a81aa`。
