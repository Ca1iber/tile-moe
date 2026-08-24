# 2026-08-24 v091 A-first 后续筛选（sc-16g）

## Baseline

- Parent：v091 local candidate，SHA-256 `ad8c12ab0264dc54b89bff436fc6a4263baea42183b5b704d9d58c579ed0d7d8`。
- 协议：Case2 完整 padded correctness 后，同进程 5-round AB/BA，`warmup=100`、`repeat=100`。
- 晋级门槛：相对 v091 至少提升 `1.2%`。

## Remaining producer permutations

| Order | Paired median | pstdev | Verdict |
|---|---:|---:|---|
| `A -> G0 -> U0 -> G1 -> U1` | -0.154251% | 0.054257% | reject；低于门槛 |
| `A -> U0 -> G0 -> G1 -> U1` | -0.025205% | 0.094790% | reject；噪声 |

两者 correctness 均 PASS。A 已经位于合法最前位置后，后续四段 Gate/Up producer 的排列没有继续产生可晋级收益，不再扩展排列 sweep。

## ISA clue

v090 与 v091 Case2 Step1 最终 MetaX ISA opcode 数量对比：

| Opcode class | v090 | v091 |
|---|---:|---:|
| total instructions | 3119 | 3115 |
| `snop` | 367 | 363 |
| `ldg` | 28 | 28 |
| `stg` | 16 | 16 |
| `lds` | 64 | 64 |
| `sts` | 16 | 16 |
| MMA | 256 | 256 |
| barrier | 4 | 4 |
| arrive | 91 | 91 |

除少 4 条 `snop` 外，静态指令集合不变；v091 的约 2.7% 收益主要来自相同同步 A 请求更早发出后的动态 latency overlap，而不是减少逻辑流量、MMA 或同步。

## Closed alternative

既有 BM256/双 tile 研究已经证明：减少 184-row expert 的重复权重读取能提高 issued arithmetic intensity，但 8-wave/512-thread 协调或 4-wave BM256 operand-feed 代价造成明显回退。除非出现新的 layout/多 kernel feed 机制，不重开该方向。

## Conclusion

没有 follow-up 达到 `1.2%`，不创建 v092、不修改 v091 candidate。下一项硬门禁是 exact v091 的外部 OJ；后续正常优化应寻找新的 Step1 latency-hiding 机制，而不是继续排列 Gate/Up producer。
