# v142_step1_native_fp8_mfma_sc-16g 证据报告

## Verdict

- 状态：`rejected_correctness_and_catastrophic_regression`。
- 一句话因果结论：C500 的 K32 FP8 MFMA 确实生成了，但 OJ 输入是 FP16；热循环内的软件化 FP16→FP8 转换及尺度运算把 Step1 推到 256 MT/58 ST，并造成约 26.18 倍端到端回退。
- 不创建 submission；external-OJ SOTA 保持 v110。

## Identity

- Machine：MetaX C500 `sc-16g`。
- Parent：`v110_case1_unpredicated_native_up_logits_sc-16g`，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- Candidate：SHA-256 `880d85cb7621df6c891626d9c55f9c00ff0a341844449517f972f6be284eca5a`。
- OJ source validation：PASS；TileLang primitives only，无 async/injection/cache hack。

## Correctness

Case3、固定种子 `20260720`：

| Variant | max abs | mean abs | strict 1e-2 mismatch | OJ 5e-2 mismatch |
|:--|--:|--:|--:|--:|
| exact v110 | 0.001953 | 0.0000917 | 0 | 0 |
| FP8 no scale | 1.945313 | 0.106931 | 65.748% | 46.253% |
| FP8 scaled | 0.176758 | 0.009432 | 27.444% | 0.504% |

尺度补偿证明主要误差源之一是 `1/sqrt(H)` 权重落入 E4M3 的低精度区，但三位尾数的剩余量化误差仍无法通过 OJ；因此没有继续跑 Cases1/2。

## Benchmark

协议：同进程 exact-v110/candidate，三轮 AB/BA，`warmup=10`、`repeat=50`、device event；正值表示候选更慢。

| Case | parent ms | candidate ms | samples | median |
|---:|:---|:---|:---|---:|
| 3 | `7.5663 / 7.5581 / 7.5622` | `205.5749 / 205.5949 / 205.5592` | `+2616.97%, +2620.20%, +2618.23%` | `+2618.23%` |

1.2% candidate gate：FAIL；不仅没有收益，而且发生灾难性回退。

## Lowering and generated code

- 后端生成了 `__builtin_mxc_mma_16x16x32f8`，所以不是 FP8 MFMA 未映射。
- Step1 每个静态 Gate/Up 位置由 K16×2 变为 K32×1；Step2 保持 FP16。
- 生成 C++ 同时出现逐 lane `half -> fp8_e4_t` 转换，以及权重路径 `half -> float2 -> __maca_cvt_float2_to_fp8x2`。
- Step1：v110 `226 MT / 42 ST / 2 waves`；v142 `256 MT / 58 ST / 2 waves`。
- Step2：保持 `220 MT / 52 ST / 2 waves`。
- 整体仍是 8 个静态 MFMA site、9 个 CTA barrier、0 async-copy site；动态 Step1 MFMA 数减少，但转换成本与寄存器压力完全占优。

## Supporting row-wave probe

同一轮还验证了保持 BM128×BN128、仅把 Step1 从 256 threads/4 row waves 改为 512 threads/8 row waves：Step1 从 `226 MT/2 waves` 变为 `126 MT/4 waves`，但 Case3 严格 AB/BA 中值回退 `+8.606%`。这排除了“只要跨到更高静态驻留档就会加速”的假设；调度 wave 翻倍的成本高于额外驻留收益。

## Profile decision

未运行 mcTracer/mcProfiler：正确性与端点性能双重失败，继续采计数器没有晋级价值。生成代码和编译资源已经足够定位主因。

## Closed directions

- 在 OJ FP16 输入接口下，不再尝试热循环内全量 FP16→FP8 的 Step1。
- 除非接口提供预量化 FP8 权重/输入，或后端暴露低成本原生向量转换，否则 FP8 MFMA 的理论吞吐不可兑现。
- 不再为同一 BM128×BN128 tile 通过 512-thread CTA 单纯增加 row waves。

## Promotion decision

- 归档到 `restart-deped-trials`。
- 不创建 `restart-submission`，不移动 SOTA。
- 本版本完成后暂停优化。
