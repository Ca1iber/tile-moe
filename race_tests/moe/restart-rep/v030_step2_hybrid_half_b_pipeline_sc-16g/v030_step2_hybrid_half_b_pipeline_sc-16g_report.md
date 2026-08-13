# v030_step2_hybrid_half_b_pipeline_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：accepted
- 一句话因果结论：OJ 公共 API 内联的 B1 异步 BSM 搬运与 B0 MMA 重叠，在不增加寄存器、shared、spill 或降低 2-wave occupancy 的情况下，使 Case2 Step2 稳定缩短 2.77%，OJ 端到端稳定提升 0.88%。

## Identity

- Machine：sc-16g，MetaX C500，25% compute slice，16 GiB quota；KMD 3.8.30，MACA 3.7.1.5。
- Git：branch `dorm`，父 commit `0d02ed217409347548c9298d14fc9b19b0844e11`。
- Parent：`v027_step2_input_pingpong_sc-16g`。
- Candidate submission SHA-256：`d5626472193c2b59b18500d551ae9039ab1c787867d7ab0799f3dd5e30e83508`。
- OJ import gate：PASS；只导入 `torch`、`tilelang`、`tilelang.language as T`、`from tilelang.layout import make_swizzled_layout`。

## Correctness

- 精确 archived submission 三 Case 均 PASS，`rtol=1e-2, atol=1e-2`。
- Case1/2/3 max abs 均为 `0.001953125`，padding max 均为 `0.0`。
- 官方 fusedmoe 两组 functional config 均 PASS。

## Benchmark

- 精确 OJ submission，warmup 20 / repeat 100：Case1 `3.1891199 ms`，Case2 `5.0275610 ms`，Case3 `10.9476501 ms`，三组 PASS。
- Case2 同窗口 7 轮 AB/BA：v027 median `5.1044531 ms`，v030 median `5.0590976 ms`；paired median `-0.87698%`，7/7 改善，paired pstdev `0.02684` 个百分点。
- 官方 submission adapter functional PASS；performance 独立进程为 `87.3594043 ms`（7168/2048/8e）和 `28.7430689 ms`（3584/1024/4e）。官方配置不触发本次 32-expert 特化，只作回归门禁。
- 单进程 OJ 绝对值会受编译顺序/切片状态影响；接受裁决使用同窗口 paired ratio。

## Profile

### mcTracer Case2

- v027 Step2 median `1.874944 ms`；v030 `1.823232 ms`。
- 三组 Step2 变化：`-3.0994% / -2.7713% / -1.7857%`，中位 `-2.7713%`。
- Step1 源码不变；独立进程中位漂移 `+0.8781%`，不作为因果依据。
- 两版 Step2：234 registers/thread，32 KiB dynamic shared，0 private/thread，grid 28x48。

### mcProfiler Case2 Step2 targeted

| Metric | v027 | v030 | 变化/解释 |
|---|---:|---:|---|
| Average wave life cycles | 4883.29 | 4878.86 | -0.09% |
| AP active cycles | 4,131,794,367 | 4,116,201,009 | -0.38% |
| AP MMA duty | 25.58% | 25.68% | +0.10 pp |
| AP MTE duty | 38.69% | 38.80% | +0.11 pp |
| VL1 pt0 | 99,925,570 | 89,930,544 | -10.00% |
| VL1 pt1 | 98,994,163 | 83,365,903 | -15.79% |
| VL1 pt2 | 100,221,600 | 87,652,497 | -12.54% |
| VL1 pt3 | 98,708,188 | 83,950,464 | -14.95% |
| Private read/write | 0 / 0 | 0 / 0 | 无 spill |

- mcProfiler replay 的 Total Cycles/global bytes 是聚合计数，不能替代单次 runtime。

### Roofline / mx-smi

- 原生 Roofline：v027 `case_I=786.99, case_flops=533.63`；v030 `case_I=802.53, case_flops=537.92`；两者均高于工具 ridge point `MAX_I=260`，属于 compute-side。
- 两份 Roofline 是独立 replay，只作结构证据，不作接受时间依据。
- mx-smi 确认 C500、sGPU enabled、minor 021 / sGPU id 2、compute 25%、VRAM quota 16000 MiB；空闲快照不用于 Kernel 利用率判断。

## Lowering and code generation

- TileLang submission 仅使用 OJ 允许的公开表面：`T.import_source`、`T.call_extern`、`T.address_of`、`T.access_ptr`。
- Generated C++：v027/v030 分别 26,472 / 30,245 bytes；v030 出现 4 个 `memcpy_async` source sites、1 个 wait wrapper site，MMA sites 均为 8。
- 资源完全一致：Step1 210 MT/36 ST，Step2 234 MT/52 ST；0 stack，static max 2 waves/PEU。
- 最终 ISA：两版 MMA 计数相同；v030 出现新增 memcpy/BSM wait 控制路径。额外同步控制存在，但被隐藏的搬运等待抵消并产生净收益。

## Causal interpretation

- 预测的 Step2 时间与 VL1 stall 下降、MMA/MTE duty 上升均出现。
- 端到端 paired OJ 与分阶段 mcTracer 方向一致；Step2 约占两 Kernel 时间的 36%，因此 Step2 `-2.77%` 对应端到端约 `-0.88%` 合理。
- MMA 数量、资源、occupancy 与 spill 均未变化，排除“更多计算资源/寄存器换速度”的解释。
- 全异步 B0/B1 的失败说明 C500 BSM barrier/address 语义对两个 half 并不对称；hybrid 是当前既 OJ 合规又正确的最小机制。
- 下一步应研究 B0 为何不能安全异步，以及能否用更细粒度 fence 消除新增 barrier，而不是盲目扩大 stages。
