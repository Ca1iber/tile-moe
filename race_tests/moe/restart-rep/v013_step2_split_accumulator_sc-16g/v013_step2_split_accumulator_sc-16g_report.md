# v013_step2_split_accumulator_sc-16g 证据报告

## Verdict

- 运行类型：paired verdict + official correctness + codegen/ISA + partial trace
- 结论：accepted_current_best
- 一句话因果结论：拆分 Step2 的 256-column accumulator 在不改变 CTA、MMA、global/shared traffic 和 barrier 数的前提下，把 256 MT/38 ST 及 2/2 spill 降到 196 MT/28 ST、0/0 private traffic，三组 OJ 严格配对均稳定加速。

## Identity

- Machine：sc-16g，MetaX C500 25% sGPU
- Git branch：`dorm`
- Kernel SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`
- OJ / official benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8` / `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- Toolchain：`/root/tilelang-metax/build`，MACA 3.7.1；mcProfiler 3.8.1.4。KMD 未重新采集。

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
- Case3 mcTracer 与 targeted mcProfiler 在 sc-16g 主机进入 `flush_workqueue` / `synchronize_srcu` 异常后失败；普通 TileLang 初始化随后也卡在同一状态。没有从失败采集编造计数器，见 profiler 下的 `UNAVAILABLE.md`。
- Case3 的阶段因果仍可由两条独立证据闭合：Step1 ISA 与 v004 byte-identical；严格配对端到端稳定加速，因此变化只能来自 Step2及极小 launch noise。
- mx-smi / Roofline：主机异常前未取得与 v013 配对同步的完整采集，明确标为 unavailable。

## Lowering and code generation

- v013 Step1 与 v004 完全一致：24,472 B，198 MT / 28 ST，256 MMA，30 global load、16 global store、64 shared load、16 shared store、3 barrier、89 arrive，无 private traffic/spill。
- v004 Step2：20,760 B，256 MT / 38 ST，2 private load、2 private store，spill annotations stores=2/reloads=2。
- v013 Step2：20,856 B，196 MT / 28 ST，0 private load/store，0 spill；static max 仍为 2 waves/PEU。
- Step2 工作量保持：256 MMA、32 global load、32 global store、64 shared load、16 shared store、3 barrier。代码只增加 96 B、12 条静态指令及必要地址控制，排除“少算/少搬”的伪收益。
- 编译资源报告为 0-byte stack frame；生成 C++ 不含 async site/wait，静态 `__syncthreads` 数与 v004 相同。

## Causal interpretation

- 预测指标全部按方向变化：spill 消失，MT/ST 大幅下降，工作量计数保持，三 case 配对均加速。
- 端到端与修改阶段一致：Step1 byte-identical；Case1 trace 的 Step2 为 1.042944 ms，且 span 3.031944 ms 与严格 OJ 3.032210 ms 一致。
- 收益超出噪声：两轮交替顺序候选方差很小，Case2/3 的 2.54%/2.11% 远大于轮间抖动；Case1 0.80% 也稳定复现。
- 瓶颈迁移：Step2 不再受显式 private spill 限制，但仍为 196 MT、2 waves/PEU。下一步应在主机恢复后测试四个 64-column fragment，检查是否能进一步降低寄存器且不增加 address/control 开销。
