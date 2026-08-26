# v110 Step1 同步只读缓存 Gate0 探针（C500 16G）

## 结论

拒绝，不编号、不生成 `restart-submission`，`dorm` 的有效基线仍为 v110。

候选在三个官方 shape 上都与 v110 bit-exact，但 3 轮 AB/BA 的中位变化分别为
`-0.013% / -0.043% / +0.123%`（负数表示更快）。三个中位耗时之和由
`16.122771 ms` 变为 `16.131961 ms`，整体反而回退 `0.057%`。结果远低于
1.2% 候选门槛，属于噪声区间。

## 假设与能力核验

目标是在不使用异步拷贝的前提下，让 Step1 更早或更有效地把 Gate/Up 权重送入缓存，
降低 v110 中已经观测到的访存等待。

能力核验得到：

- 当前比赛环境的 `tilelang.language as T` 不暴露 `T.prefetch`；`dir(T)` 中没有任何
  prefetch API。
- TileLang 仓库中的通用 `prefetch` 只存在于旧 AST 辅助层，没有 MetaX lowering/codegen
  映射，也不在当前 `T` 语言表面。
- `/opt/maca/include/mcflashinfer/cp_async.cuh` 中的 L2 `PrefetchMode::kPrefetch` 与
  global-to-shared async copy 绑定；这条路径违反当前“禁止异步拷贝”的实验约束。
- 后端唯一可用的同步替代是 `T.__ldg`：`src/target/codegen_maca.cc` 将它生成为
  显式只读缓存加载。

因此本实验不是伪造 `T.prefetch`，而是验证显式 read-only cache load 是否能改善
v110 的同步权重搬运。

## 实现

基于 v110：

- 保持所有 grid、tile、MMA、同步和数值路径不变。
- 对 Step1 每个 even/odd K tile 的 Gate 低半 N（Gate0）使用一次 128-bit
  `T.__ldg<uint32x4>`，再以 8 个编译期常量 lane 写入原有 swizzled shared buffer。
- Gate 高半及全部 Up 仍走原来的 `T.copy`。
- 该探针覆盖 Step1 Gate/Up 权重字节的 1/4，足以检测显式只读缓存路径是否存在稳定信号，
  同时把改动面控制在单一变量。

实现过程中排除了三种不合法 lowering：

1. `T.Buffer(data=...)`/`T.decl_buffer` 的 shared 向量别名被存储规划器当作额外分配，
   动态 shared 膨胀到 145664 B，超过 65536 B 限制。
2. `T.match_buffer` 不能再次绑定已经作为输入 Buffer 绑定的参数。
3. 对 swizzled shared 的向量切片写触发布局推断错误；动态 `Shuffle` lane 又不被
   MetaX C codegen 接受。

最终使用常量 lane 展开后可正常编译、启动和执行，没有增加 shared allocation。

## 合规与正确性

- OJ AST/import validator：PASS。
- 仅使用 `torch`、`tilelang`、`tilelang.language` 和原有 TileLang primitive。
- 无 async copy、源码注入、外部模块、结果缓存或预计算输出。
- 与 v110 对比（完整输出张量）：

| Case | max abs | mean abs | strict mismatch (1e-2) | OJ mismatch (5e-2) |
|---|---:|---:|---:|---:|
| 1 | 0 | 0 | 0 | 0 |
| 2 | 0 | 0 | 0 | 0 |
| 3 | 0 | 0 | 0 | 0 |

## 稳定 AB/BA（3 轮，每段 20 次）

| Case | v110 每轮均值 ms | 候选每轮均值 ms | 每轮变化 % | 中位变化 % |
|---|---|---|---|---:|
| 1 | 2.885536 / 2.888448 / 2.884390 | 2.885152 / 2.885645 / 2.884262 | -0.013 / -0.097 / -0.004 | -0.013 |
| 2 | 4.507079 / 4.508576 / 4.510912 | 4.505120 / 4.509408 / 4.507405 | -0.043 / +0.018 / -0.078 | -0.043 |
| 3 | 8.729037 / 8.728659 / 8.727424 | 8.736454 / 8.739405 / 8.741370 | +0.085 / +0.123 / +0.160 | +0.123 |

注：本机绝对时间受当时 GPU 状态影响，判定只使用同一时段交错 AB/BA 的相对变化。

## 解释与后续约束

显式 `T.__ldg` 没有产生可测收益，并在最长 Case3 上呈稳定微回退。这说明至少对
v110 当前的 Gate0 访问，普通 128-bit `T.copy` 生成路径已经获得了足够的缓存行为，
或者权重 tile 的复用距离/工作集使只读缓存提示无效；这里缺少的不是一个同步 cache
hint，而是真正能提前发出并与 MMA 重叠的 global-to-shared 机制。后者在当前 SDK 中
只通过被禁止的 async/BSM 路径暴露。

所以后续不要重复以下变体：

- 把 `T.__ldg` 从 Gate0 扩到 Gate1/Up0/Up1；当前 1/4 流量探针没有正信号，扩大只会
  增加常量 lane 解包/写回压力。
- 通过别名 Buffer 强行做向量 shared store；当前存储规划与 layout inference 不支持。
- 把 cp-async 的 L2 prefetch 伪装成同步方案。

## 文件与哈希

- 候选快照：`20260826_v110_step1_sync_readcache_gate0_sc-16g.py`
- 评测脚本：`20260826_v110_step1_sync_readcache_gate0_sc-16g_eval.py`
- 候选 SHA256：`6a0f3d65e4c71907a8edea7056eb31fdf6d6ff58d9c43f4145530b3a4e764276`
- 临时评测脚本 SHA256：`381fa58007850f04c069e5c2d3543014a8b1650bcf7d2f338d5d4875e4f63b45`
- v110 submission SHA256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
