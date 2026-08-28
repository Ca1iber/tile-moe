# v149 后续方向封口（sc-16g）

可靠性能父版本为 external-OJ-AC v148。v149 静态 M128/M192 混合路径的
Case3 本地收益约 4.16%，但它错误地假设前半 expert 都 short、后半都 long；
该版本不是可提交候选。动态 expert-rank 表修复另行晋级为 v150，本文件记录
其余未达到 1.2% 门槛或明确回退的方向。

## 结果总览

| 方向 | Case | 严格正确性 | 配对变化 | 结论 |
|---|---:|---|---:|---|
| 将 M192xN64 hybrid 推广到 Case2 | 2 | PASS | 中位 `+4.6522%` | 拆成 5 个 kernel 后 Step1 总时长反增，拒绝 |
| long input prepack 两阶段复用 24 KiB shared | 3 | PASS | 5x20 中位 `-0.7592%` | 稳定但低于 1.2%，不编号 |
| 24 KiB prepack 去尾 barrier | 3 | PASS | screen `-0.8467%` | 低于门槛 |
| 24 KiB prepack 每 CTA 两个 column panel | 3 | PASS | screen `-0.8931%` | 本家族最好筛查，仍低于门槛 |
| 24 KiB prepack 每 CTA 四个 panel | 3 | PASS | screen `-0.6708%` | 低于门槛 |
| 2-panel + branchless Step1 native read | 3 | PASS | screen `-0.3070%` | 组合相互抵消 |
| 24 KiB prepack unroll 两阶段 | 3 | PASS | screen `-0.7099%` | 低于门槛 |
| 预打包 512-thread / 8-wave | 3 | PASS | screen `-0.5851%` | 增加访存 wave 有效，但预打包占比太小 |
| Step1 直接 global->shared A bridge | 3 | PASS | `+83.3316%` | shared fragment 搬运路径代价失控 |
| Step2 long-block-first 遍历 | 3 | PASS | `+3.8290%` | 破坏原有 Down/CTA 顺序局部性 |
| long M192xN64 Step1 6-wave | 3 | PASS | `+5.3556%` | wave 数增加 50%，调度成本超过寄存器下降收益 |

## 因果证据

### Case2 hybrid

父版本三 kernel 合计约 `3.900928 ms`；候选五 kernel合计约
`4.073472 ms`。候选虽然减少 padded work，但 short/long Step1 合计
`2.566656 ms`，比父版本 Step1 `2.442240 ms` 慢约 5.1%。Case2 的网格
更小，拆分 launch 和 N64 长路径的效率损失超过流量收益。

### long input prepack

原路径为 48 KiB shared、256 threads。将 192 行拆成两个 96-row 阶段，
复用 24 KiB shared，可将 prepack 的动态 shared 压半并稳定获得约 0.8%，
但形式化 5x20 未达到晋级线。512-thread 版本把静态上限提高到 8 waves，
同样只有约 0.59% 端到端收益，证明该 kernel 已不是足够大的优化杠杆。

### 6-wave long Step1

M192xN64 从 4 waves 改为 6 waves 后，单 wave tile 从 M48xN64 变为
M32xN64，MT registers `206 -> 134`、静态 wave 上限 `2 -> 3`。首次运行
暴露原 256-thread weight producer 对新增线程的 shared 越界；显式限制前
256 个 producer 后，代码生成和严格正确性均通过。但总 dispatched waves
增加 50%，端到端仍回退 5.36%，因此拒绝。

## 动态正确性结论

同 shape 交错 expert 排列 `[100,184,100,184,...]` 会使静态 v149 产生
大规模错误。逐 CTA 扫描 `group_sizes` 的修复严格正确，但相对静态 v149
约回退 1.19%。改为每次调用由一个 64-thread TileLang kernel 重建 64 项
rank 表后，相对静态版本只损失约 0.8%，且相对可靠 v148 的精确 5x20
Case3 中位仍提升 3.43%；该修复已独立整理为 v150 候选。

后续不要重复普通 prepack phase/panel、Case2 直接 hybrid、6-wave M192N64
或 Step2 简单遍历置换。只有能减少主 Step1/Step2 的真实权重读取、而不增加
wave/CTA 总数的新机制，才值得重新打开这些家族。
