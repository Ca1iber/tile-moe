# v154_case3_unified_m192_sharedreuse_sc-16g 证据报告

## Verdict

- 运行类型：local verdict
- 结论：inconclusive，外部 OJ 待确认
- 一句话因果结论：把 Case3 短/长 Step2 合并为一个保持物理 `bx` 连续的 28x96 grid，在不减少 HBM 流量的前提下降低 VL1 阻塞和 AP 活跃周期，稳定带来约 2% 端到端提升。

## Identity

- Machine：MetaX C500 sc-16g，25% compute，16 GiB quota
- Git branch / parent commit：`dorm` / `858ecaf497f58aeaca10aca021cf38635ccb6a6e`
- Candidate SHA-256：`c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`
- Parent v153 SHA-256：`0f345d082b1e5bc761757110a9271ff905c4e02a866dd3b83a1726666d2b4a6a`
- Incumbent external OJ SOTA：v148，submission SHA `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`，display `[83,82,82]`
- Import validation：PASS；根包仅 `torch`、`tilelang`
- Promoted submission：无；外部 OJ gate 尚未执行
- Runtime snapshot：KMD 3.8.30、MACA 3.7.1.5、mcTracer 3.7.1 toolchain；详见 `environment/`

## Correctness

- `run_v110_fullcheck.py` 对三个官方 shape 的所有有效输出行比较。
- 容差：`rtol=1e-2, atol=1e-2`。
- Case1/2/3：全部 PASS。
- OJ 静态源码校验：PASS。

## Benchmark

| Case | Parent ms | Candidate ms | Change |
|---|---:|---:|---:|
| 1, 1x10 side check | 2.159283 | 2.156877 | -0.1114% |
| 2, 1x10 side check | 3.787520 | 3.791488 | +0.1048% |
| 3, exact 5x20 mean context | about 7.026 | about 6.887 | -1.9783% mean |

- Case3 five paired changes：`[-2.0300, -2.0091, -1.9489, -1.9948, -1.9089]%`。
- Mean `-1.9783%`，median `-1.9948%`，population stdev `0.0438` percentage points。
- 超过 1.2% 本地晋级门槛；Case1/2 均处于噪声区间。
- 外部 OJ 尚未执行，因此不能宣称 accepted 或修改 SOTA ledger。

## Profile

### mcTracer

- Parent Case3 launches：metadata/input-prepack/Step1-short/Step1-long/Step2-short/Step2-long，共 7 个 kernel event symbols。
- Parent Step2：`1.042048 + 1.360000 = 2.402048 ms`。
- Candidate launches：最后两条 Step2 合成 `kernel_kernel_5`，grid `28x96`，`2.254464 ms`。
- Step2 降低 `6.14%`；整次 kernel median sum `7.038720 -> 6.861824 ms`，与端到端约 2% 一致。

### mcProfiler, parent short+long summed versus candidate unified

| Metric | Parent | Candidate | Change |
|---|---:|---:|---:|
| Global read bytes | 1,932,228,416 | 1,948,898,080 | +0.86% |
| Global write bytes | 176,558,912 | 176,175,008 | -0.22% |
| VL1 partition stall cycles | 72,281,706 | 57,928,574 | -19.86% |
| AP active cycles | 274,085,263 | 262,538,474 | -4.21% |
| Weighted avg wave life | 48,719.64 | 48,088.34 | -1.30% |
| WSM stalls | 14,867,465 | 14,784,432 | -0.56% |
| VLS pipeline stalls | 52,082,803 | 56,900,955 | +9.25% |

- Candidate MMA duty `55.92%`；parent 按 AP active cycles 加权约 `53.56%`。
- 读取字节没有下降，因此该版本不是“权重预处理/压缩流量”收益；主要信号是 VL1 stall 和 AP active cycles 下降。

## Lowering and code generation

- Unified Step2：256 threads，grid `28x96`，32 KiB dynamic shared。
- Resource：220 MT registers，56 ST registers，静态上限 2 waves/PEU；与 v153 Case2 unified path 一致。
- Generated source：62,946 bytes；13 MMA sites；17 thread-sync sites；0 async-copy sites。
- 完整生成代码和 resource JSON 见 `codegen/`。

## Roofline / operational point

- 这是 Step2 operational point，不是经校准的硬件屋顶。
- FLOP 模型：`2 * 10240 padded-MMA rows * 7168 * 2048 = 300,647,710,720`。
- Parent AI `142.569 flop/B`，observed `125.163 TFLOP/s`。
- Candidate AI `141.476 flop/B`，observed `133.357 TFLOP/s`。
- AI 略降而吞吐上升，再次说明收益来自调度/局部阻塞改善。

## Causal interpretation

- 预测的 launch 合并实现，资源没有膨胀，端到端与 Step2 时间同向。
- “会减少全局读取”的次要预测被证伪；读取反而略增。
- 更可信的因果链：统一 grid 保留物理 expert-slot 连续性，同时减少独立 kernel 调度边界，使 VL1 partition stall 降低约 20%，AP active cycles 降低约 4%。
- 后续 v155 把短/长 slot 强行三元交错后稳定回退约 3.53%，说明物理 `bx` 连续性可能保护同 expert 权重的缓存局部性，应保留。
