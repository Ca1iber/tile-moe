# v020_step1_prefetch_before_barrier_sc-16g 实验记录

## 身份

- 状态：accepted（仅对 32 experts 启用）
- 机器：sc-16g，C500 25% sGPU，16 GiB quota
- 父版本：v019_step1_input_pingpong_32e_sc-16g，commit `f112c83afe51c4c8ef3e1dd42a8ffd9a0921457b`
- 父源码 SHA-256：`35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0`
- 最终源码 SHA-256：`0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad`
- Kernel：`race_tests/moe/custom_fusedmoe.py`

## 假设卡

- Observed evidence / 已观测证据：v019 已把下一块 A 发射到上一块 MMA 前，但 A load 仍位于两路权重就绪 barrier 之后；生成 C++ 中 load、barrier、A load、MMA 仍有一段串行关键路径。
- Verified bottleneck / 已验证瓶颈：Step1 是 Case2/3 的主要耗时，且 v019 保持 2 waves、无 spill；继续增加寄存器不是本轮变量。
- Current hypothesis / 当前假设：先发射 gate/up 权重，再在 barrier 前发射下一块 A，可让不同 wave 的 A global latency 与权重 staging/barrier 等待重叠。
- Proposed mechanism / 拟采用机制：不改变 tile、grid、fragment、barrier 数量，只移动两处 A `T.copy` 的相对位置。
- Predicted metric changes / 预测指标变化：Case2 Step1 下降；Step2 不变；资源、MMA/global/shared/barrier 静态计数不变；pipeline stall 或后端等待空泡下降。
- Falsifying result / 证伪条件：严格配对不稳定、Step1 不降、Case3 回退或出现 occupancy/spill 恶化。
- Correctness and resource risks / 风险：A 与两路权重争抢 issue/带宽；64-expert 高并发网格可能已饱和，因此必须逐 shape 验证。

## 实施经过

### Candidate A：weight-first，所有 32/64 experts 跨 barrier

循环内先发射 gate/up 权重，再发射下一块 A，最后进入同一个 `T.sync_threads()`。Case2 四轮热态 AB/BA 全部获益，中位变化 `-0.304%`；但 Case3 三轮全部回退，中位 `+1.764%`。因此全局启用被拒绝。

### Candidate B：input-first，所有 32/64 experts 跨 barrier

把 A 进一步提前到 gate/up 权重之前。Case2 单次严格筛选为 `5.466813 ms`，相对 v019 热态中位 `5.345728 ms` 回退 `2.265%`，相对 Candidate A 回退 `2.591%`。资源不变，说明权重必须优先发射；该候选被拒绝。

### Candidate C：selective 32 experts

新增静态调度参数 `use_step1_prefetch_before_barrier`：

- `experts == 32`：采用 Candidate A 的 weight-first、barrier-before-A-overlap 顺序；
- `experts == 64`：保留 v019 的 barrier 后 A load 顺序；
- 其它 shape：不改变原路径。

字节级 lowering 校验：selective Case2 生成 C++ 与 Candidate A 完全相同；selective Case3 与 v019 parent 完全相同。

## 关键结果

| 证据 | v019 parent | v020 selective | 结论 |
|---|---:|---:|---|
| Case2 OJ 四轮中位 | 5.345728 ms | 5.328736 ms | `-0.304%`，4/4 同方向 |
| Case3 全局候选三轮中位 | 10.334231 ms | 10.514199 ms | `+1.764%`，据此隔离到 32 experts |
| Case2 mcTracer Step1 中位 | 3.543296 ms | 3.509248 ms | `-0.961%` |
| Case2 mcTracer Step2 中位 | 1.789184 ms | 1.797632 ms | trace 噪声，不是改动路径 |
| Case2 mcTracer device span 中位变化 | — | — | `-0.458%` |
| 安装态 OJ Case1/2/3 | — | 3.072233 / 5.326976 / 10.328750 ms | 全部 PASS |

最终 ISA 中 Step1 的资源与有效指令计数保持不变：`226 MT / 52 ST`、2 waves、256 MMA、34 global loads、64 shared loads、16 shared stores、4 barriers、0 private/spill。候选仅减少 4 条 `snop`，代码大小 `24832→24800 B`。mcProfiler 同时报告 VLS pipeline stall `-23.49%`，但其它 replay 指标方向混合，因此只作为调度空泡的辅助证据。

## 结论

接受 Candidate C。有效机制不是增加流水 stage，也不是减少数据量，而是在 Case2 未完全饱和的网格中保留权重优先级，同时把 A load 移入权重 barrier 前的调度窗口，使后端少插入 4 条等待空泡。Case3 的反例证明该顺序不能无条件推广到更饱和的 64-expert 网格。

- 最终快照：`v020_step1_prefetch_before_barrier_sc-16g_custom_fusedmoe.py`
- 最终 patch：`v020_step1_prefetch_before_barrier_sc-16g.patch`
- 详细证据：`../../restart-rep/v020_step1_prefetch_before_barrier_sc-16g/v020_step1_prefetch_before_barrier_sc-16g_report.md`
