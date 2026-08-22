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

## v084 Step2 panel、scheduler latency、tail clear 与激活协同筛选

继续使用同一正常/OJ 合规门禁和 Case1/3 单轮 AB/BA smoke（warmup 5、
repeat 50）。本批候选均通过完整 padded-output correctness；负值表示更快，
但只有稳定达到 `-1.2%` 才能晋级。

| 方向 | Case | 变化 vs v084 | 资源 / 结论 | 决策 |
|---|---:|---:|---|---|
| Step2 `T.use_swizzle(2)` | 3 | `+1.893%` | Step2 `222/52 -> 232/52`；Down 复用不抵 up_logits row 连续性损失 | reject |
| MI scheduler global-memory latency=200 | 3 | `-0.114%` | 资源/C++ 不变 | below gate |
| 同上 latency=400 | 3 | `-0.047%` | 资源/C++ 不变 | noise |
| 同上 latency=800 | 3 | `-0.017%` | 资源/C++ 不变 | noise |
| `metaxgpu-opt-predicate-inst` | 3 | `-0.062%` | 资源/C++ 不变 | noise |
| Step2 无效 tail wave 跳过 accumulator clear | 3 | `+0.042%` | `222/52` 不变；仅 C++ `29152 -> 29278 B` | noise |
| 原生 fast-math + Case1 FP16 SwiGLU | 1 | `-0.097%` | Step1/2 `222/52`、`206/52`；C++ `34334 B` | below gate |

### 因果结论

1. Step2 的 32 KiB Down tile 虽大于 16 KiB up_logits tile，panel-2 仍回退近
   1.9% 并增加 10 个 MT registers；同一 row-block 的 28-column A 复用仍是
   更关键的 grid locality，Step2 小 panel 不再派生。
2. MXCC 明确说明 `metaxgpu-memory-latency` 会影响 MI scheduler，默认值为 0。
   预注册的 200/400/800 三点没有形成大于 0.12% 的信号，而且数值越大收益
   单调缩回零；当前手工 producer 顺序已主导关键 load issue order，不继续扫值。
3. 保留完全相同的 `actual_rows` 语义时，后端 predicate pass 没有收益；tail
   wave 已跳过 MMA后，再省一次 accumulator clear 也只有约 0.04% 噪声。
   padding 的剩余固定开销不是 1.2% 级瓶颈。
4. FP16 SwiGLU 与 native fast-math 没有协同：组合仅 `-0.097%`，明显弱于
   fast-math 单独约 `-0.735%`。转换与更大的 lowering 抵消了低精度算术，
   不把亚门槛结果组合进 submission。

本批没有候选达到 promotion gate；不创建 v085、不修改 submission、不移动
`dorm` 性能 HEAD。scratch 位于 `/tmp/v084-step2-grid-swizzle2*`、
`/tmp/v084-memory-latency-{200,400,800}*`、`/tmp/v084-opt-predicate-inst*`、
`/tmp/v084-step2-tail-skip-clear*`、`/tmp/v084-fastmath-fp16-swiglu*`。

## v084 phase 优先级、尾路径与 MXCC 机器码门禁筛选

本批继续使用正常、OJ 合规 TileLang，不使用 async、foreign source、缓存结果
或 harness 技巧。运行候选均通过完整 padded-output correctness；Case3 采用
同进程 AB/BA、warmup 5、repeat 50 的短筛，只有接近 `-1.2%` 才允许长测。
正值表示候选更慢。

### 源码级调度与尾路径

| 方向 | Case3 变化 vs v084 | 资源 / 物化结论 | 决策 |
|---|---:|---|---|
| Step2 full CTA 整个 K-loop 与 partial CTA 分流 | `+0.227%` | Step2 `222/52 -> 226/54`；uniform 分支扩大 live state | reject |
| 显式 Step2 producer + 56-row tail 跳过第二 A 半块 | `-0.172%` | Step2 `226/54`；真实少发 tail load，但低于 gate | below gate |
| Step1 56-row tail 跳过第二 input 半块 | `+0.098%` | Step1 `216/54 -> 216/60` | reject / noise |
| `actual_rows` 移除外层 `T.max(0, ...)` | 未计时 | generated C++ SHA 与 v084 完全相同 | compiler no-op |
| Step2 输出改 branchless `T.if_then_else` | `-0.088%` | 资源完全不变；完整 padding 仍显式写零 | below gate / noise |
| 偶 phase 低半优先、奇 phase 高半优先 | `-0.032%` | Step2 `222/52 -> 214/52`，仍 2 waves | below gate / noise |

phase 交替候选补完了“固定低半优先、固定高半优先、跨 phase 交替”三种
优先级形态。即使 MT registers 下降 8 个，端到端仍只有约 0.03% 噪声，说明
v084 的核心收益来自 phase 内 `A/B` 邻接，而不是长期 wave 公平性。尾部 load、
output select 与 `actual_rows` 算术也均不是 1.2% 级路径。

### MXCC 隐藏选项的最终机器码审计

本批重新以带目标 flag 的最终 xcore1000 `.text` 为门禁，避免仅凭 generated
C++ 或资源报告误判。基线 Case3 `.text` SHA-256 为 `d2231c66...`。

| 单项开关 | 最终机器码 / 资源 | Case3 | 决策 |
|---|---|---:|---|
| `metaxgpu-remove-short-bra_xmskz` | `bra_xmskz 102 -> 71`，其余资源不变 | `+0.926%` | reject |
| `metaxgpu-hoist-arrive` | `.text` SHA 与 v084 完全相同 | 未计时 | no-op |
| `metaxgpu-XmskOpt-PostRA` | `.text` SHA 与 v084 完全相同 | 未计时 | no-op |
| `mxg-enable-coissue` | `.text` SHA 与 v084 完全相同 | 未计时 | no-op/default |
| `metaxgpu-use-hireg` | 仍为 Step1 `216/54`、Step2 `222/52` | 未计时 | target mechanism absent |
| `enable-aa-sched-mi` | `.text` SHA 与 v084 完全相同 | 未计时 | no-op/default |

短分支删除 pass 是唯一真实改变 ISA 的新开关，但少 31 条静态分支后反而回退
约 0.93%，表明这些短分支比扩大掩码执行域更便宜。其余 arrive、XMSK、
co-issue 与 alias-scheduler 开关均被默认管线吸收或没有适用模式，不能把“开关
写进源码”当成优化。`use-hireg` 也没有降低寄存器或跨 occupancy 阶梯。

本批没有候选达到 1.2% promotion gate；不创建 v085、不修改根 submission、
不移动 `dorm` 性能 HEAD。scratch 位于 `/tmp/v084-step2-{hoisted-full-loop,
explicit-tail-skip,branchless-output-select,alternate-half-priority}*`、
`/tmp/v084-step1-empty-second-half-skip*`、`/tmp/v084-actual-rows-no-max*`、
`/tmp/v084-{remove-short-bra-xmskz,hoist-arrive,xmsk-opt-postra,enable-coissue,
use-hireg,enable-aa-sched-mi}*` 及对应 codegen/ISA/JSON。

## v084 Step2 行类别拆核与后端地址/缓存策略筛选

本批继续以 v084 为唯一 promotion baseline，只使用正常同步 TileLang。进入运行的
候选均通过 OJ source gate 与完整 valid-row correctness，Case3 使用同进程
AB/BA、warmup 5、repeat 50 的单轮 smoke；正值表示更慢。

### Step2 full/tail 行类别拆核

为避免在单 kernel 中复制 full/tail K-loop 后扩大 live state，本次把 Step2
保持总 CTA 数不变地拆成两个 kernel：完整 128-row block 单独发射；100/56-row
block 走保留 `actual_rows` 的 tail kernel。lowering 成功生成三个 kernel：Step1
`216/54`，full Step2 `212/30`，tail Step2 `214/56` MT/ST，全部为 2 waves/PEU，
无 async 或 spill。完整正确性 PASS，但 Case3 `8.935 -> 9.644 ms`，回退
`+7.933%`。

资源下降没有兑现为吞吐：额外 launch 之外，拆核把同一 184-row expert 的完整块
和 56-row 尾块分到不同 dispatch，破坏了原本相邻 CTA 对 Gate/Up/Down 权重的
cache locality。结合已有 single-kernel full/tail 分流 `+0.227%/+3.309%` 反例，
该路线关闭；不再用更多 kernel 换掉 `actual_rows`。

### 最终 ISA 门禁与短筛

| 单项方向 | 最终 ISA / 资源 | Case3 | 决策 |
|---|---|---:|---|
| `close-loads-from-same-base-ptr` | 与 v084 `.metax.s` 字节相同 | 未计时 | no-op |
| runtime load/store interleave | 字节相同 | 未计时 | no-op |
| hoist-else-arrive | 字节相同 | 未计时 | no-op |
| `CloseMergeLoadStoreAccess` | 标量 metadata/address prologue 重排，主要指令计数和 `216/222 MT` 不变 | `+0.015%` | noise |
| `cc-read=hitl1/missl1` | 字节相同 | 未计时 | no-op |
| residency `persisting/noreuse` | 字节相同 | 未计时 | no-op |
| strong/non-contiguous merge、kernel-arg lowering、GVN load-clobber | 四项均字节相同 | 未计时 | no-op |
| direct-address `all`、shift-add combine | 字节相同 | 未计时 | no-op/default |
| direct-address `disall` | 汇编约少 113 行，但 Step1/2 MT `216/222 -> 234/240` | `+0.649%` | reject |
| extended-TSP block placement | MT/ST 不变，`bra_xmskz 102 -> 114` | `+0.663%` | reject |

本批证明这些全局 cache/residency override 没有覆盖当前普通 TileLang `ldg_b128`
形态；地址模式和基本块 placement 虽能改变机器码，也只会增加寄存器、分支或
稳定回退。后端隐藏开关轴至此停止盲扫，下一轮回到可解释的源码数据复用结构。

没有候选达到 1.2% promotion gate；不创建 v085、不修改根 submission、不移动
`dorm` 性能源码。scratch 位于 `/tmp/v084-step2-rowclass-split*`、
`/tmp/v084-{close-same-base-loads,close-merge-loadstore,runtime-loadstore-interleave,
hoist-else-arrive,cc-read-*,rp-*,direct-disall,exttsp}*` 及对应 codegen/ISA/JSON。

### `up_logits` 按 valid rows 物理压紧

进一步使用运行时 `group_offsets + token_offset` 作为 Step1 workspace store 和
Step2 load 的行地址，并把 workspace shape 从 `total_padded` 改为
`total_valid`。Case3 的地址跨度由 12288 行缩到 9088 行；没有硬编码 counts，
有效元素、数学和同步语义不变。

OJ source gate 与完整正确性 PASS。资源从 Step1 `216/54`、Step2 `222/52`
变为 `218/58`、`216/56`，仍为 2 waves/PEU。Case3 短 AB 为
`8.953 -> 8.969 ms`，变化 `+0.185%`，处于噪声/慢侧。

该结果确认原版 `actual_rows` 已经避免对 padding 行产生实际 global
load/store；未触碰的地址洞只扩大虚拟跨度，不等价于 HBM 字节。压紧布局新增
Step1 `group_offsets` 标量 load/address 链，未得到可测 cache 收益，因此不晋级。
证据位于 `/tmp/v084-packed-up-logits*` 与
`/tmp/v084_packed_up_logits_{codegen,case3_short.json}`。

## 从压紧反例转向物理行跨度：v085 有效线索

压紧 valid rows 没有收益并不代表 `up_logits` 布局无关，而是说明 padding 洞没有
产生实际 HBM 字节。继续审计发现 v084 的 FP16 leading dimension 在 Case1 为
16384B、Cases2/3 为 4096B，都是 2 的幂；因此改为只扰动物理行 pitch，而不改变
逻辑行数、列数、计算或有效访问。

Case3 的因果 sweep 呈明显周期响应：

| 额外 pitch | Case3 median vs v084 | 结论 |
|---:|---:|---|
| 64B | `-3.448%` | 有效 |
| 256B | `-4.429%` | 最佳稳定控制 |
| 384B | `-2.653%` | 有效但较弱 |
| 512B | `+0.077%` | 回到噪声 |

最终选择 `+128 FP16 columns = +256B/row`。三 Case 长测分别为
`-4.315% / -4.602% / -4.438%`，pstdev 均不超过 `0.061%`；Case3 三对
mcTracer 中 Step1 仅 `-0.547%`，Step2 达 `-12.750%`。三 Case 完整 padded
correctness、OJ source/generated gate、最终 ISA no-async/no-spill 与 2-wave
门禁全部通过。

周期性和 Step2 归因强烈支持 cache set、memory partition 或内部 bank 地址映射
冲突，但 mcTracer 不能直接证明具体硬件层级，报告中保持为高置信推断。该方向已
独立归档为 `v085_step2_up_logits_ldpad128_sc-16g`，不再作为 abandoned trial；
外部 OJ 逐 Case 数值待定，因此按最新 SOTA contract 不创建同 ID submission
ledger。下一轮从 +256B pitch 候选继续研究 Step2 CTA-row/expert 映射。

## v085 晋级后的行映射、Step1 资源与跨 kernel 顺序筛选

本批以精确归档 v085 为唯一性能父版本，继续只使用正常/OJ 合规 TileLang。
候选先写 hypothesis，执行 source/generated-code gate、完整 padded-output
correctness，再按资源门槛或同进程 AB/BA 决定是否扩成长测。负值表示更快；没有
任何结果达到相对 v085 至少 1.2% 的 promotion 门槛。

### `up_logits` pitch 的局部最优与布局因果

为排除 v085 初筛中的 DVFS 漂移，Case3 对所有相邻 pitch 使用持续
warmup=300/repeat=100、两轮 AB/BA 重测。相对 pad128（额外 128 个 FP16 列，
即 +256B/row）：

| extra FP16 columns | 相对 v085 | 决策 |
|---:|---:|---|
| 32 | `+0.991%` | slower |
| 64 | `+1.704%` | slower |
| 96 | `+0.938%` | slower |
| 160 | `+0.840%` | slower |
| 192 | `+1.819%` | slower |
| 224 | `+0.988%` | slower |
| 256 | `+4.697%` | 512B 周期回到冲突档 |

随后补齐此前没有做过的 Case1/2 shape-specific sweep。所有候选完整输出均通过，
Case1 使用 warmup=1000/repeat=300，Case2 使用 warmup=100/repeat=100，每点两轮
AB/BA：

| candidate vs pad128 | Case1 | Case2 |
|---|---:|---:|
| pad64 | `+1.229%` | `+1.621%` |
| pad96 | `+0.534%` | `+0.740%` |
| pad160 | `+0.515%` | `+0.762%` |
| pad192 | `+1.163%` | `+1.601%` |
| pad224 | `+0.803%` | `+0.839%` |

因此 pad128 是三个官方 shape 共同的局部最优点，不需要 shape specialization。
另外三组布局/地址控制给出更具体边界：

- 保持 +256B pitch，只整体移动 workspace base：+64B 为 `+1.830%`、+128B 为
  `+3.281%`、+256B 为 `-0.097%` 噪声。收益来自 stride 关系，不是 allocator
  起始相位。
- 4D tile-major workspace 完整正确，但 Case3 `+1.671%`；paired mcTracer 中
  Step1 `-0.042%` 噪声、Step2 `+5.541%`。ISA 仍是 36 个 `ldg_b128`、256 MMA、
  无 spill，Step2 甚至从 `222/54` 降至 `218/52`，证明回退不是失去向量化或
  地址代码膨胀，而是连续 tile 映射本身更差。
- tile-major 内再给每个物理 row slot 256B，Case3 仍 `+1.633%`；相同低位相位
  不足以复制 v085，v085 的大 row-major stride/high-bit 分布或跨 CTA locality
  才是关键。

### CTA-varying workspace phase

在 v085 的 256B 空隙内，让不同 token-block CTA 使用不同列偏移，逻辑字节、
workspace 大小、行内连续性与 MMA 均不变：

| phase pattern | Case3 | 资源/结论 |
|---|---:|---|
| 4 phases × 64B | `+1.794%` | Step2 `222→216 MT`，仍 2 waves |
| 2 phases × 64B | `+0.511%` | 两轮同向慢 |
| 4 phases × 32B | `+2.747%` | 两轮同向慢 |

三个候选全部完整正确。动态分散 CTA base phase 不能叠加 v085，且“相位更多”
反而更差；v085 的收益不是泛化的随机打散，而是固定 row-pitch 映射。该家族关闭。
最终候选 SHA 分别为 `8d731718...`、`fd8ef90b...`、`9d33fcd9...`。

### Step1 小 accumulator 串行复用与 BK32

旧 BN64 实验把 Step1 CTA 数翻倍，虽然寄存器 `222→150`，Case1 却回退
17.68%。本批做了更公平的终局测试：每个原 N128 CTA 使用 N64 accumulator，
串行计算两个相邻半块，CTA 数不变。首版缺少两个半块之间的 CTA barrier，严格
candidate-vs-parent 检查发现错误；补 barrier 后 candidate 与 v085 **逐 bit 相同**，
padding 也全零。最终资源为 Step1 `166/46`、3-wave，Step2 `204/60`、2-wave，
无 async；但 Case1 三轮 warmup=1000/repeat=300 为
`+20.623% / +20.608% / +20.443%`，中位 `+20.608%`。

这证明 occupancy 台阶真实跨过也不足以获胜：同 CTA 为第二个 N64 半块重复读取
input，并增加半块边界 barrier，其成本显著超过多一个 resident wave。最终源码
SHA `1ba63f4c...`，不再派生串行 M/N 半块。

另一个此前未覆盖的资源闸门是 Case2/3 Step1 `BK64→BK32`。lowering 正常，
资源从 `218/54` 降至 `186/40`，但仍为 2-wave；K phase/barrier 数会翻倍且没有
occupancy 档位收益，因此按 hypothesis 在计时前拒绝。源码 SHA `e4e657d3...`。

### Step2 反向 K-pair 消费

为测试跨 kernel recency，Case3 Step2 按 `(30,31),(28,29),...,(0,1)` 读取
workspace，同时保留 pair 内 v084/v085 的 A-first 邻接。第一次实现漏改了
tail-pruned 首块手工加载，完整 reference 立即失败；生成 C++ 显示 A0 与 B30
错配，修正后完整 correctness PASS。正确候选 Step2 为 `216/52`、2-wave，
Case3 smoke 为 `-0.025%`，纯噪声。

这与旧 reverse-bx 结果一致：Step1 最后写入的 workspace 区域没有可兑现的
跨 kernel cache recency，反向 reduction 顺序不再扩成长测。最终源码 SHA
`4a39185a...`；错误中间态不计作性能候选。

### 本批结论与证据位置

1. v085 pad128 已在三个 Case 上形成稳健局部最优；base offset、tile-major、
   CTA phase skew 均不能叠加。
2. Step1 accumulator 是寄存器主体；缩 staging 到 BK32 不跨档，真正跨到 3-wave
   的 serial N64 又被重复 input 流量和 barrier 终止性击败。
3. 降低 MT registers（多个候选到 216/218/186/166）仍不能单独预测吞吐；必须
   同时保留请求发射邻接、流量与同步结构。
4. 没有候选达到 1.2%，因此不创建 v086、不修改根 submission、不移动 v085
   性能源码。

scratch 证据位于 `/tmp/v085_pitch_pad*_vs_pad128_case3.json`、
`/tmp/v085_baseoff*_vs_zero_case3.json`、`/tmp/v085_tile_major*`、
`/tmp/v085_step1_serial_n64*`、`/tmp/v085_shape_pitch_sweep_case{1,2}.json`、
`/tmp/v085_step1_bk32_codegen_case3/`、`/tmp/v085_cta_*` 与
`/tmp/v085_step2_reverse_k*`；对应 hypothesis cards 与候选源码同在 `/tmp`。

## v085 物理吞吐复核与细粒度 consumer/tail/request 筛选（2026-08-22）

本批继续以精确归档 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent，
只使用正常、同步、OJ 合规 TileLang。所有进入计时且可表达的候选均通过源码门禁
和完整 padded-output reference check；Case3 短筛为同进程 AB、warmup 5、
repeat 50。负值表示更快，但只有稳定达到 `-1.2%` 才能长测或创建版本。

### 对齐后的物理 HBM/AP 采样

为了区分“逻辑 load issue 接近屋顶”与“真实 HBM 已饱和”，先让 v085 Case3 在
完成 JIT 后写出 `READY`，随后连续执行 5000 次，并以 100 ms 间隔同步采样。
持续负载 device-event 平均为 `8.548866 ms`。355 个活跃 HBM 样本为：

- median `1,006,989 MB/s`，mean `1,006,191 MB/s`；
- p10/p90 `994,195 / 1,016,741 MB/s`；
- min/max `983,278 / 1,042,390 MB/s`。

同一窗口 8 次 AP 快照覆盖 832 个 AP 样本，median `95%`、mean `95.06%`、
范围 `93%--98%`。因此 Case3 已把 104 个 AP 全部持续占满，但物理 HBM 只有
约 `1.0 TB/s`，明显低于同机流式实测约 `1.4 TB/s`：瓶颈不是 grid 并行度不足，
也不能简单称为 HBM 饱和，更像 CTA 内的 request issue、依赖和 MMA/VLS/MTE
混合关键路径。

mcProfiler 对 `kernel_kernel` 的 kernel-name replay 正常完成、无 private spill、
shared non-conflict 为 100%，整次 range 聚合 MTE/MMA duty 为 `42.58%/23.38%`。
但其 achieved waves、global bytes 与 v084 审计一样在两个 kernel filter 下仍会
聚合多批 replay；本轮不把 `39.4 GB/12.5 GB` 或巨大 stall 数误写成单个 Step1
的绝对计数。它们只支持继续研究 MTE/MMA 排程，不支持具体 cache/stall 定量。

### Step1 B-column fragment streaming

当前每 wave 先把八个 16-column B 微块全部载入 `weight_local`，再执行对应 MMA。
候选保持 accumulator、global/shared 字节、MFMA、barrier 和 Gate-before-Up 次序
不变，只按 1/2/4 个微块流式 `LDS -> MMA`。预注册 hypothesis：
`/tmp/v085-step1-bcol-stream-hypothesis.md`。

| group columns | SHA-256 | Step1 MT/ST | Case3 | 决策 |
|---:|---|---:|---:|---|
| 1 | `a6bb92c3...` | `218/54`，2 waves | `+0.033%`，完整正确 | noise/reject |
| 2 | `cc4f7329...` | `234/54`，2 waves | 资源门禁 | reject |
| 4 | `a1af5419...` | `234/54`，2 waves | 资源门禁 | reject |

最细流式没有缩短最终 MT live range，2/4 组反而增加 16 个 MT registers；g1 动态
性能与 v085 相同。B local 的源码数组大小不是当前寄存器主体，column streaming
方向关闭。

### Step1 input-tail 对齐粒度

候选只把 Step1 input prefetch 的行上界从 `actual_rows` 向上取整，MFMA 的原始
32-row wave predicate、输出语义、权重流量和所有同步保持不变。目的是检验是否能
用少量已经参与 MMA 的 padding lane 流量换取更便宜的 load mask。

| rounded rows | SHA-256 | Step1 MT/ST | Case3 | 决策 |
|---:|---|---:|---:|---|
| 8 | `77bce753...` | `218/54` | codegen 更大，机制未物化 | reject before timing |
| 16 | `f9c22ca8...` | `218/52` | `+0.817%`，完整正确 | reject |
| 32 | `5c2a5a47...` | `210/44` | `+2.817%`，完整正确 | reject |

32-row 对齐确实大幅简化资源状态，却仍未跨 3-wave occupancy，并因多读 padding
input 稳定回退；16-row 较小但同向，8-row 又保留原 mask/codegen。结论是 v085
的精确 `actual_rows` input pruning 有真实价值，不能用 padding 流量交换较低的
静态寄存器数字。

### Step2 非对称两阶段 A burst

在保持最佳 `A0 -> B0 -> A1 -> B1`、B 的 128/128-column split、总流量、MFMA、
barrier 和 CTA 不变时，显式测试 A 的 32/96、64/64 控制、96/32 row split：

| A split | SHA-256 | Step2 MT/ST | Case3 | 决策 |
|---|---|---:|---:|---|
| 32/96 | `fc149643...` | `220/56` | `+0.606%`，完整正确 | reject |
| 64/64 explicit control | `1e6a5604...` | `218/56` | `-0.288%`，完整正确 | below gate |
| 96/32 | `bb350ef...` | `226/62` | correctness FAIL，8.6% mismatch | semantic reject |

32/96 相对显式对称控制还更慢约 0.9%；96-row fragment 前片虽能 lowering，却不能
保持注解 fragment 的正确 slice 语义。现有对称 64/64 请求窗口仍是实测最优，
显式控制的约 0.29% 小收益与旧手工展开约 0.24% 一致，明确低于 1.2% 门槛。

### 本批结论

1. v085 Case3 是全 AP 高活跃、约 1.0 TB/s HBM 的混合 issue/compute 路径，不能
   归因为缺 CTA 或 HBM 已跑满。
2. B-column fragment streaming、padding input 换 mask、非对称 Step2 A burst
   都已得到机制与反例，不继续在邻近参数上盲扫。
3. 没有候选达到 1.2%，因此不创建 v086、不改根 submission、不移动 `dorm`。

scratch 证据位于 `/tmp/v085_{hbm,ap}_aligned.log`、
`/tmp/v085_case3_step1_mcprof/`、`/tmp/v085-step1-bcol-stream-*`、
`/tmp/v085-step1-{wave,row*}-rounded-input*`、`/tmp/v085-step2-a-split*` 及对应
`*_codegen/`、`*_smoke.json` 与 hypothesis cards。

## v085 epilogue、shared 绕行与 workspace 压缩边界（2026-08-22）

继续以归档 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent。本批候选
全部是正常/OJ allowlist 内 TileLang，无 async copy、foreign helper、输出缓存或
预计算；错误候选一律不计时。历史 v028 的 `sync only` 名称也重新审计：它只是
删除 double-wait，核心仍含 4 个 `memcpy_async<16>` 静态站点和 16 条 BSM load，
因此不满足当前禁用异步拷贝的约束，不能复用。

### 低风险 epilogue 与 workspace phase 控制

| 方向 | SHA-256 | Case3 / 结果 | 决策 |
|---|---|---:|---|
| Step1 仅对 active wave 做 SwiGLU/store 尾声 | `c1b1ed9a...` | 三轮 `-0.093% / +0.068% / +0.064%` | noise |
| `up_logits` 每 wave 额外错位 64B | `503d0781...` | `+1.400%` | reject |
| `up_logits` 每 wave 额外错位 32B | `5836932a...` | `+2.721%` | reject |
| Step2 两个 128-column store loop 合为 256-column loop | `9ebc941f...` | `+0.020% / +0.049% / +0.100%`，median `+0.049%` | noise |

固定 +256B row pitch 已经提供有效的跨行/partition phase；再在行内按 wave 错位会
破坏连续访问，且错位越细回退越大。合并 epilogue 虽保持 Step2 `222/54`、2 waves
和完整正确性，也只去掉源码控制骨架，运行时没有可测收益。

### Step2 绕过 shared 与 producer 四分粒度

direct-B 候选（`9c590272...`）让每个 wave 直接以 16B `uint4` global load 装入
MFMA B 寄存器，删除 32 KiB Down shared 以及 Step2 全部 phase barrier。生成代码
如预测把 Step2 从 `222/54` 降到 `204/52`，整文件静态 `syncthreads` 从 8 降到
4，无 spill、完整正确；但四个 wave 重复请求同一 B tile 后，Case3 三轮稳定
`+108.934% / +108.870% / +108.832%`。C500 的 cache 不能把这种 wave 级重复
请求变成廉价替代，Down 权重必须由 CTA shared 协作 staging。

旧 `A32/B64` 四阶段使用动态 stage 变量时资源为 `256/108`。本批把四阶段地址
全部手工常量化（`5614afe8...`），仍得到 Step2 `246/82`、2 waves，代码体积从
约 28.5 KiB 增至 35.7 KiB，未跨 occupancy 档。按预注册资源门禁拒绝且不计时；
现有 `A64 -> B128 -> A64 -> B128` 是正常同步 producer 的最小可行粒度。

### 低位宽 `up_logits` 精度/资源终局

目标是减少 Step1→Step2 workspace 真实字节，所有版本都保留 FP32 MMA 累加和
完整 padding 语义：

| 表示 | SHA-256 | Step1/Step2 MT | 完整 Case3 correctness | 决策 |
|---|---|---:|---:|---|
| 静态 scale=24 INT8 | `1c3f9a02...` | `218/222` | 16.3% mismatch，max abs `0.565918` | reject |
| 每 token 动态 scale INT8 | `d40b2104...` | `220/228` | 1.4% mismatch，max abs `0.044922` | reject |
| 每 32 列动态 scale INT8 | `0cc7adb0...` | `220/236` | 0.2% mismatch，max abs `0.030518` | reject |
| 每 16 列动态 scale INT8 | `c1ab8dcb...` | `220/246` | `22405/88080384`（0.0254%）超容差，max abs `0.021606` | reject |
| 每 8 列动态 scale INT8 | `6fe3ad38...` | `220/256` | 按资源门禁不执行 | resource reject |
| group32 8-bit 主值 + packed 4-bit residual | `c7cc19dc...` | 未生成 | layout inference 拒绝同一 parallel iteration 读取 `gate_local[i,2p]` 与 `[i,2p+1]` | compile reject |

INT8 精度随 group 缩小单调改善，但在达到正确性前 Step2 已精确撞到 256 MT；
12-bit 方案理论 payload 约 1.5625 B/value 且误差可再降约 16 倍，但正常 TileLang
fragment layout 无法表达相邻 nibble packing。绕过 `.data`/私有物理映射将越过
本轮非 hack 边界，因此不做。低位宽 workspace 家族至此关闭。

### 本批结论

1. Step2 shared staging 和当前两阶段 producer 都是实测必要结构；删除 barrier
   但复制权重请求会终止性回退，继续细分 producer 又逼近寄存器上限。
2. workspace 的进一步正常收益不能来自简单 INT8/group scaling；精度与寄存器
   约束在 group8 处交叉，packed residual 又受公开 fragment 映射能力限制。
3. 本批无候选达到 `1.2%` promotion gate；不创建 v086、不修改 submission、
   不移动 `dorm` 性能源码。

scratch 证据位于 `/tmp/v085-step1-wave-epilogue-prune*`、
`/tmp/v085-up-logits-wave-skew*`、`/tmp/v085-step2-{unified-epilogue,direct-b,
static-quarter}*`、`/tmp/v085-up-logits-int{8,12}-*` 及对应 codegen/JSON/hypothesis。

## v085 跨 kernel 分块、后端展开、激活近似与地址映射续筛（2026-08-22）

继续以归档 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent，只使用
正常、同步、OJ allowlist 内的 TileLang。所有进入计时的候选均通过完整
padded-output reference check；负值表示更快，只有稳定达到 `-1.2%` 才能晋级。

### 两段 expert-row pipeline

Case3 把 96 个 row-block 分成两个 48-block chunk，并按
`Step1[0] -> Step2[0] -> Step1[1] -> Step2[1]` 发射，试图缩短一半 workspace
的生产到消费距离。四个 kernel 均保持原资源（Step1 `218/54`、Step2
`222/54`，2 waves）且完整正确，但三轮总时间稳定回退
`+2.629% / +2.598% / +2.577%`。

mcTracer 显示两个 Step1 合计 `5.994752 ms`、两个 Step2 合计
`2.718464 ms`，相对同次 parent 的 `5.926656 / 2.661376 ms` 已分别慢
`1.149% / 2.145%`；中间 Python/JITKernel submission gap 另有约 `0.030 ms`。
即使假设中间 gap 为零，分块后的 device kernel 本体也更慢，因此不继续拆成
四段。证据位于 `/tmp/v085-expert-chunk-pipeline2*`、
`/tmp/v085_chunk2_mctracer_case3/` 与 `/tmp/v085_chunk2_trace.json`。

### MXCC 循环展开边界

通用 `-fno-unroll-loops` 被 MXCC 明确拒绝为 unknown argument。随后用
`mxcc -mllvm --help-hidden` 确认并分别测试正式的 MetaX 与 LLVM 展开阈值：

- `metaxgpu-unroll-threshold=0` 对 Step1 最终 ISA 无效：仍为 `26248 B`、
  `3281` 条静态指令、`256 MMA`、`218/54`；Step2 只少 1 条 `snop`。
- 同时把普通、partial 与 pragma 阈值置零会得到表面上的 `30 MT / 8 waves`，
  但每线程产生 `772 B` stack；完整正确，Case3 `8.603 -> 336.355 ms`，
  回退 `3809.6%`。
- 仅令普通 `unroll-threshold=0` 时，Step1/2 为 `230/236 MT`，最终 ISA 各有
  `4 private loads / 20 private stores`，静态 MMA 从 256 减为 128；Case3
  `8.574 -> 40.751 ms`，回退 `375.3%`。
- 阈值 sweep 的相变清晰：`64--192` 均有 `132 B` stack；`256--768` 无 stack，
  但 MT 为 `232/236`、仍 2 waves，`.text` 与基线同为 `46320 B`；到 `1024`
  才恢复基线 `218/222`。不存在“少展开、无 spill、跨 4-wave”的中间甜点。

因此后端去展开不能改善 v085；低寄存器数字若来自 private memory，不是 occupancy
收益。临时源码/ISA 位于 `/tmp/v085-unroll-*`、`/tmp/v085_unroll_*` 与
`/tmp/unroll_threshold_*`。

### 小标量去重与 SiLU 近似

Step2 routed-weight 在每个 64-lane wave 中由前 16 lane 读取、再用
`T.shfl_sync(width=64)` 广播的 v085 复核完整正确；Step2 MT `222 -> 226`，
三轮变化 `+0.192% / -0.261% / +0.250%`，中位慢 `0.192%`。这与 v084 旧
shuffle 结果一致：四路重复 scalar load 已被请求合并/cache 吸收。

另对正常数学近似做了终局试验：degree-15 SiLU 多项式在 `[-7,7]` 的离线最大
绝对误差约 `0.00638`，完整 Case1 correctness PASS、资源档位不变，但时间
`2.609 -> 2.675 ms`，回退 `2.536%`。降低到 degree-11（离线最大误差约
`0.01484`）后，Case1 有 `854 / 6291456` 个元素越过容差，最大差
`0.018066`。高阶正确但 Horner 依赖链更慢，低阶又不满足数值契约，正常
多项式激活家族关闭。证据位于 `/tmp/v085_silu_poly{11,15}*` 及对应 hypothesis。

### Step2 output-half 配对与 Step1 输入 row pitch

此前 serpentine 只改变 CTA 顺序，没有改变同一 CTA 的两个 128-column Down
panel。本批把相邻配对 `(2y, 2y+1)` 改成跨距配对
`(y, y+step2_col_tiles)`；CTA/MMA/字节/barrier/A 复用与 `218/222` MT 均不变，
完整正确，但 Case3 三轮稳定 `+1.907% / +1.783% / +1.746%`。相邻 Down panel
的空间局部性有真实价值，不继续扫配对距离。

最后把 v085 的 +256 B row-pitch 机制反向用于 Step1 input：新增一个正常
TileLang prepack kernel，将 Case3 输入复制到 `hidden+128` FP16 row pitch。
三个 kernel 资源分别为 copy `90/16`（5 waves）、Step1 `218/54`、Step2
`222/54`，无 spill且完整正确，但端到端三轮稳定回退约 `15.43%`。
mcTracer 归因为：copy 仅 `0.240896 ms`，Step2 `2.651136 ms` 基本正常，
Step1 却升至 `7.024128 ms`，相对同环境约 `5.926656 ms` 慢约 `18.5%`。
原始 14336 B input stride 对跨 N-CTA A 复用更有利，up_logits 的 pitch 规律
不能机械迁移到输入。证据位于 `/tmp/v085_input_ldpad128*` 与
`/tmp/v085_input_ldpad128_trace/`。

### 本批结论

1. 分块 launch 不能改善跨 kernel recency，反而让两个 GEMM 本体都变慢。
2. 后端展开存在 spill/无 spill 的离散相变，但没有跨 occupancy 的可用中间点。
3. 标量 load 与激活尾声仍不是新的 1.2% 主路径。
4. v085 的地址收益具有张量与访问模式特异性：相邻 Down panel、原始 input
   stride 都应保留，只有 Step1->Step2 `up_logits` 的 +256 B row pitch 有效。
5. 本批无候选达到 promotion gate；不创建 v086、不修改 submission、不移动
   `dorm` 性能源码。

## v085 寄存器预取、尾块配对与请求相位续筛（2026-08-22）

继续以精确 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent，只使用正常、
同步、OJ allowlist 内的 TileLang。候选先做 source/generated gate、完整 padded-output
reference check，再做 Case1/3 AB smoke；正值表示变慢。没有结果达到 `-1.2%`。

### 激活、consumer live range 与初始化排程

| 方向 | 结果 | 关键证据 / 决策 |
|---|---:|---|
| Case1 SiLU Pade(5,4) | median `-0.023%` | 三轮 `+0.057/-0.125/-0.023%`，正确但纯噪声 |
| FP8 e4m3fn workspace | correctness FAIL | `27.9%` mismatch，max abs `0.153` |
| Step1 input `coalesced_width=4` | Case3 `-0.089%` | 噪声 |
| Step1 Gate/Up `coalesced_width=4` | Case3 `+1.498%` | 显式缩窄权重 producer 更慢 |
| Step1 `Gate0-Up0-Gate1-Up1` producer 顺序 | Case3 `+2.032%` | 破坏原六段延迟窗口 |
| 最后一组 Up MMA 前提前 Gate 激活 | Case1 `+0.453%` | `222/54`，live state 增大 |
| 最后 Up MMA 间插入 1/2/4 个激活 quarter | Case3 `+0.511/+0.338/+0.338%` | 均为 `238/56`，无收益 |
| Step1 clear 延后到首 A load 后 | Case3 `-0.010%` | `218/54`，最终 ISA 仅少 1 条 `snop` |
| Step1 clear 延后到首轮 staging 后 | Case3 `-0.174%` | `218/56`，低于门槛 |
| Step2 clear 延后到首 barrier 前 | Case3 `-0.039%` | `222/56`，噪声 |

试图把下一组 Gate/Up B 值跨 barrier 保存在寄存器时，所有完整预取版本都产生
private stack：显式 half[32] 虽正确且为 `230/52`，但每线程有 `68B` stack，
Case1 回退 `16.94%`；进一步把表面资源降到约 `220 MT` 的 half/manual-vector
版本仍有 `36B` stack或被 codegen gate 拒绝。结论是当前 backend 无法让额外 B
状态无 spill 地跨 CTA barrier，不能把较低静态 MT 数当成可用预取。

另一个 320-thread/5-wave staging 候选在 Case3 LayoutInference 阶段得到
`no available layout found`：四 row-wave accumulator fragment 不能直接挂在
五 wave CTA 上。官方 `T.gemm` MACA 路径也仍构造同一 `TensorCoreIntrinEmitter`，
忽略调用点 `k_pack=2` 并退回已测的 16-K consumer；两次 `T.gemm` 还会把 Gate
与 Up 分组，破坏 v085 交错。Step1 MFMA micro-loop 从 `kp,row,col` 改为
`kp,col,row` 后最终 `.text` SHA 完全相同，说明 backend 已规范化该次序。

### 两个 expert 的 56-row tail 配对

Case3 长 expert 的第二个 BM128 只有 56 行，尝试让一个 CTA 的 waves0--1 计算
expert A、waves2--3 计算 expert B。主 Step1 仍处理 short expert 与长 expert 首块，
尾块进入独立配对 kernel；数学、有效行与输出均完整正确。

| paired-tail 结构 | 资源 | Case3 end-to-end | mcTracer 尾核 | 决策 |
|---|---|---:|---:|---|
| BN128，Gate/Up 同时驻留 | tail `252/52`，64 KiB，2 waves | `+13.923%` | `3.001600 ms` | reject |
| BN64，两 expert 同 CTA | tail `138/52`，32 KiB，3 waves | `+20.852%` | `3.764480 ms` | reject |
| BN128，单 32 KiB buffer 分阶段复用 | tail `212/52`，32 KiB，2 waves | `+9.180%` | 未扩 profile | reject |

首版 trace 的 candidate 主核/尾核为 `4.034304/3.001600 ms`，而 v085 完整 Step1
为 `5.874944 ms`；配对尾核必须低于约 `1.84 ms` 才可能打平。BN64 trace 更差：
主核/尾核 `4.118016/3.764480 ms`，合计 Step1 比同次 v085 慢 `34.394%`，两 kernel
间空泡仅 `0.031232 ms`。单缓冲把 64 KiB 和 40 个 MT register 消掉后仍慢 9.18%，
证明失败不只是 shared occupancy：配对并未减少有效 MMA/权重字节，BN64 又复制 A，
BN128 单缓冲则增加 Gate/Up 分阶段 barrier。该 tail 配对家族关闭。

### Step2 请求宽度与 workspace 细相位

此前 `coalesced_width` 只测过 Step1。本批补测 Step2 两类 producer：

- Down global-to-shared copy：cw2 将 Step2 推到 `252 MT`，资源拒绝；cw4 为
  `228 MT` 且 Case3 `+0.752%`；cw8 generated C++ 与 v085 SHA-256 完全相同，
  即默认映射。
- `up_logits` global-to-fragment 的显式 `T.Parallel`：cw4/cw16 均与 v085
  generated C++ 逐字节相同。MMA fragment 的固定 thread/index layout 覆盖了
  coalescing hint，不能借该注解改变 A 请求。

在 workspace phase 上，旧 CTA-level 2x64B 会让同一长 expert 的两个 row-block
落到不同 phase。本批改为 `(expert_id % 2) * 32` FP16 columns，保持 expert 内
phase 一致；完整正确、Step2 `216/52`，但 Case3仍回退 `+0.737%`。动态列起点
本身的地址/连续性代价高于可能的分散收益。

最后在 v085 pad128 周围补齐此前 64B 步长未覆盖的细 pitch。四点均 source/
generated OJ PASS、完整 padded correctness PASS、无 async/spill：

| extra FP16 columns | 相对 v085 Case3 | Step2 MT/ST |
|---:|---:|---:|
| 112 | `+3.009%` | `216/52` |
| 120 | `+4.786%` | `216/52` |
| 136 | `+4.812%` | `216/52` |
| 144 | `+3.054%` | `216/52` |

pad128 因此不只是 64B 粗网格的局部最优；偏离 `-32/-16/+16/+32B` 都产生 3%--5%
终止性回退，进一步支持离散 cache-set/memory-partition 地址映射推断。较低 Step2
寄存器再次没有预测到更快运行。没有候选达到 1.2%，不创建 v086、不修改
submission、不移动 v085 性能源码。

本批 scratch 位于 `/tmp/v085_{silu_pade54,weight_cw4}*`、
`/tmp/v085_step1_{gate_odd,lastup,defer_accum,final_gate,mma_kp}*`、
`/tmp/v085_step2_defer_accum*`、`/tmp/v085_step1_pair_expert_tails*`、
`/tmp/v085_step2_{down,up_logits}_cw*`、`/tmp/v085_up_logits_{expert_phase,pad}*`
及对应 hypothesis/codegen/JSON/mcTracer 目录。

### 512B pitch 周期复现与 K-front 并发映射

为区分“pad128 单点偶然”与真正的地址周期，继续测试相同低位相位但更大的
workspace stride：Case3 pad384 为 `4864B = 19*256B`，pad640 为
`5376B = 21*256B`。两者均 OJ/source/generated PASS、完整 padded correctness
PASS，Step1/2 资源与 v085 同为 `218/54`、`222/54`，无 async/spill。单轮 AB
分别为 `+0.0444%/+0.0439%`，与 v085 完全等价。

结合已知 pad256（`18*256B`）相对 v085回退约 `4.70%`，现在可以直接复现：
`17/19/21` 个 256B 的奇数 stride 属于同一好相位，偶数 stride 属于冲突档，
响应周期约为 512B。更高地址位没有进一步收益，因此仍保留内存占用最小的 pad128。

最终 ISA 审计显示 Step2 每个稳态 stage 已把 predicated `up_logits` A 请求与四个
Down `ldg_b128` 批次并列发出，再按 gvmcnt 逐个写入 shared；barrier 前没有新的
源码级 ready-work 空洞。作为并发映射对照，基于已正确的 reverse-K 版本，让偶数
输出 CTA 正向、奇数 CTA 反向遍历 K-pair。候选保持字节/MFMA/barrier/CTA 不变，
完整正确、Step2 `216/52`，但 generated C++ `29.2 -> 32.7 KiB`，Case3 回退
`+5.460%`。所有 CTA 一起反向原本仅 `-0.025%` 噪声，因此结论是方向本身无关，
而相邻输出 CTA 保持同一 K-front 对 `up_logits` 的 cache/request 合并很重要。

新增 scratch：`/tmp/v085_up_logits_pad{384,640}*`、
`/tmp/v085_step2_bipolar_k*` 及对应 hypothesis/codegen/JSON。仍无候选达到 1.2%，
不创建 v086、不修改 submission、不移动 v085 性能源码。

## v085 普通 copy cache hint、同步双 B 缓冲与 reciprocal lowering 续筛（2026-08-22）

继续以精确归档 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent，只使用
正常、同步、OJ allowlist 内的 TileLang。候选先写 hypothesis，依次经过源码、
generated code、最终 ISA、完整 padded-output correctness 与门禁计时；只有稳定达到
`-1.2%` 才允许长测或创建版本。

### 普通 `T.copy` 的 eviction policy 能力边界

TileLang 公开 `T.copy(..., eviction_policy="evict_first")` 会把注解写进 Copy node，
但源码审计显示 MACA 后端只在 TMA lowering 的 `tl::tma_load` 路径读取该值；普通
global-to-shared SIMT copy 不消费它。给 Step2 所有 Down copy 加 `evict_first` 后，
Case3 generated C++ 与 v085 的 SHA-256 同为 `9b8826636f81...`，`cmp` 逐字节相同。
因此该候选在 codegen gate 直接淘汰，未运行 benchmark。它也解释了此前全局 cache
flag 无法覆盖当前 `ldg_b128 -> shared` 路径的原因。

### Step2 64 KiB 同步双 B shared buffer

候选把 Step2 单个 32 KiB `down_shared` 扩成 even/odd 两个不重叠的 32 KiB 区域，
保持 `A0 -> B0 -> A1 -> B1`、HBM 字节、MMA、CTA、A fragment 与请求宽度不变。
由于下一 B tile 不再覆盖仍被其他 wave 消费的旧 tile，删除两个覆盖前 CTA barrier，
只保留 copy 完成后的可见性 barrier。

- generated C++ 静态 `__syncthreads` 站点从 `8` 降到 `6`，机制真实物化；
- Case3 Step2 从 `222/54` 增至 `230/54` MT/ST，仍为 2 waves、无 spill、无 async；
- 三 Case 完整 valid rows 与 padding 全部 correctness PASS；
- 单次终止性门禁相对 v085 分别为 Case1 `+20.474%`、Case2 `+18.689%`、
  Case3 `+20.256%`。

回退远大于噪声和 promotion 门槛，故不做正式 paired benchmark。结论是同步条件下
减少 barrier 不足以抵消 32→64 KiB shared 带来的实际驻留/容量与地址状态代价；
不继续派生 shared padding 或更大 K-group。

### 向量布局内 reciprocal 替代

为避免历史直接 `__builtin_mxc_rcpf` 破坏 fragment 的 float4 activation lowering，
本批只使用公开 TileLang 数学算子，并保持原 `T.Parallel` 布局：

| 方向 | 最终 ISA / 资源 | correctness / 门禁 | 决策 |
|---|---|---:|---|
| `T.rsqrt(d*d)`，`d=1+exp2(...)` | exact divide 链消失，变为 `64×rsq_f32`；Step1 `222/52`、2 waves、无 spill | Case1完整 PASS；单次 `+1.927%` | reject |
| `T.ieee_frcp(d, "rn")` | C++ 为 `__frcp_rn`，但最终 ISA仍是 `rcp/div_scale/div_fmas/div_fixup`；Step1 ST `52→56` | 机制未物化，不计时 | ISA reject |

direct rsqrt 已通过误差门禁，因此不触发预注册的 Newton correctness fallback；增加
Newton 算术也没有性能依据。`ieee_frcp` 则证明“前端 intrinsic 名称更直接”不代表
最终 C500 指令更短，必须以 `.metax.s` 而不是 generated C++ 作最终门禁。

本批 scratch 位于 `/tmp/v085_{eviction_first,step2_sync_double_b,silu_rsqrt,
silu_ieee_frcp}*` 及对应 hypothesis、codegen、ISA、fullcheck JSON。没有候选达到
`1.2%`，因此不创建 v086、不修改 submission、不移动 `dorm` 性能源码。

## v085 显式宽加载、范围证明与正反 K-front 续筛（2026-08-22）

继续以精确归档 v085（SHA-256 `6d4aa3a6...`）为唯一 promotion parent，只使用
正常、同步、OJ allowlist 内的 TileLang。候选先写 hypothesis，依次执行 source /
generated gate、最终 xcore1000 ISA、项目原生 correctness 与 AB screen；稳定提升
不足 `1.2%` 不创建版本、不移动 `dorm`。

### 公开 load intrinsic 的真实后端边界

首先验证 public DSL 的 `T.__ldg` 与 `T.ldg{128,256}`，没有导入 TVM、foreign
helper、call_extern 或 async copy：

| 方向 | 最终 ISA / correctness | 性能 / 决策 |
|---|---|---:|
| Step2 `up_logits` 热路径 `T.__ldg` | Step2 global load `44→184`，其中 `160×ldg_u16`；`.text 18.5→35.6 KiB`，`snop 390→876` | ISA reject，不计时 |
| Step2 Down `T.ldg256` + `uint32x8` unpack | Step2 load site `44→32`、`222/54→216/52`，但最终没有任何 256-bit load；Case1 checked elements `74.7%` mismatch | semantic reject |
| Step2 Down `2×T.ldg128` + 完整 unpack | 三 Case correctness PASS；Step2 `222/54→222/52`，`.text`、44 loads、256 MMA、barrier 均与 v085 相同 | Case1/2/3 `+7.885%/+10.633%/+11.063%`，reject |

`T.ldg256` 的直接 vector-to-swizzled-shared 写法先被 LayoutInference 拒绝；经 local
`float16x16` 中转又被 MACA codegen 明确拒绝为 `Cannot convert type float16x16`。
合法的 `uint32x8` 拆包版本虽然 lowering，但最终只少了 12 个 `ldg_b128`，没有
生成对应的宽 load，correctness 立即证明高半数据未被正确物化。相反，两个
`ldg128` 保住完整字节和数学，但显式拆包破坏普通 `T.copy` 的动态搬运调度，三个
shape 都终止性回退。因此 public explicit-load 家族关闭；较低静态 load/register
数字不能脱离 correctness 解释。

另审计了 IR builder 中的 `prefetch`：当前安装的 `tilelang.language` 没有导出
`T.prefetch`（直接访问抛 `AttributeError`），submission 无法通过正常 public DSL
表达同步 cache prefetch，因此没有伪造接口或转向 extern。

### 编译证明与 Step2 Down 请求边界

- 给两个 kernel 增加真实 block contract：`group_size>0`、
  `0<=token_offset<group_size`。Case3 generated C++ SHA-256 仍为
  `9b8826636f81...`，与 v085 `cmp` 逐字节相同；编译器已从 grid/max/min 推出这些
  不变量，codegen-only reject。
- 保持 `A64` 两阶段不变，只把每次连续 Down `B128 rows × K64` copy 拆成两个
  `B64 rows × K64` copy。最终 load/store/MMA/shared/barrier 与 `.text` 大小完全
  不变，Step2 `222/54→216/58`、`snop 390→387`，correctness PASS；Case3
  warmup5/repeat50 为 `-0.0586%`，纯噪声。请求边界成功物化但没有动态收益，不扫
  32/96 邻点。

### Step1 reverse hidden-K front

此前只测过 Step2 reverse-K。本批保持 Step1 每个 pair 内既有六段顺序、流量、
barrier、MMA 与 CTA 映射不变，把 hidden-K pair 从尾到头遍历。候选 Case1/3
correctness PASS，Step2 完全不变；Case3 Step1 最终 ISA 为：

- `218/54→216/42` registers，2 waves、无 private；
- `.text 26248→25888 B`，静态指令 `3281→3236`；
- `mov_b32 93→73`，但 `42 global loads / 256 MMA / 64 LDS / 4 barriers /
  91 arrive / 405 snop` 全部保持。

尽管地址状态真实缩短，Case3 warmup5/repeat50 为 `+0.0105%`；Case1
warmup100/repeat100 为 `+0.5374%`。减少的 45 条静态地址指令不在动态关键路径，
反向 input/Gate/Up request front 也没有改善跨 CTA cache 合并，故关闭该轴。

### 验证协议复核与本批结论

`T.ldg256` 首次 fullcheck 的异常堆栈没有打印当前 module tag，stdout 缓冲又让
编译日志出现在 traceback 后面，一度可能被误读为 parent 先失败。随后直接运行
exact v085-vs-v085 的同一 `run_v59_fullcheck.py` Case1 self-check，完整 padded
output 正常 PASS；因此原异常确实属于第二个 `ldg256` candidate，而不是 verifier
或 v085。`run_v59_paired.py` 的 v085-vs-v085 self-check 也正常通过。本批 reject
决策以明确的 candidate correctness / ISA / paired 结果为准，不放宽 tolerance。

本批没有候选达到 `1.2%`。不创建 v086、不修改 submission、不移动 `dorm` 性能
源码。scratch 位于 `/tmp/v085_{up_logits_readonly_ldg,step2_down_ldg256,
step2_down_2xldg128,block_contract_assume,step2_brow64_split,step1_reverse_k}*` 及
对应 hypothesis、codegen、ISA、JSON。

### v024 遗留的 Step1 半块内部遍历

全历史检索确认，v024 报告明确提出、但后续没有完成记录的假设是：不改变
`G0 -> A0 -> G1 -> U0 -> A1 -> U1` 分组，只反转某个 64x64 权重半块内部的
row-to-thread 遍历。为避免把亚门槛结果叠加，本批从 exact v085 分别隔离 G1-only
与 U0-only；source/destination 使用同一反向逻辑 row，数值放置、字节、同步和 MMA
不变。

| 方向 | Case3 Step1 最终 ISA | correctness / smoke | 决策 |
|---|---|---:|---|
| G1 两 phase 内部反向 | `218/54→220/50`；`.text +112 B/+14 inst`；`snop 405→404`；42 load/256 MMA/64 LDS/4 barrier 不变 | PASS；warmup5/repeat50 `-0.3663%` | below gate |
| U0 两 phase 内部反向 | `218/54→216/54`；`.text +168 B/+21 inst`；`snop 405→403`；主工作量不变 | PASS；warmup5/repeat50 `+0.1898%` | reject |

内部遍历方向确实能改变地址状态和寄存器分配，但关键中间两个权重半块的最好单点
信号仍只有一次 `-0.366%` short screen，远低于 `1.2%`，另一对称点还反向回退。
因此不扩展到 G0/U1 邻点、不组合其他亚门槛结果。新增 scratch 位于
`/tmp/v085_step1_{g1,u0}_reverse_rows*`。

### v085 Step2 列 CTA、三段 producer 与 workspace 行相位

继续从 v085 的两个已验证事实出发：`up_logits` 的 512B 地址周期会显著改变
Step2，而 `A64 -> B128` 的同步请求邻接是当前最优 producer。所有候选仍从 exact
v085 单独派生，只使用正常同步 TileLang，预先写 hypothesis，并通过 OJ source /
generated gate、Case3 完整 padded correctness、codegen 与最终 xcore1000 ISA。

| 方向 | Case3 / 阶段结果 | 最终 ISA / 资源 | 决策 |
|---|---:|---|---|
| 同一 token row 内 column CTA 半区交错 `0,14,1,15,...` | fullcheck 附带 screen `+0.337%` | Step2 `.text +40B/+5 inst`，`222/54→222/56`；44 load/256 MMA/4 barrier 不变 | reject |
| producer `B64 -> A64 -> B64` | fullcheck 附带 screen `+1.764%` | Step2 `.text +40B/+5 inst`，`222/54→220/58`；主工作量不变 | reject |
| valid-row 紧凑索引 + 保留 pad128 pitch | 3× AB/BA `-0.067/-0.111/-0.209%`，median `-0.111%` | Step1 `218/56`、Step2 `216/56`，无 spill，均 2 waves | below gate |
| Case2/3 partial 128-row workspace slot 右对齐 | fullcheck 附带 screen `+0.060%` | Step1 `.text 26248→25928B`；Step2 `18456→18000B`、`2307→2250 inst`、`222/54→222/52` | reject/noise |

column permutation 保留了 row-block-first 的 `up_logits` reuse，但没有改善 dispatch
序号到 Down 地址高位的映射；不继续扫乘法/bit-reverse 排列。`B64-A64-B64` 则证明
即使 B64 边界本身近似免费，把任何 Down burst 放到 A64 之前仍会破坏 v084/v085
的 A-first 关键窗口，因此 producer 邻接轴关闭。

紧凑+pad128 是本批唯一出现阶段级正信号的布局。一次 paired mcTracer 为：

- Step1 `5.844992 -> 5.920000 ms`，`+1.283%`；
- Step2 `2.658304 -> 2.626560 ms`，`-1.194%`；
- launch gap `0.028416 -> 0.027648 ms`。

最终 ISA 同样呈相反迁移：Step1 `.text 26248→25888B`、静态
`3281→3236`，Step2 却 `18456→19536B`、`2307→2442`。阶段时间不能由静态
代码长度预测；物理 compact row phase 对 consumer 有约 1.2% 信号，却让 producer
付出更大的地址/写入代价。按 Step2 约三成端到端占比，即使把 Step1 损失完全消除，
该 consumer 信号也只值约 0.4% 全算子收益，低于 promotion gate。

partial-slot 右对齐用 `block_start + 128 - actual_rows` 避免新增 `group_offsets`
load，并把 Step2 代码和 ST registers 降低，但性能仍为零，说明 compact 版收益不
能简化为“给 100/56-row tail 两个非零 row phase”。不扫更多 row offset。新增
scratch 位于 `/tmp/v085_step2_{col_half_interleave,b64_a64_b64}*`、
`/tmp/v085_{packed_valid_rows_pad128,workspace_tail_slot_right_align}*` 及对应
hypothesis、codegen、ISA、JSON 和 mcTracer 目录。

本批无候选达到 `1.2%`；不创建 v086、不修改 submission、不移动 `dorm` 性能
源码。

### Step1 Gate/Up 统一 shared 对象

历史中只有把 Gate/Up 串行复用单个 16 KiB buffer 的尝试，未见保留两者
同时存活、只把两个 `128x64` 对象合并为一个 `256x64` 对象的记录。本候选
保持 32 KiB 总容量、`G0 -> A0 -> G1 -> U0 -> A1 -> U1` 顺序、barrier、流量和
MMA 不变，Up 的 LDS 改为同一 shared 对象的 row offset 128。

- OJ source/generated 均 PASS，Case3 完整 padded correctness PASS；
- 候选与 exact v085 均为 Step1 `218/54`、2 waves、无 spill，`.text 26248 B`、
  `3281 inst / 42 global load / 256 MMA / 64 LDS / 4 barrier` 全部一致；
- 忽略 `.file/.loc` 后，剩余差异只是 dynamic-shared symbol 从 `buf_dyn_shmem` 改名为
  `weight_shared` 及调试字符串 offset，执行指令序列没有差异。

这证明 TileLang/MXMACA lowering 原本已把两个相邻 shared allocation 折叠到同一
dynamic-shared 基址上；源码层手动统一不会改变机器工作。fullcheck 中单次
`+0.551%` 只是完全同指令候选的计时噪声，不做 paired 放大、不记录版本。scratch
位于 `/tmp/v085_step1_unified_weight_shared*`。

### Step1 BM96 long-expert 与 64-row workspace slot

历史精确检索发现 Step1 测过 BM64/BM128/BM192，Step2 测过 BM96，但没有
Step1 BM96。因此先在 v59 结构上做隔离：short 100-row expert 保留一个
BM128/256-thread CTA，long 184-row expert 从两个 BM128 改为两个
BM96/192-thread CTA。每个 64x64 权重半块用已在 Step2 BM96 验证过的
`192*2 + 128` 向量 lane 分解搬运。

- 理论 Case3 Step1 row waves 从 `32*4 + 32*8 = 384` 降到
  `32*4 + 32*6 = 320`，减少 16.7%，long expert CTA 数和权重重读次数不变；
- OJ source/generated PASS，完整 correctness PASS；short/long Step1 均为
  `216/52`、2 waves/PEU，无表面 spill；
- 终止性 Case3 从 `9.333 -> 10.944 ms`，回退 `17.262%`。

非标准 192-thread/3-wave CTA 的 producer/consumer 执行效率损失远大于 padding
MMA/A 工作的节省，不移植到 v085、不测 BM80/112 邻点。证据位于
`/tmp/v59_step1_hybrid_bm96_long*`。

随后保留 v085 的 CTA/MMA/流量/+128-column pitch，只把 Case3 internal
`up_logits` expert slot 从 short/long `128/256` 行改为 64-row-aligned
`128/192` 行。基址为
`expert_id*128 + max(0, expert_id-32)*64 + token_offset`，不增加
`group_offsets` load；short expert 基址与 v085 完全一致，long 的每 expert
空洞从 72 行降为 8 行，workspace 有效地址跨度从 12288 行降为 10240 行。

- OJ source/generated 与完整 padded correctness PASS，无 private spill；
- Step1 `218/54 -> 218/56`，`.text 26248 -> 28464 B`、`3281 -> 3558`
  静态指令；Step2 `222/54 -> 218/56`，`.text 18456 -> 19768 B`、
  `2307 -> 2471` 指令；MMA/global/shared/barrier 不变；
- 终止性 Case3 `8.5880 -> 8.5921 ms`，`+0.0477%`，纯噪声。

该结果表明 `actual_rows` 本来就不访问 padding 洞；减少内部虚拟槽位只改变
地址相位和基址算术，没有减少 HBM 字节或 MMA。不继续扫 32/96-row 对齐。
证据位于 `/tmp/v085_workspace_slot64_case3*`。两个方向均未达 `1.2%`；
不创建 v086、不修改 submission、不移动 `dorm` 性能源码。
