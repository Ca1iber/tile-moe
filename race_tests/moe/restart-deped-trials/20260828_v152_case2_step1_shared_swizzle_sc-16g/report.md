# v152 Case2 Step1 shared swizzle 粒度封口（sc-16g）

状态：**拒绝；默认 full-bank 保持最优。**

## 假设

新鲜 mcProfiler 显示 Case2 Step1 的 VLS stall约 42.8%。父版的
`128x64 fp16` Gate/Up shared panel由 `make_swizzled_layout` 自动选择
128B full-bank XOR layout。本轮保持 M128xN128、`16x48` grid、K-pair顺序、
全局流量和所有计算完全不变，只替换 Step1 Gate/Up shared layout：

- 64B half-bank；
- 32B quarter-bank。

调用通过已允许的 `tilelang` 根包属性完成；OJ validator PASS。无 async、注入、
builtin、缓存或额外预处理。

## 结果

| 布局 | SHA-256 | 整张输出 | 父 ms | 候选 ms | 变化 |
|---|---|---|---:|---:|---:|
| half-bank | `1a58a6fe0422dadd7194c5c990aadd8e842a75934b319f45786a5ed76f3fbec4` | PASS | 3.930330 | 3.935616 | +0.1345% |
| quarter-bank | `0662924a111a8d3a7dd4deed54d5335990ecd0017507509acb6d3dfd2e5e1c96` | PASS | 3.922355 | 4.086605 | +4.1875% |

half-bank 属于噪声级略慢，quarter-bank 明确破坏供数效率。VLS stall不能直接
解释为默认 shared layout 的 bank conflict；缩小 swizzle 粒度没有优化空间。
后续不要重复 half/quarter/linear layout 扫描，继续保留 full-bank。
