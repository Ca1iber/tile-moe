# v013_step2_split_accumulator_sc-16g 证据报告

## Verdict

- 运行类型：paired verdict + official correctness + codegen/ISA + repeated trace + paired mcProfiler + synchronized mx-smi + Roofline
- 结论：accepted_current_best
- 一句话因果结论：拆分 Step2 的 256-column accumulator 在不改变 CTA、MMA、global/shared traffic 和 barrier 数的前提下，把 256 MT/38 ST 及 2/2 spill 降到 196 MT/28 ST、0/0 private traffic，三组 OJ 严格配对均稳定加速。

## Identity

- Machine：sc-16g，MetaX C500 25% sGPU
- Git branch：`dorm`
- Kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`
- OJ / official benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8` / `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- Toolchain：`/root/tilelang-metax/build`，MACA 3.7.1，KMD 3.8.30，BIOS 1.33.5.0，mx-smi 2.3.1，mcProfiler 3.8.1.4。

## Correctness

- 严格 OJ：两轮交替顺序 × 三 case × 两版本，共 12 个 case 样本全部 PASS，`max_abs=0.001953125`。
- 额外候选全 OJ 也全部 PASS。
- 官方 `fusedmoe_benchmark.py`：两组 functional test 均 PASS。

## Benchmark

严格配对参数：`--cases 1,2,3 --warmup 20 --repeat 100`；顺序为 v004→v013、v013→v004。

| Case | v004 mean ms | v013 mean ms | 改善 | speedup |
|---|---:|---:|---:|---:|
| 1 | 3.056552 | 3.032210 | 0.7964% | 1.00803× |
| 2 | 5.449833 | 5.311187 | 2.5440% | 1.02610× |
| 3 | 10.657367 | 10.432087 | 2.1138% | 1.02160× |

- 两轮候选值高度一致：Case1 3.031959/3.032461，Case2 5.313116/5.309258，Case3 10.429978/10.434197 ms。
- 官方 performance shape（与 OJ 不同，仅作官方 harness 记录）：79.496929 ms 与 25.428198 ms；不可和 OJ 直接比较。

## Profile

- mcTracer Case1：Step1 1.958144 ms，Step2 1.042944 ms，launch gap 0.030856 ms，device span 3.031944 ms；Step1/Step2 grid 分别为 64×24 和 8×24，均 196 registers/thread、32 KiB dynamic shared。
- 节点恢复后重采 Case3 mcTracer 三次：Step1 中位 7.056896 ms（范围 6.965504–7.062016），Step2 中位 3.545344 ms（范围 3.537664–3.549952，均值 3.544320），Step2 占纯 kernel 时间 33.44%；launch gap 中位 0.026624 ms，device span 中位 10.605056 ms。
- Case3 Step2 trace 资源为 196 registers/thread、32 KiB dynamic shared、0 private memory；三次 Step2 极差约 0.35%，阶段计时稳定。
- 2026-08-11 的失败 Case3 仍保存在 `failed_case3/`：当时节点卡在 `flush_workqueue` / `synchronize_srcu`，19-byte 空 trace 不作为证据；恢复后的采集没有覆盖或删除失败现场。

### Paired targeted mcProfiler：Case3 Step2

同一时段、同一 harness、同一 kernel name、`counts=1`，通过显式源码快照动态绑定 v004/v013；源码 SHA-256 分别为 `2722b8b1...09ff` 与 `7e72737a...cbc3`。

| 指标 | v004 | v013 | 变化 |
|---|---:|---:|---:|
| Total Cycles (tool Kcycles) | 7,528,712.45 | 7,367,083.59 | -2.1468% |
| Average wave life cycles | 5,027.87 | 4,989.55 | -0.7622% |
| Private read instructions | 86,016 | 0 | eliminated |
| Private write instructions | 86,016 | 0 | eliminated |
| Global read bytes | 39,685,737,856 | 39,684,940,128 | -0.0020% |
| Global write bytes | 12,226,879,648 | 12,205,139,648 | -0.1778% |
| VL1 partition stall sum | 1,601,644,571 | 1,570,658,659 | -1.9346% |
| Shared non-conflict efficiency | 100% | 100% | unchanged |

- `Dispatched waves` 在 v013 报告中为 0，而 kernel 明确执行；同时 AP active cycles 的分母跨版本相差 84.9%。因此本次 MTE/MMA duty ratio 的跨版本差值标记为 invalid，不用于因果判断。
- `all_memacs`、VL1/L2 `memacs` 仍按 raw proxy 记录，不能未经文档换算成 bytes。

### Roofline 与 mx-smi

- 配对 mcProfiler per-kernel Roofline：v004 为 AI 1083.426 FLOP/B、807.150 TFLOP/s、744.998 GB/s proxy；v013 为 AI 1035.984 FLOP/B、871.937 TFLOP/s、841.651 GB/s proxy。profiler `during` 从 4.314358 ms 降到 4.000670 ms（-7.27%）；这是 instrumentation domain，只用于同工具方向验证，不替代 clean benchmark 的 -2.11%。
- Roofline 使用 1.125 GHz 下物理 FP16 MMA roof 1916.928 TFLOP/s；不能把 25% compute quota机械变成 479.232 TFLOP/s，因为 Case3 Step2 小于 10 ms 时间片、runtime 可见 104 AP，且 profiler 原生点会超过该错误 roof。
- 物理 1843.2 GB/s 口径 ridge=1040 FLOP/B：v004 略在 compute side，v013 以 AI=1035.984 落在 memory side、紧贴 ridge。sc-16g 实测保守 1400 GB/s 口径 ridge=1369.234 FLOP/B：两者均在 memory side。
- v013 原生图与双 roof 图均归档在 `moe-roofline/v013_step2_split_accumulator_sc-16g/`；原生 mcProfiler 图保留物理整卡口径，重绘图同时标注 1843.2 与 1400 GB/s。
- 同步 mx-smi 使用 Case3 `warmup=10/repeat=2000`，正确性 PASS。harness 先执行 PyTorch reference，后执行用户 kernel，原始样本呈两个无重叠平台；用户 kernel steady-state 41 个样本 HBM 中位 1060.849 GB/s（范围 1016.150–1082.353），为 1400 GB/s roof 的 75.77%；104 个 AP 全部活跃，AP 使用率中位 96%。该值是 Step1+Step2 重复 workload 的物理计数器需求，不是单 Step2 bytes，也不是带宽上限。

## Lowering and code generation

- v013 Step1 与 v004 完全一致：24,472 B，198 MT / 28 ST，256 MMA，30 global load、16 global store、64 shared load、16 shared store、3 barrier、89 arrive，无 private traffic/spill。
- v004 Step2：20,760 B，256 MT / 38 ST，2 private load、2 private store，spill annotations stores=2/reloads=2。
- v013 Step2：20,856 B，196 MT / 28 ST，0 private load/store，0 spill；static max 仍为 2 waves/PEU。
- Step2 工作量保持：256 MMA、32 global load、32 global store、64 shared load、16 shared store、3 barrier。代码只增加 96 B、12 条静态指令及必要地址控制，排除“少算/少搬”的伪收益。
- 编译资源报告为 0-byte stack frame；生成 C++ 不含 async site/wait，静态 `__syncthreads` 数与 v004 相同。

## Causal interpretation

- 预测指标全部按方向变化：spill 消失，MT/ST 大幅下降，工作量计数保持，三 case 配对均加速。
- 端到端与修改阶段一致：Step1 byte-identical；Case1 span 3.031944 ms 与严格 OJ 3.032210 ms 一致；Case3 三次 trace 进一步确认 Step2 稳定占纯 kernel 时间 33.44%。
- 直接 counter 证据与 ISA 一致：v004 的 86,016/86,016 private read/write 在 v013 变为 0/0，Total Cycles 同时下降 2.15%，而 global read 基本不变；这支持“消除 accumulator spill”而非“减少 GEMM 工作量”。
- 收益超出噪声：两轮交替顺序候选方差很小，Case2/3 的 2.54%/2.11% 远大于轮间抖动；Case1 0.80% 也稳定复现。
- 瓶颈迁移：Step2 不再受显式 private spill 限制，但仍为 196 MT、2 waves/PEU；v013 已移动到 Roofline ridge 附近且同步 HBM 只达到保守 roof 的约 75.8%。下一步对四个 64-column fragment 做单变量实验，必须同时检查 MT/ST、private traffic、地址控制、wave resource 和 clean benchmark，不能只按更小 fragment 推断更快。
