# v110 在 v143 WA 后的鲁棒映射与长 tile 探索（放弃）

## 结论

本批没有可晋级候选。v143 已因依赖固定 expert 行数排列而被外部 OJ 判定 WA；本批所有可计时修复都从 external-OJ-AC v110 重新开始，并要求运行时从 `group_sizes`、`group_padded_offsets` 或 `group_idx_for_bx` 推导映射。所有正确变体均未达到相对直接父版本至少 1.2% 的门槛，因此：

- 不创建编号版本；
- 不创建 `restart-submission`；
- `dorm` 的可靠 SOTA 仍为 v110；
- v110 submission SHA-256 为 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。

负数表示候选更快，正数表示回退。短测均采用同进程 parent/candidate、固定 seed、完整输出比较和交错 AB/BA；未达到 1.2% 的结果不视为优化。

## 结果汇总

| 方向 | 正确性 | 端点结果 | 决定 |
|---|---|---|---|
| Step2 按 expert 启动两个 long slots，运行时跳过不存在的第二块 | 三 Case bit-exact | Case1 `-0.517%`，Case2 `-0.300%`，Case3 `+0.870%` | 50% 空 CTA 在 Case3 抵消复用收益，拒绝 |
| 用 `group_padded_offsets[e] / 128 - e` 做 7 步 prefix-select 映射 | Case3 bit-exact | Case3 `+0.320%` | 映射计算本身没有正信号，拒绝 |
| 32-lane subgroup 广播动态映射结果 | Case3 bit-exact | 只广播核心值约 `-0.507%`；广播全部 metadata 约 `-0.438%` | 真实但低于门槛，拒绝 |
| 在 padding row 写 5-field CTA metadata table | Case3 bit-exact | Step1 尾部串行构建约 `-0.701%`；移到 prepack 并行构建约 `-0.589%` | 低于门槛，拒绝 |
| 对原始 v110 普通 Step1/Step2 metadata 做 32-lane广播 | 三 Case bit-exact | `+0.208% / +0.106% / -0.028%` | 原访问已经被缓存/合并，拒绝 |
| FP16 SiLU reciprocal，`exp2` 保持 FP32 | 三 Case满足 OJ 容差，`max_abs=0.001953125` | `-0.143% / +0.071% / +0.026%` | 无端点收益，拒绝 |
| FP16 SiLU reciprocal 与 FP16 `exp2` 输入 | 三 Case满足 OJ 容差，`max_abs=0.001953125` | `+0.057% / +0.021% / +0.066%` | 无端点收益，拒绝 |
| Step1 长 expert 合并为共享 B 的独立-wave CTA | 见下节 | 见下节 | 执行结构失败，拒绝 |

## 动态映射的关键证据

### 64-lane shuffle 不可用

把运行时 CTA 映射由单线程计算后用 `T.tvm_warp_shuffle(..., width=64, warp_size=64)` 广播会产生 NaN，并回退约 16.9%。改用 MetaX 实际可工作的 32-lane subgroup：

```python
if thread_id % 32 == 0:
    value = ...
value = T.tvm_warp_shuffle(-1, value, 0, 32, 64)
```

即可恢复逐元素正确。这证明当前后端的 shuffle 同步/可见范围应按 32-lane subgroup 使用，不能把 C500 wave64 直接等同于一个 shuffle width64 域。

### metadata 不是 v110 普通 CTA 的主瓶颈

在 exact-v110 的普通 Step1/Step2 上广播 `expert_id`、`actual_rows`、`block_start` 等 metadata，三 Case 均无稳定收益。只有在额外引入复杂动态映射时，subgroup 广播或 padding-row 表才回收约 0.4%--0.7%。因此这类机制只能降低“新映射附加税”，不能独立推动 v110 超过 1.2%。

## 长 expert 独立-wave 结构

历史串行 `M256xN64` 探针已证明共享 Gate/Up B tile 能减少 13.63% global read 和 29.65% VLS pipeline stall，但端点回退约 2.3%。本批按历史报告的唯一重启条件，让四个 wave 独立负责：

- wave0/1：上半 `M128xN64`；
- wave2：下半 `M64xN32` 左半；
- wave3：下半 `M64xN32` 右半。

结果分三步：

1. 分别声明 top/bottom0/bottom1 六组 accumulator fragment 时，编译器没有按 wave 缩短 live range。长 Step1 达到 `256 MT / 42 ST / 2 waves`，Case3 约 `93.55 ms`，并产生大面积错误（`max_abs=2.8436`、OJ mismatch 约 962 万）。
2. 改为一个统一四-wave fragment 后结果与 v110 bit-exact，但 Case3 中位回退 `+4.129%`。
3. 再把 bottom 两个 wave 的 B fragment load 从 N64 缩为各自 N32，结果仍 bit-exact，回退反而扩大到 `+7.711%`。

最终 scratch 源码 SHA-256 为 `1459783f1d26262e21d0bc420512a4cc1dd6bb6dfd39d5eb08d853f7aad1c025`。它只用于机制审计，并且仍带固定 long-expert 位置假设，不能成为 OJ submission。

## 因果判断

1. v143 的收益来自固定位置特化，不能通过简单加一个动态映射修复；映射修复本身至多出现约 0.7% 的局部信号。
2. 合并长 expert CTA 的 B 流量节省是真实的，但 wave 分支、fragment live range、CTA 级并行度下降和后端 lowering 成本超过节省；连独立 wave 组织也没有转化为 wall-clock 收益。
3. 后续不要重复 expert-grid 空槽、prefix-select、metadata 广播、padding-row table、FP16 reciprocal 或 `M256xN64` 共享 B 的同构变体。
4. 下一轮应回到 v110 的普通 `M128xN128` CTA，并寻找不增加动态控制流、不降低 CTA 数、也不扩大 fragment live range的机制。

## 临时证据

原始 probe、evaluator、codegen 与短测输出位于远端 `/root/moe_runs/probe_v110_*` 和 `/root/moe_runs/run_v110_*`。本报告是这些放弃方向的持久摘要；它们不得进入 `restart-submission`。

## 后续谓词探针状态

远端连接恢复后，16/32-row consumer、producer 及两种 producer/consumer
contract 共五个无编号探针已经全部完成 GPU 验证。官方分布与置换 expert-ID
分布均 bit-exact，但最佳端点只有 Case2 `-0.158%`，其余为噪声或轻微回退；
没有任何版本接近 `-1.2%` 门槛，全部放弃。

详细源码身份、逐 Case AB/BA、额外 workspace 流量和因果判断见同目录
`20260826_v110_native_workspace_predicate_rounding_sc-16g.md`。该结果进一步关闭
`actual_rows` 谓词 rounding / padding prefill 轴，不改变本报告裁决。
