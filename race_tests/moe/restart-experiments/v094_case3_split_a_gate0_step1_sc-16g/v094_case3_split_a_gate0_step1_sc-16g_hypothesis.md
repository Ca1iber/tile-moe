# v094 hypothesis

## Observation

v092/v093 把 Case3 的整块 non-native MMA-A fragment 提到 Gate0 前，Step1 已稳定加速，但 MT 寄存器从 224 增到 228。旧版 v59 又证明 input 分半与权重 producer 交错能隐藏延迟，说明“越早发 A”与“不要一次压入完整 A”可能需要同时满足。

## Hypothesis

Case3 的 odd 和 next-even producer 改为 `A-low -> Gate0 -> A-high -> Gate1 -> Up0 -> Up1`，应在保持第一批 A 请求提前的同时，缩短高半 A 的存活区间并分散访存请求。若它只改变 Case3、完整输出正确，且相对 v093 的 Case3 配对中位改善至少 1.2%，则晋级本地候选。

## Falsifier

- Case3 配对中位改善小于 1.2%；
- Case1/2 生成代码不再与 v093 相同；
- private spill、occupancy 降档、OJ 禁用项或完整 padded-output 错误；
- 收益只来自 launch gap，而非真实 Step1。
