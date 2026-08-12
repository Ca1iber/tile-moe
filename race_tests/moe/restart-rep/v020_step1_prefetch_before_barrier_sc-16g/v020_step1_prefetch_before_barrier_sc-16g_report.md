# v020_step1_prefetch_before_barrier_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted，限定 `experts == 32`
- 一句话因果结论：在不改变资源和有效访存/MMA/barrier 数量的前提下，将 A global→register load 放到两路权重 staging 之后、权重就绪 barrier 之前，使后端少插入 4 条 `snop`，Case2 OJ 中位下降 `0.304%`；同一顺序在 Case3 回退 `1.764%`，因此按 expert 数静态特化。

## Identity

- Machine：sc-16g，MetaX C500，25% sGPU，16 GiB VRAM quota
- Parent branch / commit：`dorm` / `f112c83afe51c4c8ef3e1dd42a8ffd9a0921457b`
- Parent source SHA-256：`35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0`
- Final source / installed main SHA-256：`0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad`
- Rejected global candidate SHA-256：`a9acdfdc9054d2e16a9dcc0622668e44064fd185529313e8b14cd26500f13688`
- Rejected input-first SHA-256：`086984f686ea42645888ac55ea5ac856bba9a228a6be168d28b4683ecff0cad0`
- Official benchmark SHA-256：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- OJ benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`
- KMD / MACA / mx-smi：3.8.30 / 3.7.1.5 / 2.3.1
- MXCC：1.0.0 (`d9102a1572`)，xcore1000
- Python / PyTorch / TileLang：3.12.11 / 2.8.0+metax3.7.1.3 / 0.1.9+cuda.gitf112c83a

完整环境与 dirty-worktree 审计见 `v020_step1_prefetch_before_barrier_sc-16g_environment.txt`。未修改或暂存原有 `3rdparty/tvm`、`.db`、v011/v012 遗留文件。

## Correctness

### 官方 fusedmoe benchmark

- Functional：2/2 PASS
- Performance completion：80.68501465 ms（8 experts）与 25.66938232 ms（4 experts）
- 说明：官方两组 performance shape 均不进入 v020 的 32-expert 新路径，只用于回归验证，不用于估计本轮收益。
- 原始日志：`correctness/official_source.log`

### OJ

所有 OJ 结果均使用项目 `oj_benchmark.py` 的 reference 与原容差，最大绝对误差均为 `0.001953125`：

| Case | experts / hidden / intermediate / tokens | installed v020 | 状态 |
|---|---|---:|---|
| 1 | 16 / 2048 / 8192 / 2272 | 3.072233 ms | PASS |
| 2 | 32 / 7168 / 2048 / 4544 | 5.326976 ms | PASS |
| 3 | 64 / 7168 / 2048 / 9088 | 10.328750 ms | PASS |

原始日志见 `benchmark/installed/`。

## Benchmark

### Case2 严格热态确认

协议：4 对独立进程 AB/BA，warmup=10、repeat=100；每个样本重新加载明确的 source snapshot。

| Pair | parent ms | candidate ms | candidate change |
|---:|---:|---:|---:|
| 1 | 5.341639 | 5.326469 | -0.284% |
| 2 | 5.346803 | 5.328417 | -0.344% |
| 3 | 5.346353 | 5.329055 | -0.324% |
| 4 | 5.345103 | 5.334405 | -0.200% |

- parent 中位：5.345728 ms
- candidate 中位：5.328736 ms
- paired 中位变化：`-0.304%`
- 4/4 同方向；parent/candidate 标准差分别约 0.002024/0.002940 ms。

第一轮三对试跑中，设备长时间空闲后的首个 parent 为 6.509343 ms，随后样本恢复至约 5.34 ms。该 cold-state outlier 原样保留在 `benchmark/paired_case2/`，不纳入结论；热态确认数据在 `benchmark/paired_case2_confirm/`。

### Case3 反证与特化

全局跨 barrier 候选的三对结果：`+1.783/+1.764/+1.707%`，中位 `+1.764%`。parent/candidate 中位分别为 10.334231/10.514199 ms，3/3 一致回退。因此最终版本对 64 experts 恢复 v019 顺序。

selective lowering 的 Case3 C++ 与 parent 字节完全一致，SHA-256 都是 `c80f44d8cb492426128f8b984e7279b4110d66c3adb9e54114e4ca80518c2db8`。

### input-first 反证

input-first Case2 为 5.466813 ms，相对 parent 热态中位回退 2.265%，相对 weight-first 候选回退 2.591%。它证明 A 不能抢在 gate/up 权重之前发射，权重仍位于关键路径。

## mcTracer

协议：Case2，3 对 AB/BA，每份 trace 预热 3 次，只捕获一次 Step1+Step2。

| Pair | Step1 change | Step2 change | device-span change |
|---:|---:|---:|---:|
| 1 | -1.396% | -0.014% | -0.914% |
| 2 | -0.961% | +0.515% | -0.458% |
| 3 | +0.412% | +0.789% | +0.621% |

- Step1 中位：3.543296→3.509248 ms，中位变化 `-0.961%`
- Step2 中位：1.789184→1.797632 ms；Step2 代码未变，混合方向视为 trace replay 噪声
- device span 中位变化：`-0.458%`
- 第三对 candidate 整条 trace 同步偏高；因此 elapsed-time 验收以 4/4 OJ 为主，mcTracer 只用于分阶段定位。
- 原始 trace、命令和逐样本 summary：`profiler/mctracer/case2_paired/`

## mcProfiler

Case2 Step1 targeted replay 内部一致：

- achieved waves = dispatched waves = 2,863,304（parent/candidate 相同）
- private read/write instructions = 0/0
- shared access：两者均报告 100% non-conflicting
- VLS pipeline stall：`1,575,308,860→1,205,212,186`，`-23.494%`
- total cycles：`+0.533%`，与 OJ/mcTracer 方向冲突
- global read bytes：`-5.590%`，但静态 global-load 数完全相同

因此该 replay 没有内部波次数/private 异常，但跨 metric 方向混合。只采用 VLS stall 作为“后端调度空泡减少”的辅助证据；OJ 是端到端时延权威，mcTracer 是分阶段时延权威。原始报告及汇总见 `profiler/mcprofiler/`。

## Lowering、C++ 与 ISA

### 生成 C++

Case2 selective C++ 与全局获益候选字节相同，SHA-256 均为 `2a0755c62f768b8d81b0b669dd3616a91846c03508708616ea8206306414f0eb`。相对 parent 只有两处变化：A load loop 从权重 barrier 后移动到 barrier 前。

Case3 selective C++ 与 parent 字节相同，避免了已实测的 1.764% 回退。

### 编译资源

| Kernel | MT | ST | waves/PEU | stack | private/spill |
|---|---:|---:|---:|---:|---:|
| Step1 parent | 226 | 52 | 2 | 0 B | 0 |
| Step1 candidate | 226 | 52 | 2 | 0 B | 0 |
| Step2 parent/candidate | 196 | 28 | 2 | 0 B | 0 |

### 最终 xcore1000 ISA

| Step1 静态项 | parent | candidate |
|---|---:|---:|
| code bytes | 24832 | 24800 |
| total instructions | 3104 | 3100 |
| `snop` | 367 | 363 |
| MMA | 256 | 256 |
| global load/store | 34 / 16 | 34 / 16 |
| shared load/store | 64 / 16 | 64 / 16 |
| barrier / arrive | 4 / 92 | 4 / 92 |
| private load/store | 0 / 0 | 0 / 0 |
| spill annotations | 0 / 0 | 0 / 0 |

有效指令和资源完全不变，仅减少 4 条 `snop`。这为 0.3% 级微优化提供了比高层 runtime 更具体的机制解释。

## mx-smi 与 Roofline

- 同步采样 workload：installed Case2，warmup=10、repeat=200，5.330577 ms，PASS
- sGPU：Compute 25%，VRAM quota 16000 MiB；原始采样在 `profiler/mxsmi/`
- Step1 schedule-implied arithmetic intensity：84.8284 FLOP/B
- 使用 1400 GB/s sc-16g sensitivity roof：仍处于 HBM 区域
- paired mcTracer 中位 throughput：101.820→102.808 TFLOP/s
- 对 1400 GB/s roof 的效率：85.736%→86.568%

Roofline 图与点数据位于 `../../moe-roofline/v020_step1_prefetch_before_barrier_sc-16g/`。1400 GB/s 是 25% slice 的 sensitivity/model roof，不应表述为厂商保证值。

## Causal interpretation

1. 生成 C++ 确认 A load 实际跨过 barrier，非 dead change。
2. 资源、有效访存、MMA 和 barrier 数不变，排除 occupancy、数据量与计算量变化。
3. ISA 少 4 条 `snop`，mcProfiler VLS pipeline stall 同方向下降，支持“减少等待空泡”的机制。
4. OJ 4/4 稳定获益，mcTracer 中位把收益定位到 Step1。
5. Case3 与 input-first 两个反例说明收益依赖网格饱和度和 issue priority，不能把“更早预取”作为无条件规则。

最终决定：接受 32-expert selective 版本；64-expert 保留 v019。下一轮应围绕 Case2 的剩余 barrier/weight critical path 做局部调度实验，并继续要求 C++/ISA/配对时延共同闭环。
