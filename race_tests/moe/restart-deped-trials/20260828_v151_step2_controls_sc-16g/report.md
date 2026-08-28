# v151 动态 long-Step2 对照封口（sc-16g）

可靠性能父版本：v151，SHA-256
`bd123e3d5accd98bb572ab64acfa9bffcc37578d04b4f6ef9f812230f01f2fd5`。

## M256 等面积救活版：拒绝

该对照将历史 v143 的两个 M128 accumulator half 改为运行期
`expert_rank` 映射，消除了静态 expert-ID 假设；同 shape 的交错 short/long
expert 整张输出严格 PASS。

单轮 warmup=0/repeat=1 显示 `-0.7037%`，本就低于 1.2% 门槛；mcTracer
进一步证明这不是可晋级收益：

| Step2 | 时间 |
|---|---:|
| v151 单 kernel | 2.617344 ms |
| 对照 short M128xN256 | 1.039872 ms |
| 对照 long M256-equivalent x N128 | 1.592320 ms |
| 对照合计 | 2.632192 ms |

拆分后 Step2 实际增加约 `14.848 us`。long kernel 使用 224 个 MT registers；
两套 M128 fragment 保留了过多无效 accumulator 状态，抵消 Down 权重复用。

同一想法改成单一 M192xN128 fragment 后，long kernel 降为 190 个 MT
registers，并晋级为 v152。因此不要再重复“双 M128/M256-equivalent”结构；
后续以真正 M192 fragment 为父路径。
