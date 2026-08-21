# v59 正常合规后续优化筛选（sc-16g，2026-08-21）

## 范围与规则

- 精确基线：`race_tests/moe/restart-experiments/v059_teammate_79_33_case1_grid_sc-16g/v059_teammate_79_33_case1_grid_sc-16g_custom_fusedmoe.py`
- 基线 SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- 外部 OJ 基线：79.33。
- 机器：MetaX C500 `sc-16g`，MXMACA 3.7.1.5，KMD 3.8.30。
- 仅使用正常 OJ 合规 TileLang；没有 async copy、foreign source、external call、缓存结果、benchmark/harness 修改或固定输出。
- 所有候选先写 hypothesis，再做 OJ source gate、完整 padded-output correctness 与 AB/BA device-event timing。
- promotion 门槛为相对 v59 稳定提升至少 1.2%；低于门槛不创建 vNNN、不更新 submission、不移动 `dorm`。

## 结果汇总

| 方向 | Case | 候选 SHA-256 | 正确性 | 配对结果（lower is better） | 决策 |
|---|---:|---|---|---:|---|
| 将 routed weight 前移到 Step1、移除 Step2 乘法 | 2 | `40f07bcb...` | PASS | median `-0.032%`，mean `-0.015%` | reject/noise |
| Step1 expert-grouped CTA，无范围证明 | 3 | `d5e59089...` | PASS | median `+13.090%` | reject/compiler guards |
| Step1 expert-grouped CTA，加 `bx/by` 范围证明 | 3 | `cd279f3d...` | PASS | 稳健 median `+3.511%` | reject/mapping itself |
| Step1 expert-grouped CTA，加范围证明 | 1 | `8e99e4de...` | PASS | median `+2.879%`，5/5 regressions | reject/mapping itself |
| Step1 16-row MFMA microtile tail pruning | 3 | `584c3113...` | PASS | median `+5.518%`，3/3 regressions | reject/dynamic control |
| Case1 FP16 SwiGLU epilogue（MMA 仍 FP32） | 1 | `b35c7b3b...` | PASS | quick probe `+0.089%` | reject/below 1.2% |

正值表示候选变慢。所有正确性测试在运行前用 `7.0` 填满输出，并与 padding 为零的独立 FP32 reference 做全张量 `rtol=atol=1e-2` 比较。

## 关键 profile / codegen 证据

### Routed-weight prescale

Case2 三轮 AB/BA 的变化为 `+0.051% / -0.063% / -0.032%`。两组 paired mcTracer：

- v59 Step1 / Step2 median：`3.030784 / 1.704960 ms`；
- candidate Step1 / Step2 median：`3.043328 / 1.702400 ms`；
- paired Step1 `+0.067%`，Step2 `-0.150%`；
- resources：Step1 `216 -> 218` regs，Step2 `230 -> 228` regs，仍为 2 waves，无 spill。

结论：把逐行乘法从 Step2 移到 Step1 只转移资源和极少量算术，不改变关键路径。

### Expert-grouped mapping 与 safe-memory guards

Case3 首探只打开 v59 已存在的 expert-grouped 映射。mcTracer 将回退完全定位到 Step1：

- v59 Step1 median `5.893376 ms`；
- no-assume candidate `7.126272 ms`，paired `+20.920%`；
- Step2 paired `-0.203%`，属于噪声。

生成 C++ 揭示首探并非公平测试：

| Case3 Step1 | source bytes | `if (` sites | MT regs | waves/PEU |
|---|---:|---:|---:|---:|
| v59 | 28,130 | 21 | 216 | 2 |
| grouped, no assume | 36,027 | 40 | 206 | 2 |
| grouped + four range proofs | 28,150 | 约 baseline | 214 | 2 |

缺少 `T.assume(0 <= bx < num_blocks_m)` 与 `T.assume(0 <= by < step1_col_tiles)` 时，safe-memory legalization 在 hot loop 的 input/gate/up 访问周围重复插入范围 guard。补证明后代码大小恢复，但 Case3 仍稳定慢约 3.51%，说明 v59 的同步交错预取本身偏好 row-block-first 顺序。

同样的公平复核也用于 Case1：baseline/candidate C++ 为 `30,700/30,720` bytes，资源同为 Step1 `222 regs / 2 waves`，但五轮均回退，中位 `+2.879%`。因此旧 v045 的 expert-grouping 收益不能叠加到 v59；Case1/3 Step1 mapping 家族封口。

### 16-row MFMA tail pruning

v59 已按 32-row warp 粒度跳过完整无效 warp。候选进一步利用底层 `16x16x16` MFMA，只跳过 `actual_rows=100` 时 rows 112--127 的完整无效 microtile。理论上 Case2/3 Step1 MFMA row work 可再降约 5%，且 global bytes 不变。

实际完整正确性通过，但 Case3 三轮变化为 `+5.463% / +5.548% / +5.518%`。动态、wave-uniform microtile 条件在每个 K iteration 重复执行，控制流成本超过省下的 padding MFMA。不要继续派生更细粒度动态 MFMA predicate；只有能在编译期静态专门化且不破坏输入语义时才值得重访。

### FP16 SwiGLU epilogue

候选保持 Gate/Up MMA FP32 accumulation，只在 Case1 写 FP16 workspace 前以 FP16 计算 sigmoid/product。完整 correctness 通过，单轮探针为 `+0.089%`，没有进入长测。

codegen 确认后端确实生成 `hexp2` 与 half2 算术，而非重新提升到 FP32；但 C++ 从 `30,700` 增至 `32,822` bytes，资源仍为 `222 regs / 2 waves`。新增 FP32->FP16 转换与标量化 half2 序列抵消了低精度算术，且 epilogue 不在主要关键路径。

## 新结论与后续边界

1. v59 的性能对 CTA 顺序与同步交错预取存在强耦合；旧主线的 locality 优化必须先做 range-proof/codegen 审计，不能直接按历史收益移植。
2. `T.assume` 能消除真实的 safe-memory guard 膨胀，但 guard-free 不等于 locality 一定改善；标准 row-block-first 顺序仍是 v59 的更优选择。
3. padding MMA 的理论可省工作并不自动转化为收益：当前 C500 后端缺少低成本 predicated MFMA，动态 16-row 控制流明显更贵。
4. routed-weight 与 SwiGLU epilogue 均不是 1.2% 级关键路径；后续不要继续做同类标量/尾声微调。
5. 没有候选达到 promotion 门槛。`dorm`、根 submission 和 v59 归档均保持不变。

原始临时证据位于远端 `/tmp/`：`v59-prescale-*`、`v59_case3_expert_grid_*`、`v59-step1-mfma16-tail-*`、`v59-case1-step1-expert-grid-assume-*`、`v59-case1-fp16-swiglu-*`。这些是 scratch 证据，不作为持久 submission。

## Step2 同步 copy 调度后续筛选

所有候选继续从精确 v59 出发，只使用同步 TileLang copy。负值表示更快。

| 方向 | Case3 median vs v59 | 关键资源/结论 | 决策 |
|---|---:|---|---|
| B-first 64-row half interleave | `-0.948%`（初版）/ `-1.009%`（looped） | Step2 224 MT / 52 ST / 2 waves | below gate |
| looped half + Step1 prune | `-1.038%` | 正确但仍低于 1.2% | below gate |
| full A middle | `-0.322%` | 重叠不足 | reject |
| even phase only | `-0.448%` | 只覆盖一半 producer phase | reject |
| reverse half order | `-0.692%` | 216 MT，但调度更差 | reject |
| cross-half A order | `-0.782%` | 顺序弱于 low-half-first | reject |
| full-domain masked half | `-0.905%` | 代码更短但调度更差 | reject |
| K-half B split | `+8.564%` | 破坏 B 行方向连续性 | reject |
| quarter row interleave | correctness FAIL | 32-row A fragment 不能安全拆成该 quarter 语义 | reject |
| MMA sandwich | `+0.931%` | 同步 load 阻塞，独立 MMA 未隐藏延迟 | reject |
| Step2 expert grouping + range proofs | `+0.824%` | guard 已消除，mapping 本身仍慢 | reject |
| 按 accumulator 完成全部 K | `-0.944%` | Step2 增至 240 MT，未优于 looped parent | reject |
| 双 B fragment 预装 | `-0.810%` | 224 MT 不变，load/MMA 原交错更优 | reject |
| **A-first 64-row half interleave** | **`-3.395%`（最终 5 轮）** | Step2 222 MT / 52 ST / 2 waves，trace Step2 `-9.448%` | **promote v083** |

### v083 关键因果

- v59 每个 phase 是完整 B copy 后完整 A copy；v083 将 Case3 精确 shape 改为 `A0 -> B0 -> A1 -> B1`。
- Case1/2 generated C++ 与 v59 逐字节一致；两者性能变化均在 0.02% 内。
- Case3 最终五轮为 `-3.394% / -3.418% / -3.400% / -3.393% / -3.395%`，标准差 `0.0094%`。
- mcTracer 三组配对把收益定位到 Step2：中位 `3.343104 -> 3.027712 ms`，paired median `-9.448%`；Step1 仅 `+0.277%` 噪声。
- 最终 ISA 的 MMA/shared/store/barrier 工作量不变，global-load 静态 site 反而从 36 增至 44；收益来自 request issue order 与有效重叠，而不是少算少搬。
- v083 为正常、非 hack 晋级版本；外部 OJ 尚待复核，不在本报告中预测新分数。

## v083 邻接顺序复核与 v084 扩展

在 v083 上继续改变半块顺序，确认收益依赖 stage-local 邻接，而不是只依赖低寄存器：

| 方向 | Case | 相对 v083 中位变化 | Step2 MT regs | 决策 |
|---|---:|---:|---:|---|
| `A0 -> B1 -> A1 -> B0` | 3 | `+0.460%` | 214 | reject |
| `A1 -> B1 -> A0 -> B0` | 3 | `+0.401%` | 214 | reject |

两者寄存器都比 v083 的 222 更低，但性能回退，说明关键是 `A0/B0`、`A1/B1` 的相邻生产与消费关系。

随后把 v083 的 `A0 -> B0 -> A1 -> B1` 精确扩展到 Case1/2：

| Case | 5-round median vs v083 | pstdev | paired Step2 trace | Step2 regs | 决策 |
|---|---:|---:|---:|---:|---|
| 1 | `-2.816%` | `0.0338%` | `-8.955%` | 212 -> 206 | promote |
| 2 | `-3.089%` | `0.0278%` | `-8.705%` | 230 -> 222 | promote |
| 3 | generated C++ byte-identical | — | 沿用 v083 | 222 | retain |

三 shape 的源码/generated-code OJ gate 通过，完整 padded correctness 通过。Case1/2 均越过相对当前 best 的 1.2% promotion gate，因此合并为单一正常版本 v084；没有为两个 shape 制造额外中间版本。外部 OJ 仍待复核。

## v084 晋级后的正常合规后续筛选

基线改为 `dorm@6c368258` / v084，根 submission SHA-256 为 `32e50bbb2b21683765702b920ee78aa2fff865db78fcc8da94d3e3debfa517a2`。所有候选均先写 hypothesis，只使用正常 TileLang，同进程 AB/BA、warmup 10、repeat 200；完整 padded correctness 与 OJ source gate 全部 PASS。正值表示候选更慢。

| 方向 | Case | 三轮中位变化 vs v084 | codegen / 机制结论 | 决策 |
|---|---:|---:|---|---|
| Step1 `input0 -> Gate0`（两 phase） | 3 | `+1.838%` | 大 input 半块抢先暴露延迟 | reject |
| Step1 grid swizzle panel=10 | 3 | `+3.980%` | 打散同一 input block 的 16-column CTA 连续复用 | reject |
| Step1 grid serpentine panel=1 | 3 | `+0.478%` | 保留 row 内复用仍不抵索引/边界代价 | reject |
| Step1 周期 `G0-X0-U0-G1-X1-U1` | 3 | `+1.919%` | 再次确认 incumbent 的 `G1-U0` 中间 bundle 更优 | reject |
| Step2 双 B fragment：`LDS0-LDS1-MMA0-MMA1` | 3 | `+0.091%` | 222/52、2 waves 不变；噪声偏回退 | reject |
| Step2 grid serpentine panel=1 | 3 | `+0.368%` | 保留 up_logits row 内复用仍稳定回退 | reject |
| v084 A-first + expert-grouped grid + range proofs | 3 | `+1.372%` | Step2 222/52 -> 224/54，2 waves | reject |
| v084 A-first + expert-grouped grid + range proofs | 2 | `+1.439%` | Step2 222/52 -> 224/54，2 waves | reject |
| Case1 Step2 tail pruning / padding MMA 裁剪 | 1 | `+0.385%` | 旧 v59 同方向为 +0.102%；协同仍失败 | reject |

### 新边界

1. v084 的 A-first 规律不迁移到 Step1：Step1 需要小 Gate 半块先垫，并保持 `G0-X0-G1-U0-X1-U1` 的既有节奏。
2. panel=10 和 panel=1 在 Step1/2 均无收益；当前 row-block-first 的完整 x-row连续性与直接索引更重要。
3. consumer 侧同时预载两个 B fragment 没有改善，说明现有 `LDS-MMA-LDS-MMA` 已给后端足够的 latency hiding。
4. Case2/3 expert grouping 与 v084 A-first 不存在正协同，且都增加寄存器；该组合家族封口。
5. Case1 继续对 padding warp 做 MMA 是有意的实测选择：运行时 tail predicate 比省下的 padding work 更贵。
6. 本批没有候选达到 1.2%，因此不创建 v085、不更新 submission、不移动 `dorm`。

临时源码、hypothesis、screen JSON 和局部 codegen 保存在远端 `/tmp/v084-step1-*`、`/tmp/v084-step2-*`、`/tmp/v084_case1_step2_tail_pruning_screen.json` 与 `/tmp/v084_step2_*_codegen/`；仅本结论报告进入 Git。

## v084 热路径 guard、显式展开与共享布局筛选

继续以根 submission v084 为基线，使用相同的 source gate、完整 padded correctness 和三轮同进程 AB/BA（warmup 10、repeat 200）。除特别注明的 import 探针外，所有实际计时候选均通过 OJ source gate 和正确性；正值表示更慢。

| 方向 | Case | 三轮中位变化 vs v084 | 关键证据 | 决策 |
|---|---:|---:|---|---|
| Step2 64-row A 半块取消 `actual_rows` predicate | 3 | `+2.067%` | 恢复规则 copy，但额外 padding 流量更贵 | reject |
| Step2 full-half `T.copy` / partial-half predicate 分流 | 3 | `+3.309%` | 流量不变，CTA-uniform 动态分支仍显著伤害 lowering | reject |
| Step1 `G0-X0-G1-X1-U0-U1` | 3 | `+2.728%` | 提前 input1 会破坏 incumbent 的 `G1-U0-input1` 延迟窗口 | reject |
| Step2 手工展开 `A0-B0-A1-B1` | 3 | `-0.242%` | 真实小收益，但 Step2 资源 `222/52 -> 226/54`，仍 2 waves | below gate |
| 同一手工展开 | 1 | `+1.197%` | 64 个 K-pair 未放大控制流收益，反而稳定回退 | reject / not generalizable |
| Step2 inline 64B half-bank shared layout | 3 | `+0.276%` | 默认 128B full-bank 更优 | reject |
| Step2 inline 32B quarter-bank shared layout | 3 | `+0.701%` | swizzle 周期进一步缩小继续回退 | reject |
| Step2 inline MACA 16x16 / vec4 XOR layout | 3 | `+32.734%` | 虽正确但不匹配当前 custom `ldmatrix_b` 地址访问 | reject |

另有一次直接导入 `make_half_bank_swizzled_layout` 的语法探针被本地 OJ gate 在执行前拒绝，原因是 allowlist 只允许 `from tilelang.layout import make_swizzled_layout`；随后使用合规、等价的 `T.Layout` 完成了实际 half/quarter-bank 测试，因此该探针不计为性能候选。

### 本批边界

1. v084 的逐元素 `actual_rows` copy predicate 不是纯开销：取消它会因 padding 流量增加而回退；改成运行期粗粒度 full/tail 分支则会触发更差的控制流/codegen。Step2 copy-tail 家族封口。
2. Step1 incumbent 中 `G1 -> Up0 -> input1` 是关键延迟隐藏段；不能把第二个 input 半块提前合并到两个 Up half 之前。
3. `T.unroll(2)` 在生成 C++ 中仍表现为带 stage 索引的循环，手工展开能让 Case3 稳定快约 0.24%，但资源上涨且 Case1 明显回退。该线索不足 1.2%，不记录为版本。
4. 对当前 64-thread custom `ldmatrix_b`，默认 128B/full-bank swizzle 明确优于 64B、32B 和仓库中未被默认选择的 MACA 16x16 映射。共享布局家族封口。
5. 本批仍不创建 v085、不改根 submission、不移动 `dorm` 的性能 HEAD。

新增 scratch 证据位于远端 `/tmp/v084-step2-unmasked-*`、`/tmp/v084-step2-full-or-tail-*`、`/tmp/v084-step1-gxgxxuu*`、`/tmp/v084-step2-explicit-*`、`/tmp/v084-step2-inline-*-layout*` 及其对应 `*_screen.json` / codegen 目录。
