# v031 前置同步精简探针

这些探针用于追查 v030 的 async token wait/局部 token 槽是否构成可见瓶颈。它们均保持 B1 async、B0 sync 与 CTA `T.sync_threads()`，不改变 MMA、地址映射或输出路径。

## no explicit token wait

- 源码：`v031a_no_explicit_wait.py`
- 变更：删除每个 half phase 的四次 `moe_wait_async_16`，保留 CTA barrier 与 4 个 token 槽。
- Case2 correctness：PASS，max abs `0.001953125`，padding `0.0`。
- 7 轮 AB/BA：parent median `5.066406 ms`，candidate median `5.064763 ms`；paired median `-0.04315%`，6/7 获胜，但范围 `-0.0566%~+0.0635%`。
- 结论：语义上 CTA barrier 足以保证该 B1 async 路径可见，但性能变化处于噪声区，显式 wait 不是主要瓶颈。

## single token slot

- 源码：`v031b_single_token_slot.py`
- 变更：在 no-wait 基础上把 16 个 uint32 token storage 缩为 4 个 uint32，四次 async 返回值覆盖同一槽，与历史 v028l 生成语义一致。
- Case2 correctness：PASS，max abs `0.001953125`，padding `0.0`。
- 7 轮 AB/BA：parent median `5.049746 ms`，candidate median `5.049024 ms`；paired median `-0.04025%`，范围 `-0.1049%~+0.1279%`。
- 结论：token local storage 也没有形成可见 register/occupancy 瓶颈，不接受为优化。

两个探针没有独立版本号：它们是 v031 选定正式机制前的同一假设族排查，最终 accepted 机制是把 v030 的 hybrid half-B overlap 扩展到 Case3。
