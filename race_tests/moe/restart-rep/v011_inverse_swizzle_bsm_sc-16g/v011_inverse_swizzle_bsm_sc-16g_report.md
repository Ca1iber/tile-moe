# v011_inverse_swizzle_bsm_sc-16g 证据报告

## Verdict

- 运行类型：mechanism verdict（完整正确性与 benchmark，Case3 定向 trace/ISA）
- 结论：rejected as production / accepted as mechanism
- 一句话因果结论：inverse-source XOR 让 C500 BSM 能 bit-exact 直写 swizzled shared，并且产生了真实 async/MMA 流转；但 half-N 使 CTA grid 翻倍，最终仍比 v004 慢 28%～41%。

## Identity

- Machine：sc-16g，MetaX C500，25% compute quota，16000 MiB VRAM quota，runtime 可见 104 AP。
- Git：`pipeline` 由 `moe-minibs@6e6715ce` 切出，v011 父证据提交 `9d7a30ab`；关闭态 kernel 为 v011c，SHA-256 `ca089001...92b32`。
- Benchmark hashes：official `adfe36d8...c67f`；OJ `1165d148...585c8`。
- Software：KMD 3.8.30，MACA 3.7.1.5，PyTorch 2.8.0+metax3.7.1.3，mcProfiler 3.8.1.4，mcTracer 3.7.1.5-ef9e10e。

## Correctness

- OJ 权威入口 `--cases 1,2,3 --warmup 10 --repeat 100`：3/3 PASS，三例 `max_abs=0.001953125`。
- 官方入口两组 functional：2/2 PASS，容差保持 `atol=rtol=1e-2`。
- 首次复跑暴露了独立 worktree 的 build/TVM 定位问题；改为复用原工作区已验证 TileLang build 后通过，失败日志保留。

## Benchmark

| 口径 | v004 当前最佳 | v011c | 相对 v004 |
|---|---:|---:|---:|
| OJ Case1 | 3.058279 ms | 3.915758 ms | +28.04% |
| OJ Case2 | 5.445212 ms | 7.294072 ms | +33.96% |
| OJ Case3 | 10.650980 ms | 15.008335 ms | +40.91% |
| Official h7168/i2048 | 80.225239 ms | 103.168545 ms | +28.60% |
| Official h3584/i1024 | 25.382446 ms | 31.328613 ms | +23.42% |

- v011b/v011c Case3 交替配对（warmup 20/repeat 100）：v011b 均值 15.187478 ms，v011c 均值 14.861360 ms，v011c 改善 2.15%，超出 v000 约 0.25% 噪声带。
- 原始日志见 `benchmark/paired_v011b_v011c/` 以及本版 `official.log` / `oj.log`。

## Profile

- mcTracer Case3：Step1 `10.171648 ms`，Step2 `4.545536 ms`，launch gap `0.027392 ms`，device span `14.744576 ms`，与干净 OJ 同向。
- Grid：Step1 `32x96`、Step2 `56x96`，均为 v004 宽 N tile 的 2 倍 CTA 数；这是当前主因。
- 资源：两阶段 dynamic shared 均 32768 B，MT register 114/126，`staticMaxWarps/PEU=4`，无 private spill。
- mcProfiler 定向数据：v011b Case3 Step1/Step2 的 average wave life 为 `5668.16/5662.23 cycles`，MTE duty `32.04%/32.04%`，MMA duty `19.91%/19.90%`，WSM stall 约 `68.05M/68.24M`；v011c Step1 为 `5681.63 cycles`、MTE `31.88%`、MMA `19.80%`、WSM `68.01M`。token 合并没有改善单 wave feed 指标，配对端到端收益更符合减少重复 wait/barrier 的调度效应。profiler 插桩时长不与干净 benchmark 直接比较。
- 同步 mx-smi / 新 Roofline：未采集；该版已被完整干净 benchmark 明确拒绝，不为无效候选扩大采集成本。

## Lowering and code generation

- 生成 C++ 包含 12 个静态 `memcpy_async` 点、4 个 wait 点，不再包含 identity staging→swizzle bridge loop；inverse-source XOR 确实进入地址计算。
- 最终 MetaX ISA：Step1/Step2 各 128 个静态 MMA 点，barrier 均为 6，private load/store 均为 0，spill annotation 为 0。
- C++、MCFB/嵌入 bitcode、MetaX ISA 与 resource JSON 均已归档至 `codegen/`。

## Causal interpretation

- 预测中的布局正确性、真 async 物化、移除 bridge、32 KiB shared、无 spill 均命中。
- 端到端与分阶段一致说明：v011c 的问题已不是 64 KiB shared，而是为维持 32 KiB 将 N tile 减半后的 grid/CTA 固定开销与输入重复读。
- 结论超出噪声带；这条 async 数据通路可作为 v012 的正确性基座，但 v011 本身不替换 v004。
