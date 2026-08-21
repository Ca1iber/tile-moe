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

## v084 分阶段 profile 复核与 K-pack 后续

继续以 `dorm` 根 submission v084（SHA-256 `32e50bbb...`）为唯一基线。本批仍只使用正常、OJ 合规 TileLang；性能候选均先写 hypothesis、通过 source gate 与完整 padded-output correctness，再使用三轮同进程 AB/BA（warmup 10、repeat 200）。正值表示候选更慢。

### mcProfiler 口径审计

最初复用 v013 的 source loader 时，目标进程因旧接口 `RoutedMoEKernel` 与 v084 `run_kernel` 不兼容而在每个 replay import 失败；mcProfiler 仍生成了 report，因此“report 存在”不能代替检查目标日志中的 `PROFILE_DONE`。修正为 v59/v084 自带 `profile_submission.py` 后重新采集 Case3：

| kernel | `Total Cycles` | Average wave life | 说明 |
|---|---:|---:|---|
| Step1 `kernel_kernel` | `8,819,256.93 Kcycles` | `4,725.73` cycles | kernel-name 过滤有效 |
| Step2 `kernel_kernel_1` | `8,622,591.28 Kcycles` | `4,722.90` cycles | 与 Step1 同量级 |

其余计数在两次报告中几乎逐项相同（例如 achieved waves 均 `5,758,096`、MTE duty 约 `41.48%`、MMA duty 约 `22.84%`、global read 约 `39.8 GB`），证明这些字段仍是整次 profiler range 聚合，不能冒充分阶段指标。可安全采用的结论只有：Case3 Step1/Step2 都是主路径；整次调用未出现 private spill，共享访问效率报告为 100%。

### 候选结果

| 方向 | SHA-256 | Case3 中位变化 vs v084 | 证据与决策 |
|---|---|---:|---|
| Step2 `A128 -> B256` 整块 A-first | `daae0066...` | `+3.313%` | correctness PASS；只让 A 先发不够，破坏 `A0/B0`、`A1/B1` 邻接后稳定回退 |
| Step1 `G0-X0-G1-U0-U1-X1` | `a398791c...` | `+1.662%` | correctness PASS；`input1` 延后也回退，确认它必须夹在 `U0/U1` 之间 |
| 移除 `TL_DISABLE_WARP_SPECIALIZED` | `9c5aea0a...` | 未计时 | OJ gate PASS；Case3 generated C++ 与 v084 SHA-256 完全相同，资源同为 Step1 `216/54`、Step2 `222/52`，compiler no-op |
| Step1 `k_pack=4` + 正确 generalized lane map | `8df8859f...` | `+31.006%` | correctness PASS；总 MFMA/流量不变，但把 Gate/Up 从 32-K 交错改成 64-K 分组造成终止性回退 |

`k_pack=4` 的第一次语法/资源探针只改参数，虽生成更短 C++，但因原 `16x32/64x8` map 为 k_pack=2 写死而出现约 69.3% mismatch，未计性能。随后采用 `thread=i+16*(j//(k_pack*4))`、`local=j%(k_pack*4)` 的 generalized map；该公式在 k_pack=2 时与 incumbent 完全等价，在 k_pack=4 时完整正确，但性能仍回退约 31%。

### 新边界

1. v084 Step2 收益来自半块局部邻接，不是简单的 A-first；整块 `A -> B` 家族关闭。
2. Step1 的最优六段顺序两侧都已验证：`input1` 提前约回退 2.73%，延后约回退 1.66%，现有 `G1 -> U0 -> input1 -> U1` 是有效延迟窗口。
3. 当前显式同步流水不会触发 TileLang 默认 warp specialization；移除禁用开关是逐字节 no-op。
4. `k_pack=2` 同时决定 operand lane map 与 Gate/Up 的 32-K 交错。正确的 k_pack=4 仍大幅变慢，不继续派生 Step2 kpack4 或更多 64-K grouping。
5. 没有候选达到 1.2% promotion gate；不创建 v085、不改根 submission、不移动 `dorm` 性能 HEAD。

本批 scratch 证据位于远端 `/tmp/v084_per_kernel_case3_step*`、`/tmp/v084-step2-full-a-then-full-b*`、`/tmp/v084-step1-delay-input1*`、`/tmp/v084-auto-warp-specialize*`、`/tmp/v084-step1-kpack4*` 及对应 screen/codegen JSON。

## v084 Step2 长 expert、producer 粒度与 routed-weight 数据流筛选

继续以归档 v084（SHA-256 `32e50bbb...`）为唯一性能基线；本批只使用正常 TileLang，所有进入计时的候选均通过完整 padded-output reference check，并采用三轮同进程 AB/BA、warmup 10、repeat 200。正值表示候选更慢。

| 方向 | Case3 中位变化 vs v084 | 资源 / 物化证据 | 决策 |
|---|---:|---|---|
| 长 expert Step2：两个 BM128 合为一个 BM256/512-thread CTA | `+3.576%` | 三 kernel；long Step2 `204/52`、2 waves，无 spill；权重只读一次但大 CTA 协调更贵 | reject |
| 长 expert Step2：BM192/384-thread/6-wave | 未计时 | `LayoutInference: no available layout found`；当前编译器仍不能表达 6-row-wave fragment | compile reject |
| 长 expert Step2：BM128 + BM64/128-thread tail | `+13.582%` | main Step2 `226/52`，tail `218/52`；删掉两个空 wave，但 128 threads 下 Down-weight staging 与额外 launch 代价更大 | reject |
| Step2 `A32 rows -> B64 cols` 四分块 producer interleave | 未计时 | `T.unroll(4)` 与 `T.serial(4)` 均为 Step2 `256/108`；四阶段动态地址使资源爆炸 | resource reject |
| Step2 最终 routed-weight multiply 改 FP16/half2 | `-0.050%` | 生成 half2 multiply；资源仍 `222/52`；完整正确 | below gate / noise |
| routed-weight 每 wave 16 lane load + `T.shfl_sync` 广播 | `+0.031%` | `__shfl_sync` 已物化，资源仍 `222/52`；重复标量 load 已被 wave coalescing/cache 吸收 | below gate / noise |
| 在 Step2 A fragment 中做 FP32 routed scaling | `+20.803%` | Step2 `228/52`；K-loop 中新增 half->float->half 转换与乘法 | reject |
| 在 Step2 A fragment 中做 FP16/half2 routed scaling | `+17.986%` | packed half multiply 已物化，仍 `228/52`；转换减少但 producer critical path 仍被污染 | reject |

### 因果结论

1. 对长 expert 合并 token CTA 确实减少 Down 权重真实流量，但 BM256 的 8-wave/512-thread 协调代价超过流量收益；BM192 又受当前 TileLang layout 能力限制。另一方面，单独缩小 56-row tail 会让固定 256-column Down-weight staging 缺少 producer threads。Step2 的 `actual_rows` 行 tile 家族因此封口。
2. v084 的 64-row A / 128-column B 半块是资源可行粒度。继续细分成 32-row / 64-column 四阶段不会改变流量，却把动态 stage 地址和寄存器状态推到 `256/108`，不能进入性能测试。
3. routed-weight 的末端 FP32 multiply 不是主瓶颈：FP16 化只有约 0.05% 噪声收益；四路重复 scalar load 改 shuffle 也无收益，说明硬件请求合并已足够。
4. 线性地把 routed scaling 移到 A 理论上减少 71.4% 元素乘法，但会把额外工作插入每个 K tile 的 load/MMA 重叠窗口；即使 packed FP16 仍回退约 18%。routed scaling 数据流家族封口。
5. 本批没有候选达到 1.2% promotion gate；不创建 v085、不改 submission、不移动 `dorm` 性能 HEAD。

本批 hypothesis、源码、screen JSON 与 codegen 位于远端 `/tmp/v084-step2-hybrid-bm*`、`/tmp/v084-step2-quarter*`、`/tmp/v084-step2-fp16-route*`、`/tmp/v084-step2-route-shuffle*`、`/tmp/v084-step2-route-scale-a*` 及对应 `/tmp/v084_step2_*` 目录。

## v084 转换尾声、BK32 与同步 load/MMA 重叠复核

### 上版本遗留问题与假设

Case3 最终 ISA 揭示两个此前没有量化的结构：Step1/Step2 的普通
FP32→FP16 cast 分别生成 `64/128` 次 `get_hwreg` 和 `128/256` 次
`set_hwreg`，而 Step2 的 K tile 只验证过向 128 扩大、没有验证向 32
缩小。与此同时，v084 的主要收益来自同步 producer 的 A/B 邻接顺序，
因此本批分别检验：消除舍入模式切换、缩小 producer K 粒度、以及把
下一 A tile 的后 32-K load 移入当前 MMA 窗口。

### 落地与 Benchmark 对比

仍以归档 v084（SHA-256 `32e50bbb...`）为 previous 与 baseline。进入计时
的候选均通过完整输出正确性，协议为 Case3 三轮同进程 AB/BA、warmup
10、repeat 200；正值表示候选更慢。没有单独运行 mcProfiler，因为所有
候选均未接近 1.2% gate；资源与指令证据来自最终 xcore1000 ISA。

| 方向 | SHA-256 | Case3 中位变化 vs v084 | 资源 / ISA 证据 | 决策 |
|---|---|---:|---|---|
| Step2 `T.call_pure_extern(__builtin_mxc_f32_to_f16)` 直接写 global | `e6941849...` | 未计时 | `set/get_hwreg=0`，但 32 个向量写退化为 `256×stg_b16`，`snop 378→576` | codegen reject |
| Step2 直接转换到复用 FP16 fragment，再 `T.copy` | `7b49ceda...` | `+0.203%`（mean `+0.201%`） | `222/52`、2 waves；`set/get=0`、`32×stg_b64`、`snop=64` | reject / stable regression |
| Step1 同样的直接转换 + FP16 fragment | `7afb2871...` | `+0.807%`（mean `+0.811%`） | `216/54`、2 waves；`set/get=0`、`16×stg_b64`、`snop 406→338` | reject |
| Case3 Step2 `BK64→BK32` | `404e4aab...` | `+15.960%` | Step2 `222→182 MT`，但仍 2 waves；K phase/barrier 动态次数翻倍 | reject |
| 184-row expert 使用两个 BM96/192-thread CTA | `08374056...` | 未计时 | `LayoutInference: no available layout found`，3-row-wave CTA 不能表达 | compile reject |
| 下一 A tile 后 32-K load 延后到当前 `ki=0/1` MMA 之间 | `1555ba66...` | `+2.405%` | correctness PASS；Step2 `222→224 MT`，generated C++ `29,152→34,364 B` | reject |

### Profile / ISA 指标变化

| 指标 | v084 Case3 | Step2 直接转换+copy | Step1 直接转换+copy | 解释 |
|---|---:|---:|---:|---|
| MT/ST registers | Step1 `216/54`；Step2 `222/52` | Step2 `222/52` | Step1 `216/54` | 没有 occupancy 或 spill cliff |
| `get_hwreg` | Step1 64；Step2 128 | Step2 0 | Step1 0 | vendor direct conversion 确实消除了 mode save |
| `set_hwreg` | Step1 128；Step2 256 | Step2 0 | Step1 0 | 机制已物化 |
| vector global stores | Step1 `16×stg_b64`；Step2 `32×stg_b64`（输出路径） | `32×stg_b64` | `16×stg_b64` | fragment+`T.copy` 保住向量写 |
| `snop` | Step1 406；Step2 378 | Step2 64 | Step1 338 | 静态代码显著缩短但运行时间仍回退 |

TODO: 本批没有候选越过性能 gate，因此不采集额外 mcProfiler counter；若
未来出现至少 1.2% 的配对候选，再按 kernel-name filter 采集 MTE/MMA duty、
VLS/VL1 stall 与实际 global bytes。

### 实验总结

1. FP32→FP16 舍入模式切换是醒目的静态开销，但不是动态关键路径。即使
   在不改变 occupancy、向量写和 MFMA 工作的情况下删除全部 mode traffic，
   Step1/Step2 仍分别回退约 0.81%/0.20%；原调度能隐藏这些尾声指令。
2. K=64 是同步 producer 的实测甜点。BK32 虽减少 40 个 MT registers，
   但没有跨到更高 occupancy，翻倍的 phase/barrier 令端到端回退约 16%。
3. 非 2 次幂 row-wave 仍是当前 TileLang layout 的硬限制；BM96 与此前
   BM192 一样无法 lowering，不能作为单文件 submission 方向。
4. 普通同步 global load 插入 MMA 之间不会自动与计算并发；它会阻塞 issue、
   增加 code size/live state。没有 async copy 时，不继续做同类跨-MMA load
   搬移。
5. 本批没有候选达到 1.2% promotion gate；不创建 v085、不修改 submission、
   不移动 `dorm` 性能 HEAD。

本批 hypothesis、源码、screen JSON、codegen 与 ISA 位于远端
`/tmp/v084-*f32-to-f16*`、`/tmp/v084-step1-direct-copy*`、
`/tmp/v084-step2-bk32*`、`/tmp/v084-step2-hybrid-bm96*`、
`/tmp/v084-step2-late-a-khalf*` 及对应下划线命名的输出目录。

## v084 细粒度调度、部分展开、3-wave 串行半块与 fast-math 筛选

继续以归档 v084（SHA-256 `32e50bbb...`）为唯一 promotion baseline。本批
七份源码均通过 `/tmp/validate_oj_submission.py` source gate；进入计时的
候选均通过完整输出正确性，使用三轮同进程 AB/BA、warmup 10、repeat 200。
正值表示候选更慢，负值表示候选更快；任何低于 1.2% 的负值仍按噪声或
低于门槛处理。

### 结果

| 方向 | Case | 三轮中位变化 vs v084 | 资源 / codegen 证据 | 决策 |
|---|---:|---:|---|---|
| 把下一 A tile 的单个 `ldg_b128/thread` 分别夹在 `out0/out1` MMA 之间 | 3 | `+2.300%` | 顺序真实物化；Step2 `222/52→228/56`、仍 2 waves；总 LDG/MMA 不变，`snop +20` | reject |
| Step2 外层 `k_pair` factor-2 partial unroll | 3 | `-0.003%` | 生成 `#pragma unroll 2`；Step2 `224/52`、2 waves | below gate / noise |
| Step2 外层 `k_pair` factor-4 partial unroll | 3 | `-0.052%` | 生成 `#pragma unroll 4`；Step2 `226/52`、2 waves | below gate |
| Step1 外层 `k_pair` factor-4 partial unroll | 3 | `-0.057%` | Step1 `216/54→220/54`、仍 2 waves | below gate |
| 同一 CTA 串行两个 128-column 输出半块 | 3 | `+10.896%` | CTA/wave/MFMA/Down 总 work 不变；Step2 `222/52/2 waves→156/46/3 waves`，Down shared `32→16 KiB`；A tile 重读 | reject |
| 原生 `tl.enable_fast_math` | 3 | `-0.141%` | generated C++ 与资源不变；差异仅在 MXCC `-use-fast-math` 后端 | below gate |
| 原生 `tl.enable_fast_math` | 1 | `-0.735%` | correctness PASS；Case1 激活占比更高但仍不足 1.2% | below gate |
| fast-math + `T.sigmoid` 替代手写 `exp2` sigmoid | 1 | `-0.764%` | Step1/2 仍 `222/52`、`206/52`；C++ `30,700→31,854 B`，展开为 `expf`/divide float4 序列 | below gate |

factor-2 Step2 的第二轮 parent 出现约 `9.004 ms` 的慢样本，使 mean 显示
约 `-0.202%`；其余两轮分别为 `-0.003%/+0.014%`，因此使用预注册的
中位数并判为噪声，不能把异常 parent 当成候选收益。

### 新因果边界

1. 把同步 A load 再细分并直接插入 MMA 之间仍然失败。即使每次只插入
   一个 128-bit 请求 bundle，寄存器 live range、mask 控制与 issue 阻塞
   仍会增加；上一批“两 bundle 连发”并不是失败的唯一原因。
2. TileLang 的 `unroll_factor` 能正常传到生成 C++，但 factor-2/4 对两个
   长 K 循环都只有约 0.00%--0.06% 的变化，同时增加 2--4 个 MT registers。
   外层 partial-unroll 家族封口。
3. “保持 CTA 数不变、串行输出半块”成功跨过 3-wave 驻留阶梯，并比旧
   N=128 双 CTA 的 Step2 `+35.93%` 回退明显更小；但为了复用单 accumulator
   而重读 A、串行两个完整 K sweep，最终仍稳定回退 10.90%。这证明当前
   双 accumulator 的 A 复用价值大于额外驻留，不能只按 occupancy 选结构。
4. 短 expert 的 BM64 不进入运行实验：100 rows 在 32-row wave 粒度下，
   一个 BM128 是 4 waves，两个 BM64 仍是 2+2 waves，末尾 padding MFMA
   也不减少，只会把 Gate/Up 或 Down 权重读取翻倍。
5. 原生 MXCC fast-math 是本批唯一稳定的正常小收益：Case1 约 0.74%，
   Case3 约 0.14%。`T.sigmoid` 只额外贡献约 0.03%，且扩大生成代码。
   激活编译器家族明确低于 1.2% promotion gate，不组合成噪声版本。
6. 本批没有候选达到 promotion gate；不创建 v085、不修改根 submission、
   不移动 `dorm` 性能 HEAD。

临时源码、hypothesis、codegen/ISA 与 AB/BA JSON 位于远端
`/tmp/v084-step2-granular-a-mma*`、`/tmp/v084-step{1,2}-kpair-unroll*`、
`/tmp/v084-step2-serial-output-halves*`、`/tmp/v084-fast-math*`、
`/tmp/v084-fastmath-native-sigmoid*` 及对应下划线命名的输出目录。

## v084 顺序空间闭环、2x2 wave 拓扑与安全尾预取筛选

继续以归档 v084 为唯一性能基线，只使用正常 OJ 合规 TileLang。本批所有
进入运行筛选的候选均通过完整 padded-output reference check；正值表示候选
更慢。明显终止性回退和低于门槛的短筛不扩成长测，也不创建版本。

| 方向 | Case3 变化 vs v084 | 资源 / lowering 证据 | 决策 |
|---|---:|---|---|
| Step2 `A0-B0-B1-A1` | 三轮中位 `+2.181%` | Step2 `242/54`、2 waves；六种保持 A/B 内部先后关系的排列至此全部覆盖 | reject |
| Step2 256-thread `2 row-wave x 2 col-wave` | smoke `+37.115%` | correctness PASS；Step2 `256/52`、2 waves；replicated A 的半片条件 copy 无法 layout，整片 copy 可 lower | reject |
| Step1 `G0-X0-U0-G1-U1-X1` | smoke `+1.878%` | Step1 `224/54`、2 waves | reject |
| Step1 `G0-U0-X0-G1-X1-U1` | smoke `+4.431%` | Step1虽降至 `214/54`，但 Gate/Input 首对邻接被破坏 | reject |
| Step1 clamp 末轮 A 预取 + 无条件尾 barrier | smoke `+0.105%` | Step1 `214/52`；合法冗余末轮 A read | below gate / noise |
| Step1 clamp 末轮 A 预取 + 保留尾 sync guard | smoke `+0.069%` | Step1 `214/52`；去两处 load guard、保留一处 barrier guard | below gate / noise |

### 新因果边界

1. Step2 在分别保持 `A0<A1`、`B0<B1` 时共有六种 producer 排列；最后缺失
   的 `A0-B0-B1-A1` 也稳定回退约 2.18%。v084 的
   `A0-B0-A1-B1` 因而是该受限顺序空间的实测最优点。
2. 256-thread 的 2x2 wave 拓扑虽然保持每线程理论 accumulator 数量不变，
   但 A fragment 必须跨两个 column-wave 复制，后端寄存器升至 256，并出现
   约 37% 终止性回退。它与旧 512-thread 2-column-wave 结果共同关闭 column
   wave 并行化方向。
3. Step1 更远排列确认 `Gate0 -> input0` 首对邻接是必要条件；单看更低
   registers 不能预测更快。无需穷举其余明显破坏该邻接的排列。
4. 把末轮 next-A 地址 clamp 到合法 tile 能让 analyzer 将 Step1 资源从
   `216/54` 降到 `214/52`，但动态性能仅在 `+0.07%--+0.11%` 噪声区间。
   uniform 尾判断会影响 liveness，却不是 1.2% 级关键路径。
5. `/opt/maca` 头文件确认 `__builtin_mxc_ldg_b128_bsm` 是带
   `arrive_bsmcnt/wait` 协议的 global-to-shared 异步搬运，不是 wave 间寄存器
   广播。v59 ISA 只有普通 `ldg_b128`；当前仓库已有 async+swizzle 正确性
   失败证据，因此正常 submission 不尝试强行内联该 builtin。

本批 scratch 位于远端 `/tmp/v084-step2-a0b0b1a1*`、
`/tmp/v084-step2-topology-2x2*`、`/tmp/v084-step1-gxugux*`、
`/tmp/v084-step1-guxgxu*`、`/tmp/v084-step1-clamped-final-prefetch*`、
`/tmp/v084-step1-clamped-loads-guarded-sync*` 及对应 codegen/screen JSON。
本批没有候选达到 1.2% promotion gate；不创建 v085、不修改 submission、
不移动 `dorm` 性能 HEAD。

## v084 激活 lowering、16-K consumer 粒度与编译 pass 筛选

继续以精确归档 v084 为唯一基线。本批只使用 OJ 可见的正常 TileLang；
没有 foreign source、async、缓存结果或 harness 修改。候选先做 source/codegen
门禁，再做完整 padded-output reference check 与 Case1/3 AB/BA smoke；正值表示
候选更慢。短筛已经远离 1.2% gate 的方向不扩成长测。

| 方向 | Case | 变化 vs v084 | 资源 / lowering 证据 | 决策 |
|---|---:|---:|---|---|
| fast-math + `0.5*x*(tanh(0.5*x)+1)` | 1 | `-0.078%` | Step1 `222/52`；C++ 为四路标量 `tanhf` | below gate |
| 纯 TileLang 标量 `__builtin_mxc_rcpf` | 1 | `+7.685%` | Step1 `222/52`；正确但破坏原 float4 activation lowering | reject |
| 按 fragment 物理顺序四元素分组的标量 `rcpf` | 1 | `+0.163%` | Step1 `222/52`；恢复 16 组连续访问，但 reciprocal 仍是标量 | below gate |
| Step2 每次只载入/消费一个 16-K B 子片 | 3 | `-0.043%` | B local 理论缩半，实际 Step2 `222→238 MT` | below gate / noise |
| Step1 每次只载入/消费一个 16-K Gate/Up 子片 | 3 | `+0.104%` | B local 理论缩半，实际 Step1 `216→232 MT` | reject / noise |
| `TL_STORAGE_REWRITE_DETECT_INPLACE=True` | 3 | 未计时 | C++ SHA 与 v084 完全相同，资源相同 | compiler no-op |
| `enable_simplify_let_inline=False` | 3 | 未计时 | C++ SHA 与 v084 完全相同，资源相同 | compiler no-op |
| `TL_DISABLE_LOOP_UNSWITCHING=True` | 3 | 未计时 | source bytes/resources 与 v084 相同 | compiler no-op |
| `TL_FORCE_LET_INLINE=True` | 3 | `+14.788%` | Step1 `216→222`、Step2 `222→214`，C++ `29152→32556 B` | reject |
| aggressive simplify known propagation | 3 | 未计时 | 单项/组合均使 lowering 超过 90--150 s 无产物 | compile-cost reject |

### 激活 lowering 因果

v084 的逻辑 `T.Parallel` 激活已经被 MACA 后端自动降为 16 组 float4
load/compute/store；每组内部的 `exp2f` 与除法仍是四路标量算术。历史 v043
外部 helper 的关键并不是向量 reciprocal（硬件头文件只暴露标量
`__builtin_mxc_rcpf/rcph`），而是直接用指针强制 float4 访问。正常 TileLang
尝试复现时出现三条明确边界：

1. 用 `T.Buffer` 给 fragment 建 64 元素物理别名会在 layout reshape 阶段失败；
   补 256-thread 维后，`T.Ramp` 又不能代入 fragment 的标量 thread map。
2. 用四个逻辑 fragment 元素构造 `float32x4`，layout inference 不接受单个
   parallel expression 内的多组不同 buffer indices；通过临时 local 拆开后，
   MACA C++ 后端又把 vector constructor/shuffle 展开成非法 `float4(...)` 或
   把 `make_float4` 返回值重复赋给标量 lane。
3. 最终可 lower 的“物理顺序四标量分组”完整正确，并把直接标量写法的
   `+7.685%` 回退收回到 `+0.163%`，但仍没有超过原生 float4 exact-divide。

因此正常 submission 中不存在可安全表达、且达到门槛的 packed fast-reciprocal
路径；原生 `tl.enable_fast_math` 约 `-0.735%`（Case1）仍是该家族的上界，
低于 promotion gate。

### consumer 与 pass 因果

1. `k_pack=2` 的完整 32-K B fragment 看似扩大 live range，但把它拆成两个
   16-K load/MMA 后，shared load 从 128-bit 组缩小、动态 `kp` 地址状态增加，
   Step1/Step2 MT registers 反而各增加 16，性能落在噪声区。保持现状。
2. storage rewrite、关闭 let inline、关闭 loop unswitch 都被后续 lowering
   消成逐字节 no-op。强制 let inline 虽让 Step2 少 8 个 MT registers，
   却让 Step1 增寄存器、代码膨胀 11.7%，端到端回退 14.8%；不能用单 kernel
   resource 数判断全算子收益。
3. simplify 的跨条件已知量传播对该大 prim_func 产生编译复杂度爆炸，单一
   `propagate_knowns_to_simplify_expressions` 也未在 90 秒内产出代码，不适合
   submission 编译路径。

本批 scratch 位于远端 `/tmp/v084-*fast-rcp*`、
`/tmp/v084-fastmath-tanh-silu*`、`/tmp/v084-step{1,12}-kp-split*`、
`/tmp/v084-{storage-inplace,force-let-inline,disable-let-inline,disable-loop-unswitch,simplify-knowns}*`。
没有候选达到 1.2%；不创建 v085、不修改 submission、不移动 `dorm` 性能 HEAD。

## v084 consumer 排程、MXCC 正式调度器与 ISA 驱动请求粒度筛选

继续以归档 v084 为唯一 promotion baseline。所有进入运行的候选均通过 OJ
source gate 与完整 padded-output correctness；Case3 smoke 使用同进程 AB/BA、
warmup 5、repeat 50，只有出现接近 `-1.2%` 的信号才允许扩成长测。正值表示
候选更慢。

### Consumer 与固定展开

| 方向 | Case3 变化 vs v084 | 资源 / 结论 | 决策 |
|---|---:|---|---|
| Step1 同一 `ki` 双 B 预载 | `+0.038%` | Step1 `216/54`，无资源变化 | noise |
| Step1 跨 `ki` 两 B 预载 | `+0.509%` | Step1 `224/54` | reject |
| Step1 跨 `ki` Up-first | `+0.549%` | Step1 `224/54` | reject |
| Step1 三 B、提前 `Up1` | 稳健三轮 mean `+0.447%` | Case1/2 也分别 `+0.140%/+0.291%` | reject |
| Step1 四 B batch | `+0.470%` | Step1 `224/54` | reject |
| Step1 固定 `ki` 单 B 展开 | `-0.053%` | Step1 `224/54` | below gate / noise |
| Step2 固定 `ki` 单 B 展开 | `+0.195%` | Step2 `232/52` | reject |
| Step2 跨 `ki` 两 B 预载 | `+0.346%` | Step2 `232/52` | reject |

这些结果关闭了 consumer 侧的跨 `ki` B-fragment 重叠：额外 live B 状态没有
隐藏 shared-load latency，反而增加寄存器或稳定回退。C500 头文件同时确认，
同精度 FP16 只暴露 `16x16x16f16` MFMA；其余更大/不同 shape 是 BF16、FP8、
INT8、FP32 或 TF32，因而不存在可直接替换的更大 FP16 MFMA。

### MXCC 调度与后端选项

- 直接通过 `T.call_extern` 调用官方 `__builtin_mxc_igroup_config` 被 OJ gate
  作为 foreign-code escape hatch 拒绝；没有绕过。使用允许的
  `TL_DEVICE_COMPILE_FLAGS` 开启全局 igroup 虽合规，但资源增至
  `250/256 MT`，Case3 回退 `+19.642%`。
- 正式 machine scheduler 的正确接口为
  `-mllvm -misched=metaxgpu-<name>`。`minreg` 把 Step1/2 降至 `206/212 MT`
  但仍未跨 3-wave，Case3 回退 `+41.586%`；`ilp` 为 `+15.118%`；
  `maxocc` 为 `+0.061%` 噪声；`maxocc-iter` 为 `+2.057%`；`listall`
  编译超过资源限制并被 kill。寄存器下降不等于吞吐提高，v084 的手工顺序
  保留了通用调度器会破坏的访存/MMA ILP。
- 保守单项结果：`load-use-order +0.011%`、`PostRA -0.096%`、
  `PostRA+bundler +0.110%`、动态 reg-pressure `-0.037%`、
  `bsm-store-back -0.022%`、aggressive register WAW `-0.020%`、
  aggressive STS merging `+0.009%`、`mma-sched -0.111%`、
  `const-KArgs-LDU=1 +0.066%`。全部处于噪声区，不组合、不晋级。
- `warp-split` 虽只让 ST registers 增加 2，仍完整正确，却使 Case3 回退
  `+144.820%`。把已合并的 wave 请求硬拆成 sub-wave 会摧毁有效带宽；
  “增加并发请求”不能等价为增加碎片请求。

### 最终 ISA 复核与源码粒度实验

新提取的 v084 Case3 最终 `metax.s` 显示：Step1 与 v59 的主要静态指令计数
逐项相同（`256 MMA / 36 LDG_b128 / 64 LDS_b128 / 406 snop`）；v084 的真实
变化只在 Step2。Step2 的 `MMA/LDS` 保持 `256/64`，静态 `LDG_b128` 却从
v59 的 `28` 增至 `36`，同时既有 trace 已证明 Step2 快约 9.45%。这再次说明
v084 的收益来自 A/Down 半块请求的发射邻接，而不是少发 load。

据此尝试仅在 Case3 把 Step1 关键 `G1 -> U0` 两个 8 KiB 权重半块拆成
4 KiB quarters，顺序为 `G1a -> U0a -> G1b -> U0b`；总流量、MMA、barrier
均不变，Case1/2 保持原路径。机制成功物化，但 Step1 从 `216/54` 增至
`232/50`，Case3 回退 `+8.460%`。与已有 32-row input-quarter 的 `+6.677%`
一致，Step1 的三数据流控制/address live state 无法承受更细源码分段；当前
64-row bundle 是实测甜点。

本批没有候选达到 1.2% promotion gate；不创建 v085、不修改根 submission、
不移动 `dorm` 性能 HEAD。scratch 位于远端 `/tmp/v084-step1-*b-prefetch*`、
`/tmp/v084-sched-*`、`/tmp/v084-{igroup,flag,bsm,aggressive,mma,const,warp}*`、
`/tmp/v084-step1-middle-weight-quarter*`、`/tmp/v084_isa_case3/` 及对应 JSON/
codegen 目录。

## v084 非 2 次幂 row-wave、输出宽度与 cache policy 筛选（2026-08-22）

本批继续以 v084 为 promotion baseline，只使用普通同步 TileLang。BM192/BM96
候选还使用 v59 作为 Step1 结构隔离对照，但任何最终晋级仍必须相对 v084
达到 1.2%。所有进入计时的候选均通过 OJ source gate 与完整 padded-output
correctness；明显回退只做 warmup 5/repeat 50 的单轮 AB smoke。正值表示更慢。

### 非 2 次幂 row-wave 重新打开后的真实结论

此前 BM192/BM96 被 `LayoutInference: no available layout found` 拒绝，并非
6/3 row-wave accumulator 本身必然非法。真正的一个阻塞点是 384/192 threads
不能整除某些 producer copy 域：例如 Step2 `Down[256,64]`、Step1 64x64
Gate/Up 半块。用前 256 threads 做显式 vector staging 后，相关 kernel 都能
正常 lowering、无 private spill，从而允许公平运行测试。

| 方向 | Case3 变化 | 资源 / 机制 | 决策 |
|---|---:|---|---|
| Step2 long expert BM192，前 256 producer | `+3.408%` | long `226/52`、2 waves；两个 BM128 合一 | reject |
| 同一 BM192，96-row A-first | `+10.988%` | long `210/52`；更低寄存器但 96-row split 更差 | reject |
| 同一 BM192，384-thread 均摊 producer | `+4.595%` | long `216/52`；均摊不如干净的前 256 producer | reject |
| Step2 long expert 两个 BM96 CTA | `+3.046%` | long `242/52`；3-wave kernel 正常 lowering | reject |
| Step1 全 expert BM192 + 原六段预取 | `+32.678%` vs v59 | `212/52`；短 expert 也被放大到 6 waves | reject |
| Step1 short BM128 / long BM192 混合 | `+20.295%` vs v59 | short `216/52`、long `208/52`；理论 waves `384→320` | reject |

混合 Step1 是该方向的终局公平测试：100-row expert 保持原 BM128，只有
184-row expert 从两个 4-wave CTA 合为一个 6-wave CTA；长 expert 的 Gate/Up
权重读取减半，总 dispatched waves 理论下降 16.7%。即便如此仍回退 20.3%，
说明非标准 CTA 的显式 producer、6-wave 协调和额外 kernel launch 成本远大于
真实 work/traffic 节省。旧结论应修正为“可以表达，但当前运行效率不成立”，
不再派生 BM160/BM192/BM224 邻接扫参。

### Step2 精确 224-column 输出 tile

对 Case2/3 令 accumulator half width 为 112，使 `7168 = 32*224` 无 N-tail。
CTA 数由 28 增至 32，理论 accumulator 面积下降 12.5%。实际 OJ/correctness
PASS，Step2 仅从 `222` 降至 `220 MT`，仍为 2 waves；Case3 回退
`+4.079%`。没有跨 occupancy 台阶时，14.3% 的额外 CTA 调度成本占主导；
不继续测试其他非自然 output width。

### 尾激活与 MXCC cache policy

| 方向 | Case3 变化 | 资源 / 结论 | 决策 |
|---|---:|---|---|
| Step1 只对 valid rows 做 SwiGLU | `-0.129%` | `216/54` 不变；float4 lowering 保留 | below gate |
| `metaxgpu-FetchOnWrite-global` | `-0.046%` | 两 kernel 资源与 C++ 不变；L2 write-allocate 无信号 | noise |
| `metaxgpu-force-l2rp` | `+26.137%` | 资源不变；强制所有 GVM 走该 L2/一致性路径严重回退 | reject |
| `metaxgpu-skip-cache-invalidations` | `+0.076%` | 资源不变 | noise |

Step1 valid-row SwiGLU 在 v59 历史也只有约 `-0.027%`，本次 v084 复核仍远低于
1.2%，证明 padding 的 expensive activation 不是 GEMM 主路径。MXCC hidden help
与 `/opt/maca` 头文件同时确认：普通 MACA `T.copy` backend 没有 submission 可用
的逐 load cache hint；全局正式 flag 又给出噪声或终止性回退。cache-policy
家族因此封口，不组合多个亚门槛 flag。

本批仍不创建 v085、不修改根 submission、不移动 `dorm` 性能 HEAD。scratch
证据位于 `/tmp/v084-step2-hybrid-bm{96,192}*`、
`/tmp/v084-step2-output224*`、`/tmp/v084-step1-tail-activation*`、
`/tmp/v59-bm192-case3-prefetch*`、`/tmp/v59-case3-hybrid-bm192-prefetch*`、
`/tmp/v084-{fetch-on-write-global,force-l2rp,skip-cache-invalidations}*`。

## v084 prologue/epilogue overlap、后端隐藏调度与小 panel 局部性筛选

本批继续只使用正常 OJ 合规 TileLang。所有进入计时的候选均通过 source gate
和完整 padded-output correctness，Case3 使用同进程 AB/BA、warmup 5、
repeat 50 的短筛；只有接近 `-1.2%` 才允许扩成长测。正值表示候选更慢。

### 首尾访存 overlap

| 方向 | Case3 变化 vs v084 | 资源 / 机制 | 决策 |
|---|---:|---|---|
| Step1 把首个 input A tile 延后到 `Gate0` 之后 | `+0.213%` | Step1 `216/54 -> 222/56`；稳态顺序不变 | reject |
| Step2 routed weight 在整个 K-loop 前预取 | `+0.107%` | Step2 `222/52 -> 226/52`；两 FP32 值长生命周期 | reject |
| Step2 routed weight 只在最后 k-pair 首次 barrier 后预取 | `+0.122%` | Step2 `222/52 -> 228/52`；后续 8 次 MMA 未兑现收益 | reject |

Step1 首 A prologue 与 Step2 routed-weight epilogue 都不是 1.2% 级空泡。后者
即使只在最终 k-pair 发出，也因条件/live state 增加 6 个 MT registers；两种
重排都比原位置略慢。结合此前 routed-weight FP16、shuffle 和 prescale 结果，
该标量尾声数据流家族关闭。

### MXCC hidden option 审计

从 `mxcc -mllvm --help-hidden` 选择了与当前 MMA/load 排程直接相关、且此前
未测的独立布尔选项；每个选项单独加入官方 `TL_DEVICE_COMPILE_FLAGS`，没有
组合亚门槛结果。

| 开关 | Case3 变化 vs v084 | codegen 证据 | 决策 |
|---|---:|---|---|
| `cross-mem-fence-sched` | `-0.025%` | 资源与 C++ 不变 | noise |
| `pingpong-opt` | `-0.014%` | 资源与 C++ 不变 | noise |
| `enable-unorder-dispatch` | `-0.092%` | 资源与 C++ 不变 | noise |
| `mmasched`（不同于已测 `mma-sched`） | `-0.078%` | Step1/2 仍 `216/54`、`222/52` | noise |
| `sinkload` | `-0.097%` | Step1/2 资源与 C++ 不变 | noise |
| `live-range-split` | 未计时 | 资源与 C++ 不变，目标机制未物化 | codegen reject |

这些开关最多只可能改变最终 machine scheduling，但所有短筛均聚集在
`-0.10%..0%` 的噪声区，且没有资源/occupancy 变化；不扩成长测、不叠加。

### Step1 panel-2/panel-4 网格局部性

Case3 的 32 个长 expert 各对应两个连续 BM128 row-block。此前 panel-10
回退 `+3.980%`，panel-1 serpentine 回退 `+0.478%`；本批补测与长 expert
两 row-block 精确对齐的 panel-2，以及相邻尺度 panel-4：

| 方向 | Case3 变化 vs v084 | Step1 资源 | 决策 |
|---|---:|---:|---|
| `T.use_swizzle(2, enable=True)` | `+3.385%` | `216 MT / 48 ST / 2 waves` | reject |
| `T.use_swizzle(4, enable=True)` | `+3.216%` | `216 MT / 48 ST / 2 waves` | reject |

panel-2 虽精确覆盖同 expert 的两个 row-block，仍与 panel-4 一样回退超过 3%。
这说明当前关键局部性是同一 input row-block 的 16 个 N-column CTA 连续复用；
更早回访 Gate/Up 权重无法补偿对该连续性的打断。panel=1/2/4/10 与公平的
expert-grouped mapping 至此共同关闭 Step1 网格重排轴。

本批没有候选达到 1.2% promotion gate；不创建 v085、不修改 submission、
不移动 `dorm` 性能 HEAD。scratch 位于 `/tmp/v084-step1-delay-initial-a*`、
`/tmp/v084-step2-{early,final-pair}-routed-weight*`、
`/tmp/v084-{cross-mem-fence-sched,pingpong-opt,unorder-dispatch,mmasched,sinkload,live-range-split}*`、
`/tmp/v084-step1-grid-swizzle{2,4}*` 及对应 JSON/codegen 目录。
