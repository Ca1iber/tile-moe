# v141_step2_native_vector_pair_interleave_sc-16g 证据报告

## Verdict

- 状态：`rejected_regression`。
- 一句话因果结论：把相同 native-A 流量从每阶段 2 waves x 4 vectors 改成 4 waves x 2 vectors 没有增加有效 MLP，反而破坏 A/Down 请求相位，并使大 shape 的 Step2 MT 寄存器从 220 增至 224。
- 不创建 submission；external-OJ SOTA 保持 v110。

## Identity

- Machine：MetaX C500 `sc-16g`。
- Parent：`v110_case1_unpredicated_native_up_logits_sc-16g`，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- Candidate：SHA-256 `cd69d357e951ff800ffa0e67a2075b3a61c663c945a5f0d1daebbc5a88620159`。
- OJ source validation：PASS；TileLang primitives only，无 async/injection/cache hack。
- Incumbent OJ score ratios：`0.833778 / 0.824765 / 0.823671`。

## Correctness

三官方 case 完整输出均 PASS，`rtol=1e-2, atol=1e-2`。每个 case 在计时前分别编译 parent/candidate 并执行 reference 对比。

## Benchmark

协议：同进程 exact-v110/candidate，三轮 AB/BA，`warmup=10`、`repeat=80`、device event；正值表示候选更慢。

| Case | samples | median | mean | pstdev |
|---:|:---|---:|---:|---:|
| 1 | `+0.570%, +0.824%, +0.602%` | `+0.602%` | `+0.665%` | `0.113%` |
| 2 | `+0.888%, +0.888%, +0.904%` | `+0.888%` | `+0.893%` | `0.008%` |
| 3 | `+0.914%, +0.940%, +1.025%` | `+0.940%` | `+0.960%` | `0.047%` |

1.2% candidate gate：FAIL。三个 case 均回退，因此也不满足全 case 不退化的 SOTA gate。

## Profile

未进入 mcTracer/mcProfiler：端点门槛已失败。硬件判断沿用 v130 的 exact-v110 profile，不新增 Roofline 点或计数器结论。

## Lowering and code generation

- 三 case lowering/compile PASS；仅出现既有的 native workspace 静态 race checker 假阳性。
- Step1 固定 `226 MT / 42 ST / 2 waves`。
- Step2 Case1 `202 MT / 52 ST / 2 waves`，与 v110 相同；Cases2/3 `220 -> 224 MT`，仍为 2 waves。
- 所有 case 保持 8 个 MFMA、9 个 CTA barrier、0 个 async-copy site。
- 生成代码确认原 half-wave 条件被删除，但地址表达式引入 stage-dependent `4096` 元素偏移；变化真实物化，不是编译器 no-op。

## Causal interpretation

该实验区分了“活跃 wave 更多”和“有效访存并行度更高”。相同请求集合只换发射 wave，并没有减少真实流量、依赖链或同步点。Case1 在 MT 数不变时仍稳定回退，说明原来的 wave-half producer 与 split Down copy 之间已经形成更好的动态相位；Cases2/3 额外的 4 个 MT 寄存器进一步增加了代价，但不是唯一原因。

## Promotion decision

- 归档为失败方向并写入 `restart-deped-trials`。
- 不创建 `restart-submission`，不移动 SOTA。
- 关闭等字节的 all-thread vector-pair repartition；后续若重访 Step2，必须改变真实流量、复用或 producer/consumer 边界。
