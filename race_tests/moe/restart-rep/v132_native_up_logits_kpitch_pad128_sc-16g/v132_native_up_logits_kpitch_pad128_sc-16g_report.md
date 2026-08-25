# v132_native_up_logits_kpitch_pad128_sc-16g 证据报告

## Verdict

- 状态：`rejected_below_1p2_gate`；不创建 submission，SOTA 仍为 v110。
- consumer-native `up_logits` K64 plane 从 16384B 改为 16640B，机制成功物化，但三 case 配对结果均处于约 0.1% 噪声带。

## Identity and gates

- Parent：external-OJ-AC v110，SHA-256 `439a2b80...509e`。
- Candidate SHA-256：`620cbd2111deca94b81a2f3d7201a27940f999f160bbcd1af392e39d1e36909e`。
- OJ source validation：PASS；三官方 shape 完整正确性 PASS，`rtol=1e-2, atol=1e-2`。
- TileLang primitives only；无 async、injection、cache/result hack。

## Codegen

- 三 case generated device C++ 均不同于 v110；地址常数明确从 8192 FP16 / 16384B 变为 8320 FP16 / 16640B。
- Case1/2/3 Step1 仍为 226 MT、42 ST、2 waves/PEU；Step2 仍为 202/220/220 MT、52 ST、2 waves/PEU。
- MMA、barrier 与 logical LDG 数不增，没有资源档恶化。

## Strict AB/BA screen

协议：同进程 parent/candidate，3 rounds，AB/BA，`warmup=20, repeat=50`；负值为候选更快。

| Case | samples | median | pstdev |
|---:|:---|---:|---:|
| 1 | `+0.084%, +0.121%, -0.079%` | `+0.084%` | `0.087%` |
| 2 | `-0.065%, +0.112%, -0.036%` | `-0.036%` | `0.077%` |
| 3 | `+0.187%, +0.087%, +0.077%` | `+0.087%` | `0.050%` |

## Causal conclusion

v085 的 row-major leading-dimension 冲突不能迁移到 v110 的 thread-native workspace。虽然 native plane 也是 16KiB 二次幂，但每线程连续 slot、CTA 访问映射和跨 plane 请求形态已经避免可测冲突；增加 256B 只改变地址算术/容量，没有改善 Step2。不要继续 sweep 相邻 native K-plane padding。

## Promotion decision

- 1.2% gate：FAIL。
- mcTracer/mcProfiler：未运行；端点无效后不为零收益候选消耗计数器资源。
- external OJ gate：未触发；`restart-submission` 未创建。
