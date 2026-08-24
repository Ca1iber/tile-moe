# 2026-08-25 v094 split-A 调度后续筛选（sc-16g）

## Baseline 与规则

- Parent：`v094_case3_split_a_gate0_step1_sc-16g`，commit `b39335c1`。
- 关键机制：Case3 Step1 使用 `A-low64 -> Gate0 -> A-high64 -> Gate1 -> Up0 -> Up1`。
- 晋级门槛：相对 exact v094 的同进程 AB/BA 中位数至少提升 `1.2%`，并通过三 Case 完整 padded correctness 与 OJ source/generated gate。
- 本轮只用同步 TileLang primitive；无 async、foreign source、结果缓存或 harness 改动。

## v094 profile 线索

Case3 Step1 的 targeted mcProfiler（同一 source-bound 多 pass）显示，v094 相对 v093：

- MTE duty `43.65 -> 44.13`；MMA duty `24.1 -> 24.2`。
- global-read proxy `38,661,022,912 -> 37,319,785,056`，下降 `3.469%`。
- VLS pipeline stall `1,942,689,898 -> 951,546,702`，下降 `51.019%`。
- 四个 VL1 point stall 均下降约 `13%--15%`。
- clean paired endpoint 为 `-1.597%`；修正后的三-kernel mcTracer 将收益定位到 Step1 `-2.985%`。

因此后续优先验证 producer staging、A split 形状和 odd/even 生命周期，而非静态删指令。

## Case3 A split 形状与来源

| Trial | Correctness | Paired change vs v094 | Verdict |
|---|---|---:|---|
| direct original row-major + nearly-empty prepack | PASS | `+7.784%` quick screen | reject；tile-major workspace 仍必要 |
| K-column `32/32` split | PASS | `+2.184%` quick screen | reject；收益依赖 M/wave split |
| contiguous M `32/96`，odd+even | PASS | `+1.691%` | reject |
| contiguous M `96/32` | FAIL | large mismatch | reject |
| wave `0+2 / 1+3` 单循环 | lowering FAIL | non-injective fragment layout | reject |
| wave `0+2 / 1+3` 双循环 | FAIL | `30.2%` mismatch | reject；producer mapping 不一致 |
| wave-granular padding load | PASS | `+0.399%` | reject |
| unconditional 64+64 A load | PASS | `+1.807%` | reject；padding traffic 明显有成本 |
| odd split only，even full-A | PASS | `+0.895%` | reject |
| even split only，odd full-A | PASS | `+0.536%` | reject |
| odd32 / even64 | PASS | `+0.770%` | reject |
| odd64 / even32 | PASS | `+0.713%` | reject |

结论：odd 与 next-even 两段都贡献收益，且各自的连续 `64/64` 是稳定局部最优；K split、交错 wave、32/96 和取消细粒度谓词均不能迁移。

## Case3 producer interposer 与位置

| Trial order | Correctness | Paired median | Verdict |
|---|---|---:|---|
| `A0 -> G0 -> G1 -> A1 -> U0 -> U1` | PASS | `+2.012%` | reject |
| `A0 -> G0 -> G1 -> U0 -> A1 -> U1` | PASS | `+7.468%` | reject |
| `A0 -> G0 -> A1 -> U0 -> G1 -> U1` | PASS | `-0.039%` | noise |
| `A0 -> U0 -> A1 -> G0 -> G1 -> U1` | PASS | `+0.144%` | noise/regression |
| `A0 -> G1 -> A1 -> G0 -> U0 -> U1` | PASS | `+0.274%` | reject |
| `A0 -> G0-low32 -> A1 -> G0-high32 -> G1 -> U0 -> U1` | PASS | `+1.700%` | reject |

Gate0 的低 N 半块是最优 interposer；完整 `64x64` producer 是有效粒度，继续拆成 32-row copy 会稳定回退。

## 其他隔离组合

- Case3 手工 wave/vector 映射：PASS，`+0.051%`，说明 compiler dynamic mapping 已足够。
- Case2 native A wave split：PASS，`-0.481%`，稳定但低于门槛。
- Case2 native vector/K-half split：PASS，`+1.255%`，reject。
- Case1 odd-only split：PASS，`+0.375%`；even-only split：PASS，`-0.126%` 且有噪声；均不晋级。
- Case2 将 native wave split、actual-row prepack、`G0->U0->G1->U1` 三个历史同向小项组合：PASS，但 `+0.563%`；native prepack 的细粒度谓词破坏整块搬运，收益不相加。
- Step2 naive quarter interleave：FAIL，约 `45.2%` mismatch。
- Step2 explicit quarter mapping：PASS，但 `+51.834%`；quarter 粒度完全关闭，保留既有 two-stage half interleave。

## Decision

本轮没有相对 v094 达到 `-1.2%` 的新候选，因此：

- 不创建 v095；
- 不修改 `restart-submission`；
- 不移动性能父源码；
- 保留 v091--v094 各自独立的 `candidate_submission.py`，等待外部 OJ 批量验证。

v094 的后续搜索应切换到新的结构轴，不再重复 A split 比例、producer 排列、padding A load、Case1/2 split 迁移或 Step2 quarter staging。
