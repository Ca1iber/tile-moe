# v166_gateup_pairload_sc-16g 证据报告

## Verdict

- 运行类型：正式本地 verdict；外部 OJ pending。
- 结论：`local-candidate-external-oj-pending`，不是 accepted。
- 一句话因果结论：在 v160 long Step1 中把每个线程的 Gate/Up 128-bit 读取成对发出，再写入既有 swizzled shared；不增加 global traffic、寄存器、waves 或 stack frame，Case2 正式端到端均值提升 `1.6404%`，Case3 side 提升 `1.8139%`。

## Identity and compliance

- Machine：MetaX C500 `sc-16g`，sGPU id 3，25% compute，16 GiB。
- Git branch / starting commit：`dorm` / `78363ffcbe75772dbaa58eeb93ebda3c63f60b0d`。
- Parent v160 SHA-256：`5273ba444f66f956c339f3d7f38a38326d49b7d59fbb79046dc10cd7fba6f4f1`。
- Candidate SHA-256：`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`。
- Incumbent external-OJ SOTA：v148；display `[83,82,82]`。v166 尚无外部 OJ 证据，未创建或移动 `restart-submission`。
- OJ source validator：PASS；TileLang primitive only；async copy、foreign injection、直接 MXMACA builtin 与跨调用缓存均为 0。

## Mechanism

v160 的 long Step1 对每个 32x64 half panel 按 `Gate load/store -> Up load/store` 执行。v166 用两个短生命周期的 8-element FP16 local vectors，使生成 C++ 保留：

```text
Gate uint4 load -> Up uint4 load -> Gate shared uint4 store -> Up shared uint4 store
```

两个 32-row half panel 均采用该顺序；数学、tile geometry、barrier 数和 shared layout 不变。

## Correctness and formal benchmark

- 官方 Case1/2/3 完整有效输出均 PASS，`rtol=1e-2`、`atol=1e-2`。
- Case2：5 rounds、warmup 10、repeat 50、AB/BA 交替。

| Round | Order | Parent ms | Candidate ms | Change |
|---:|---|---:|---:|---:|
| 1 | AB | 3.503821 | 3.445069 | -1.67680% |
| 2 | BA | 3.498573 | 3.442775 | -1.59487% |
| 3 | AB | 3.500554 | 3.443604 | -1.62688% |
| 4 | BA | 3.500989 | 3.444311 | -1.61893% |
| 5 | AB | 3.499930 | 3.440978 | -1.68437% |

- Mean `-1.6403696%`；median `-1.6268786%`；population stdev `0.0345692 pp`。
- Case1 side `-0.3761%`（噪声附近）；Case3 side `-1.8139%`。

## Lowering and resources

| Symbol role | MT regs | ST regs | Static max waves/PEU | Stack frame |
|---|---:|---:|---:|---:|
| unified Step1 | 226 | 46 | 2 | 0 B |
| Step2 | 220 | 56 | 2 | 0 B |

- v160 与 v166 的 Step1 资源完全相同。
- MMA sites `13`、`__syncthreads` sites `17`、async sites `0`。
- 生成 C++ 明确包含相邻 Gate/Up `uint4` loads，随后才是两次 shared stores；变换没有被编译器消除。

## mcProfiler: Case2 Step1

| Metric | v160 | v166 | Change |
|---|---:|---:|---:|
| Workgroups / waves | 768 / 3072 | 768 / 3072 | 0% |
| Total cycles | 7,005.34 K | 6,668.86 K | -4.80% |
| Average wave life | 149,579.97 | 145,177.40 | -2.94% |
| AP active cycles | 238,293,169 | 232,613,801 | -2.38% |
| Global read bytes | 2,019,135,840 | 2,013,307,232 | -0.29% |
| Global write bytes | 18,612,544 | 18,612,544 | 0% |
| AP MMA duty | 61.61% | 63.11% | +1.50 pp |
| AP MTE duty | 6.34% | 6.49% | +0.15 pp |
| VLS pipeline stall | 76,806,484 | 82,954,354 | +8.00% |
| VL1 partition stall sum | 75,726,146 | 87,911,524 | +16.09% |
| L2 hit | 44.153% | 43.887% | -0.266 pp |
| L2C duty | 27.31% | 27.75% | +0.44 pp |

解释：流量和 occupancy 没有实质变化，收益来自更短的 wave lifetime 与更高 MMA issue 占比，即两个独立权重读取之间形成了更好的延迟重叠。VLS/VL1 原始 stall 反而升高，说明不能把结论简化为“缓存冲突减少”；下一步扩大预取窗口必须先过寄存器、stack frame 与正式 AB/BA 门禁。

## Decision

- Case2 正式五轮稳定越过 `1.2%` floor，作为本地候选保留。
- 外部 OJ pending；不得标记 accepted，不得移动 `restart-submission`。
