# v094 Case3 split-A / Gate0 Step1 优化报告

## 1. 上版本遗留问题

v093 已让三个官方 shape 都把 Step1 的 A 请求放到 Gate0 前。Case3 虽获得收益，但整块 A 一次加载令 Step1 资源为 `228 MT / 42 ST / 2 waves`，存在 fragment 生命周期和请求突发仍可调整的空间。

## 2. 解决方案

仅在官方 Case3 启用 split-A producer：odd 与 next-even 两处都从 `A-full -> G0 -> G1 -> U0 -> U1` 改为 `A-low -> G0 -> A-high -> G1 -> U0 -> U1`。Case1/2 编译路径保持 v093。

- Candidate：`race_tests/moe/restart-experiments/v094_case3_split_a_gate0_step1_sc-16g/candidate_submission.py`
- SHA-256：`2f1f5ea7c99a7efb1c717eb6a3fbb16b8c387d6f5fb5fe475b73fab2cbd29cb9`
- Parent SHA-256：`f87f933dd3484a9e7508cea21883d6ab790201939e0781c12bd5d8cbbd1a9247`
- 候选门槛：1.2%。

## 3. Benchmark

MetaX C500 `sc-16g`，25% compute slice，同进程 AB/BA，device event。

| Case | 协议 | Parent median | Candidate median | Paired median | pstdev | 判定 |
|---:|---|---:|---:|---:|---:|---|
| 1 | 3 rounds, W100/R100 | 2.338537 ms | 2.341491 ms | +0.126329% | 0.096109% | generated-identical 噪声 |
| 2 | 3 rounds, W100/R100 | 3.947359 ms | 3.943286 ms | -0.103180% | 0.028304% | generated-identical 噪声 |
| 3 | 7 rounds, W100/R100 | 7.961336 ms | 7.828802 ms | -1.597355% | 0.070910% | 7/7 同向，越过门槛 |

Case3 七轮变化：`[-1.597355, -1.583763, -1.713219, -1.655625, -1.587372, -1.740269, -1.527831]%`。

## 4. 正确性与合规

- 三 Case 完整 padded-output PASS，`rtol=atol=1e-2`。
- OJ Python source 和三份 generated-device source gate PASS。
- 无异步 copy、foreign source、extern/packed escape、结果缓存或 hack。
- Case1 generated SHA `cce8acc2...`、Case2 `717d9d46...` 与 v093 字节相同；Case3 从 `9e4c82be...` 变为 `d627d221...`。

## 5. Profile / ISA

mcTracer 用真实三-kernel 身份 `prepack -> Step1 -> Step2` 重算：

| 指标 | v093 median | v094 median | paired median change |
|---|---:|---:|---:|
| prepack | 0.243456 ms | 0.242176 ms | -0.210305% |
| Step1 | 5.042688 ms | 4.892160 ms | -2.985075% |
| Step2 | 2.641920 ms | 2.644224 ms | -0.155415% |
| GPU span | 7.951616 ms | 7.830784 ms | -2.012170% |

典型 Step1→Step2 gap 仍约 `0.002816 ms`；收益定位在真实 Step1，而非 kernel launch 空泡。

Case3 Step1 资源 `228 MT / 42 ST -> 226 MT / 54 ST`，仍为 2 waves/PEU，0 stack/private。ISA 静态指令 `3076 -> 3250`、`snop 360 -> 394`、`ldg_b128 28 -> 36`；`lds_b128=64`、`sts_b128=16`、`stg_b64=16`、`MMA=256`、`barrier=4`、`arrive=91` 不变。静态代码变长但动态 Step1 更快，说明收益来自请求时序/延迟覆盖，而不是减少数学或内存工作。

mcProfiler/Roofline 未重复：FLOPs、逻辑字节、grid 与 MMA 数不变，clean timing、mcTracer、codegen 和最终 ISA 已直接回答本轮调度假设；目录内记录 unavailable。

## 6. 结论

split-A 折中成立：Case3 clean latency 稳定提升约 1.60%，真实 Step1 约 2.99%，且 Case1/2 生成代码完全不变。该精确 SHA 作为待外部 OJ 的本地候选保存；在三例 OJ 数值齐全并满足单调 SOTA gate 前，不创建 `restart-submission`。
