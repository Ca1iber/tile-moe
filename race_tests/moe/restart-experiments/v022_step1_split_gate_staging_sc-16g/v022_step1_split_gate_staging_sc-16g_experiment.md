# v022_step1_split_gate_staging_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g，MetaX C500 25% compute / 16 GiB sGPU slice
- 父版本：`v021_step1_gate_input_up_order_sc-16g`
- 当前最佳：`v022_step1_split_gate_staging_sc-16g`
- 父源码 SHA-256：`fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45`
- 最终源码及主文件 SHA-256：`96f2eb1c71e8bd5d8e3bde840e9497d3761475bb0b7bb1f5071e5beb54f553b8`
- 特化范围：仅 OJ Case2，即 32 experts / hidden 7168 / intermediate 2048 的 Step1。

## 假设卡

- Observed evidence / 已观测证据：v021 把两个 ping-pong 半轮都统一成 gate → A → up 后，Case2 Step1 明显变快且 MT register 从 226 降到 214；单看 TileLang 源码仍存在连续权重 load、等待、shared store 的串行窗口。
- Verified bottleneck / 已验证瓶颈：不是 FLOP 或全局读字节减少问题，而是 Step1 load/staging 调度导致的 VLS pipeline stall 与 operand live range。
- Current hypothesis / 当前假设：将 gate 和 A 的 staging 切成适当粒度并交错，可缩短一次进入等待队列的 global-load burst，提前提交 shared store，并进一步缩短地址/片段寄存器活跃区间。
- Proposed mechanism / 拟采用机制：在 Case2 的偶数、奇数 ping-pong 半轮中都执行 gate 前半 → A 前半 → gate 后半 → A 后半 → full up → barrier。
- Predicted metric changes / 预测：OJ Case2 与 mcTracer Step1 同向下降；MT register 或平均 wave lifetime 不上升；VLS pipeline stall 和流水延迟下降；动态 global bytes、MMA 数量、waves 和正确性保持不变。
- Falsifying result / 证伪条件：配对 OJ 未稳定越过噪声、Step1 trace 不下降、出现 private/spill、Case1/3 codegen 改变，或进一步切片破坏正确性。
- Risks / 风险：TileLang 的切片 `T.copy` 会改变线程映射和地址计算；过细切片可能导致 unroll 展开、寄存器膨胀或覆盖错误。

## 实施经过

| 候选 | 改动 | Step1 MT | 结果 | 决策 |
|---|---|---:|---|---|
| even-only | 只改偶数 ping-pong 半轮 | 226 | Case2 5.402276 ms | rejected |
| odd-only | 只改奇数半轮 | 214 | Case2 5.397448 ms | rejected；说明寄存器数本身不足以解释收益 |
| split-gate | gate 前半 → full A → gate 后半 → up | 220 | 4 组配对中位数 -0.740% | accepted intermediate |
| split-gate-and-up | gate、up 都拆半 | 220 | screen 5.144013 ms | rejected |
| interleave-halves | gate/A 各拆半并交错，两个半轮一致 | 212 | 4/4 OJ 正收益；Step1 trace 3/3 正收益 | **accepted final** |
| interleave-quarters | `T.unroll(4)` 四分块交错 | 256 MT / 72 ST | 82.0% 元素不匹配 | rejected / correctness failure |

最终实现没有增加 barrier、MMA 或动态工作量；它改变的是 load/wait/shared-store 的排序与地址 live range。Case1、Case3 生成的 device C++ 与 v021 字节完全相同。

归档：

- 最终源码：`v022_step1_split_gate_staging_sc-16g_custom_fusedmoe.py`
- 父版本、所有候选：`sources/`
- 最终补丁：`v022_step1_split_gate_staging_sc-16g.patch`
- 源码哈希：`v022_step1_split_gate_staging_sc-16g_source_snapshots.sha256`
- 完整证据：`../../restart-rep/v022_step1_split_gate_staging_sc-16g/`
- Roofline：`../../moe-roofline/v022_step1_split_gate_staging_sc-16g/`

## 结论

接受 half-interleave 作为 v022。严格 OJ Case2 配对中位数下降 1.812%，mcTracer Step1 中位数下降 3.530%，mcProfiler 的 VLS pipeline stall 下降 22.784%。quarter 版本的失败把可行粒度边界限定在 half：继续细切不是免费收益，会触发 lowering/thread-map 和寄存器压力问题。
