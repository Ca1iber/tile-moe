# v110 Step1 下一 Gate 权重寄存器流水实验（sc-16g）

## 结论

拒绝。候选在 Case3 与 v110 **逐元素完全一致**，但 AB/BA 中位运行时间从 `7.56260 ms` 增至 `10.03944 ms`，回退 `32.751%`。它远未达到候选门槛 `1.2%`，不创建编号版本、不创建 submission，也不推进 `dorm`。

## 假设与唯一改动

- 基线：外部 OJ 已 AC 的 v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 假设：在当前 Gate/Up MMA 期间，把下一 `128x64` Gate 权重 tile 预取到线程私有寄存器，随后再写入 shared，可用 MMA 隐藏同步全局读延迟。
- 改动：为 Step1 增加 `gate_prefetch[4, 8]` 本地缓冲；Gate 使用寄存器软件流水，Up、A-input ping-pong、MMA 交错、字节数、网格、barrier 语义均保持不变。
- 合规：只使用 `torch`、`tilelang` 与 TileLang 原语；没有异步拷贝、代码注入、结果缓存或平台外导入。

历史审计确认，v118/v119 只重排当前 tile 的 global-to-shared cooperative copy，v069/v070 只串行化 Gate/Up 累加器；此前没有跨 MMA 生命周期持有下一完整 Gate tile 的同构实验。

## 正确性与计时

Case3 固定种子 `20260720`，父子共享输入；预热各 3 次；每个样本采用 `P-C-C-P`，每段 20 次，重复 3 组。

| 指标 | 结果 |
|---|---:|
| max abs diff | `0` |
| mean abs diff | `0` |
| strict mismatch (`1% + 0.01`) | `0` |
| OJ mismatch (`5% + 0.05`) | `0` |
| v110 样本 (ms) | `7.5626049, 7.5650753, 7.5585663` |
| 候选样本 (ms) | `10.0394432, 10.0356865, 10.0342014` |
| 单组变化 | `+32.7511%, +32.6581%, +32.7527%` |
| 中位变化 | `+32.751%`（回退） |
| 均值变化 | `+32.721%`（回退） |

只跑 Case3 是有意的：该改动仅触及 Step1，而 Case3 是最长、噪声最小的官方形状；超过 32% 的稳定回退已经足够终止，不应浪费 GPU 时间扩展到 Case1/2 或 mcProfiler 全指标采样。

## 编译资源与 MetaX ISA

同一 `capture_codegen.py`、MXCC `-O3 -resource-usage` 和同一 Case3 形状下：

| Step1 指标 | v110 | 候选 | 变化 |
|---|---:|---:|---:|
| MT registers/thread | 226 | 232 | `+6` |
| ST registers | 42 | 42 | `0` |
| static max waves/PEU | 2 | 2 | `0` |
| private stack frame | 0 B | 68 B | `+68 B` |
| static instructions | 3030 | 3096 | `+66` |
| `ldg_b128` | 28 | 32 | `+4` |
| `ldp_b128` | 0 | 8 | `+8` |
| `stp_b128` | 0 | 12 | `+12` |
| `snop` | 363 | 366 | `+3` |
| MMA | 256 | 256 | `0` |

关键证据不是名义 occupancy（仍为 2 waves/PEU），而是候选第一次产生了 `68 B` private stack frame，并在 Step1 静态 ISA 中引入 `8` 条 `ldp_b128` 和 `12` 条 `stp_b128`。也就是说，完整下一 Gate tile 的长生命周期把部分寄存器值溢出到 private memory；新增 prefetch 没有减少 LDG/MMA 工作，反而增加 4 条 LDG、20 条 private load/store 以及额外地址/控制指令。这个 spill 成本发生在 K 循环内，足以解释稳定的 32.75% 回退。

## 决策边界

- “完整 B tile 跨 MMA 寄存器流水”在 v110 的 226 MT register 基线上不可行；即使静态 waves 未再下降，也会越过无 spill 的资源边界。
- 后续若重访，只能先把 Step1 降到明显低于 226 MT registers，或把预取粒度限制到不产生 private stack frame；不得原样重复完整 `128x64` Gate tile 方案。
- 本实验为负结果，按规则仅进入 `restart-deped-trials`。

## 归档文件

- `20260826_v110_step1_gate_register_pipeline_sc-16g.py`：候选源码。
- `20260826_v110_step1_gate_register_pipeline_sc-16g_eval.py`：固定种子正确性与 AB/BA 脚本。
- `20260826_v110_step1_gate_register_pipeline_sc-16g_resource_usage.json`：候选 codegen/resource 摘要。
- `20260826_v110_step1_gate_register_pipeline_sc-16g_isa_summary.json`：父子 Step1 ISA 对比。
