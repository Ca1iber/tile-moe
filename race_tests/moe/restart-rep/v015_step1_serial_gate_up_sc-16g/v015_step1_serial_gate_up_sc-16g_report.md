# v015_step1_serial_gate_up_sc-16g 证据报告

## Verdict

- 运行类型：screen（多 candidate 因果筛选）
- 结论：rejected_screen
- 一句话因果结论：串行化 gate/up 可以压缩某一类资源，但必须保存完整 BN=128 gate tile；private、global、shared、packed-register 四种 staging 分别落入 spill、额外 VLS 流量、48 KiB shared、或 198 MT/2 waves，均无法胜过 v013 的同 K-sweep 双 accumulator。
- 当前最佳：v013_step2_split_accumulator_sc-16g；主 `custom_fusedmoe.py` 未修改。

## Identity

- Machine：sc-16g，C500 25% sGPU slice。
- Git：`dorm`，本轮初始化父提交 `26101b8c6d8516037b28a53539cea0e9ed032f7a`。
- Parent/main kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`。
- Candidate A/B/C/D2 SHA-256：`b4c3d732...` / `cef5071a...` / `7191a1cc...` / `a41335c1...`。
- Benchmark SHA-256：official `adfe36d8e...`；OJ `1165d148...`。
- 环境：TileLang `0.1.9+cuda.git26101b8c`；PyTorch `2.8.0+metax3.7.1.3`；MACA `3.7.1.5`；KMD `3.8.30`。完整输出见根目录 environment 和 `profiler/mxsmi/`。

## Correctness

- 所有实际执行的 candidate/case 均为 `PASS`，最大绝对误差均为 `0.001953125`。
- D2 case1：独立 smoke；D2 case2/3：配对 OJ 日志。B、C 也分别在 smoke/配对诊断中覆盖三 case。
- Candidate D 初版只在 lowering 阶段失败，没有执行错误二进制；错误为 TileLang `parallel.cc` 对 `[i,j+1]` 与 `[i,j]` structural indices 不一致的检查。

## Benchmark

- 官方 benchmark：未运行。候选在 OJ screen 已出现 24% 至 70% 的明确退化，按 early-stop 规则停止；见 `benchmark/official_UNAVAILABLE.md`。
- 配对协议：fresh process per variant，父→候选单轮诊断，warmup=5、repeat=30，只用于确认远超噪声的方向；所有样本同时做正确性检查。

| Candidate | Staging | case2 change | case3 change | 结论 |
|---|---|---:|---:|---|
| B | global `up_logits` | +27.653% | +24.617% | 明确退化 |
| C | 32 KiB gate shared | +70.445% | +66.870% | 明确退化 |
| D2 | 32×uint32 MT pack | +29.445% | +31.188% | 明确退化 |

- 负值才表示候选更快；上表均为 runtime 增长。

## mcTracer

- 对 candidate B 做 case3 一轮父→候选配对：
  - Step1：`7.164672 → 9.603584 ms`，`+34.041%`。
  - Step2：`3.550976 → 3.544320 ms`，`-0.187%`，视为不变。
  - launch gap：两者均 `0.002816 ms`。
  - Step1 grid：两者均 `(16,96,1)`；没有重复 v003 的 CTA 翻倍。
  - dynamic shared/registers：父 `32768 B / 198`；B `16384 B / 132`。
- 因此端到端退化完全来自 Step1，而不是 Step2 或 launch gap。

## mcProfiler

- case3 Step1 targeted，父→candidate B，同一 kernel name、同一组指标、counts=1。`Total Cycles` 是多 pass 聚合诊断量，不当作单 kernel latency。
- 与假设相关的方向变化：
  - Average Wave life：`4994.41 → 6125.48`，`+22.647%`。
  - ISU VLS pipeline stall：`2.565e9 → 4.371e9`，`+70.377%`。
  - Global read bytes：`39.560e9 → 45.014e9`，`+13.786%`。
  - Global write bytes：`12.205e9 → 12.351e9`，`+1.198%`。
  - VL1 四 partition stall：均约 `+3.68%` 至 `+3.90%`。
  - AP active cycles：`+14.620%`。
  - AP MTE duty：`38.23% → 33.74%`；AP MMA duty：`24.90% → 21.73%`。
  - Private read/write：两者均 0；shared efficiency 均 100%。
- 解释：3-wave 静态上限并未减少完成相同 work 的 wave 数；额外 input sweep 和 global staging 延长 wave 生命周期并加重 VLS 路径，MMA/MTE 在更长 active-cycle 分母下占比同步下降。

## Lowering / C++ / ISA

父版 case3 Step1：198 MT / 28 ST / 32 KiB dynamic shared / 2 waves；0 stack、0 private spill。最终 ISA：24472 B code、3059 static instructions、256 MMA、30 global loads、16 global stores、64/16 shared loads/stores、3 barriers、89 arrives。

| Candidate | MT/ST | dyn shared | waves | stack/private | final ISA 关键变化 |
|---|---:|---:|---:|---|---|
| A FP16 fragment | 256/38 | 16 KiB | 2 | 124 B；30 store + 30 reload | 28320 B code，3540 instr，7 barriers |
| B global staging | 132/29 | 16 KiB | 3 | 0 | 33136 B，4142 instr，54/32 global L/S，7 barriers，128 arrives |
| C shared staging | 138/29 | 48 KiB | 3 | compiler report 0 stack | 生成 C++ 已归档；48 KiB footprint 与性能强退化共同证伪 |
| D2 packed MT | 198/29 | 16 KiB | 2 | 0 | 27696 B，3462 instr，38/32 global L/S，7 barriers，97 arrives |

- A 说明源码层“半精度 fragment 较小”不等于后端寄存器常驻。
- B 说明只看 registers/shared/waves 会误判：生成 ISA 的访存和同步增长更直接地预测了退化。
- D2 证明显式 bit packing 能消除 private spill，但 gate payload 本身仍需 32 个 32-bit MT，无法跨 occupancy 档位。

## Roofline / mx-smi

- 本版本没有可接受候选，未生成版本专属 Roofline；不复制 v013 图，见 `moe-roofline/.../UNAVAILABLE.md`。
- 已保存收尾只读 mx-smi 快照；未运行同步 benchmark+mx-smi 长采样，因为 OJ screen 已明确淘汰，见 `profiler/mxsmi/UNAVAILABLE.md`。

## Causal conclusion and next constraint

- v015 排除了“在同一个 Step1 kernel 中通过完整 gate tile staging 串行 gate/up，就能以 occupancy 换性能”的四个主要实现位置。
- 后续若再压 Step1 寄存器，机制必须避免保存完整 BN=128 gate tile，也不能增加 input sweep 或把中间结果落到 global/shared；否则应预期重复 v015 的资源迁移而非真实加速。
- v013 继续作为 current best；本轮没有修改或暂存主内核。
