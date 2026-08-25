# 2026-08-26 v110 尾块减波与直接 INT8 Step2（已放弃）

## 基线与门禁

- Parent：external-OJ-AC v110，submission SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 目标机器：MetaX C500 sc-16g。
- 候选门槛：相对 v110 的三 case 聚合收益至少 `1.2%`；本轮两个方向均在 Case2/Case3 首筛即明显回退，因此不编号、不创建 submission。
- 合规范围：仅使用 OJ 允许的 `torch`、`tilelang` 和 TileLang primitive；无异步拷贝、源码注入、结果缓存或外部模块。

## 方向 A：Case3 Step1 BM64 tail kernel

### 假设

Case3 有 32 个 `actual_rows=56` 的尾 CTA。v110 虽已按 32-row wave 跳过无效 MMA，但仍以 256 threads / 4 waves 启动。把 Step1 拆为 BM128 主 kernel 与 BM64/128-thread tail kernel，可使 Step1 理论派发 wave 数减少约 `16.7%`。

### 实现与结果

- 未编号探针 SHA-256：`0bd36fa4596f9824a5fa7071ad5d2f888857a985f78e18bceec2156b30e5a377`。
- Case3 严格正确性：PASS，`rtol=atol=1e-2`。
- 三轮短 AB/BA（warmup 3 / repeat 20）候选变化：`+28.8500%`、`+28.9806%`、`+28.9700%`；中位回退 `+28.9700%`。

### 结论

BM64 tail 的 128-thread CTA 无法高效搬运每轮 32 KiB Gate/Up tile；拆 launch 同时破坏了 v110 按 expert 聚集的权重局部性。减少空 wave 不等于减少主导的权重搬运，方向关闭。历史 Step2 BM64 tail 的 `+13.582%` 回退与本结果一致。

## 方向 B：直接 INT8 MMA Step2

### 裸硬件可行性

使用仓库 MetaX MMA emitter 验证 `int8 × int8 -> int32`：

| 形状 | FP16 中位时延 | INT8 中位时延 | INT8 时延降低 | 正确性 |
|---|---:|---:|---:|---|
| `128×128×2048` | `0.147548 ms` | `0.096722 ms` | `34.447%` | exact INT32 |
| `128×7168×2048` | `0.204931 ms` | `0.145452 ms` | `29.024%` | sampled exact INT32 |

这证明 C500 的直接 INT8 MMA 是真实硬件路径，不是名称存在但无法执行；但它只代表预量化 GEMM 上限。

### 完整 MoE 探针

- 落档源码：`20260826_v110_direct_int8_step2.py`。
- SHA-256：`cbf765948bb921e662ec738680d6fd1351ce0c2f7d4294639b55dd64b5c01406`。
- OJ AST/import 静态门禁：PASS。
- Down：每个 expert/output row 动态 INT8 量化，FP32 scale；首次构建后按输入 tensor identity 缓存量化权重。
- `up_logits`：v110 Step1 仍写 consumer-native FP16 workspace；新增一次每 routed row 全 intermediate 维扫描，生成 flat INT8 workspace 与 FP32 row scale。
- Step2：直接 `16x16x16i8` MMA，INT32 跨完整 K 累加，最终 store 时只反量化一次。

### 精度结果（Case2）

| 方案 | OJ 容差 mismatch / `44,040,192` | max abs |
|---|---:|---:|
| 对称 rowwise INT8 | `1,098` | `0.133544922` |
| activation-only asymmetric（数学模拟） | `161` | `0.090820313` |
| activation+Down asymmetric（数学模拟） | `151` | `0.087036133` |

- 对称版在严格 `rtol=atol=1e-2` 下 mismatch `3,666,029`（`8.3%`）。
- OJ 容差为 `rtol=atol=5e-2`，对称版仍有 `1,098` 个超限元素，不能提交。
- 对称 scale 的 0.95/0.90/0.85 双侧裁剪分别恶化为 `2,153` / `17,235` / `103,107` mismatch。
- 单侧 0.95：activation `1,828`，Down `1,211`。补回每个 Down row 最大权重的稀疏残差后仍为 `1,099`，说明主误差来自 activation 量化。
- 非对称结果只是基于真实中间张量的数学模拟，未伪装为 kernel/OJ 结果；即使实现也仍非 AC。

### 性能结果（Case2）

为测量上限，使用同进程 AB/BA，仅移除正确性 assert；日志中的模板化 `correctness` 字段不构成 PASS 证据。

| round | 顺序 | v110 | INT8 闭环 | 变化 |
|---:|---|---:|---:|---:|
| 1 | parent→candidate | `3.898611 ms` | `4.884903 ms` | `+25.2985%` |
| 2 | candidate→parent | `3.909542 ms` | `4.891840 ms` | `+25.1256%` |
| 3 | parent→candidate | `3.894439 ms` | `4.887757 ms` | `+25.5061%` |

中位回退 `+25.2985%`，远低于 `>=1.2%` 候选门槛。

### 归因与关闭条件

裸 INT8 GEMM 的约 `29%` 时延优势被以下成本反转：

1. `up_logits` 必须新增整行双遍扫描（absmax + quantize）；
2. FP16→INT8 的标量 `round/clamp/cast` 成本高；
3. flat INT8 workspace 丢失 v110 consumer-native Step2 读布局；
4. 多一次 kernel launch、额外 workspace 写读和 scale/zero-point 元数据；
5. 若继续用 K-group scale 修复剩余误差，还需分段反量化或增加 accumulator/launch，性能只会进一步下降。

因此关闭“额外 activation quantization kernel + direct INT8 Step2”路线。仅当 Step1 能直接以目标 INT8 fragment/native 布局产出并同时得到全行 scale，或硬件提供融合量化/缩放路径时才重开。

## 最终处置

- v110 保持 external-OJ SOTA；`dorm` 不推进到任何伪优化版本。
- 不创建 v143，不创建 restart-submission。
- 本报告与直接 INT8 探针源码仅归档到 `restart-deped-trials`，用于避免后续重复探索。
