# v037 Step2 continuous async

## 假设与下钻

v036 的标准 `memcpy_async<16>` 为每个事务保存 b128 token，并逐 token wait。MXMACA 官方头文件还提供 `continuous_pipeline_memcpy_async<16>` 与 pipeline wait。目标是减少 token 管理与显式 wait，同时保留 CTA barrier 作为共享内存消费边界。

本轮没有在负优化后直接换方向：依次验证了异步顺序、3+1、batch3 同步、tail-first、async batch 数量、所有两 batch 组合、去 wait、continuous one/two wait、全安全位置 continuous。实验定位出两个事实：逻辑 batch0 无论发射顺序如何都会错误约 11.9%；Case1 的 batch2/3 是最稳妥的 row1 子集。

## 最终策略

- 仅 OJ Case1 启用 continuous async。
- odd-B0 的 batch0/1 同步，batch2/3 continuous async。
- row0/2/3 使用 continuous async；不保存 token、不显式 pipeline wait，依赖原有 CTA `sync_threads` 消费边界。
- Case2/3 编译期选择 v036 标准 token/wait 路径。它们的最终 `.text` 与 v036 字节相同。
- Case3 的全安全 continuous 候选虽然端到端 pair 看似改善，但 mcTracer Step2 3/3 回退、paired 中位 +0.2341%，因此明确拒绝。

最终 submission SHA-256：`e2cb7e70fbaa5eedd2277b7e6d796a993dad0cf34b546224f896b9e80c3a3f53`。
