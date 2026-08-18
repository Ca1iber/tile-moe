# v060_actual_rows_warp_count_sc-16g 证据报告

## Verdict

- 运行类型：local verdict；外部 OJ promotion 未执行。
- 结论：local accepted / OJ inconclusive。
- 因果结论：保持物理 padding 接口不变、按 32 行 MMA warp 跳过完整无效尾 warp，可稳定降低两阶段耗时；额外预计算 `active_row_warps` 相对 79.txt 为中性。

## Identity

- Machine：sc-16g（C500 16G sGPU）
- Branch/base：`exp/moe-padding-actual-rows`，base `dorm`=`0d02ed217409347548c9298d14fc9b19b0844e11`（v027）。
- Candidate SHA-256：`f38e15b9de3ebccb6eba69e4d2da8d88a1bc16b0eb2a7d451037a2f190213170`。
- 环境、源码 hash：见根目录 `*_environment.txt`、`*_source_hashes.sha256`。

## Correctness

- OJ source allowlist/static gate：PASS。
- 独立参考校验覆盖全部 3 个官方形状：PASS；最大 `max_abs=0.001953125`；`padding_max=0.0`。
- 候选保持精确 CRLF 字节并由 `.gitattributes -text` 保护。

## Benchmark

协议：v027/v060 交替配对，warmup=5、repeat=30、rounds=5，以下为各轮中位数。

| Case | v027 ms | v060 ms | speedup |
|---|---:|---:|---:|
| 1 | 3.194675 | 2.876484 | 1.11062x |
| 2 | 5.102148 | 4.732937 | 1.07801x |
| 3 | 10.982272 | 9.672883 | 1.13537x |

直接对照 79.txt（warmup=5、repeat=30、rounds=7）：Case1 2.876032→2.877542 ms（0.99948x），Case2 4.738116→4.736768 ms（1.00028x）。因此 warp-count 预计算没有独立收益。

## Profile

- mcTracer（三组 AB/BA 各 3 对）Step1/Step2 中位变化：Case1 -14.97%/-0.18%，Case2 -5.98%/-8.30%，Case3 -12.74%/-10.13%。grid 均不变。
- Case3 mcProfiler 匹配 achieved waves：AP active cycles -7.12%，Memory Instructions -9.49%，L2C Read Instructions -11.91%；Global Memory Read bytes +4.65%，L2 hit -7.29pp，Total Cycles +2.09%。计数器用于诊断，不覆盖 paired timing/mcTracer 结论。
- mx-smi：环境收集目录中保留同步快照。
- Roofline：按有用 FLOPs 的端到端敏感性图，非 native 单 kernel Roofline。C500 16G compute roof 479.232 TFLOP/s 为 25% 配额模型；HBM 同时给 1843.2 GB/s 物理理论值和 1400 GB/s 保守实测敏感性线，不按配额缩放。

## Lowering and code generation

- 三个官方形状均捕获 generated device C++ 和最终 MetaX assembly。
- 资源（Step1/Step2 MT registers）：Case1 222/236，Case2 216/230，Case3 230/230；静态最大 2 waves/PEU。
- generated C++：每个 case 均 8 个 MMA site，`memcpy_async=0`，`barrier_wait=0`。
- 对 generated C++ 与最终 `.metax.s` 的禁用项扫描为 0：无 async copy/barrier、外部注入或 packed call 标记。

## Causal interpretation

- 每两个 expert 的实际行数为 100+184=284；物理 padded 行为 384，原始有效槽位率 73.958%。
- C500 当前 MMA row warp 粒度为 32，所以必须覆盖到 128+192=320 行；相对 384 行减少 16.667% row work，有效/warp-covered 比率为 88.75%。100 expert 的最后 28 行和 184 expert 的最后 8 行仍是不可避免的粒度尾部。
- 不改变算子接口时不能把不同 expert 的剩余行简单塞进同一 MMA tile：它们使用不同 expert 权重。真正移除物理 padding 需要改变 routing/offset/存储契约，不属于本次 kernel 局部优化。
- v060 的 Case3 小于 79.txt 的提升，是因为本实验特意恢复 v027 的 Case3 prefetch 时序来隔离变量；说明尾 warp 裁剪与调度优化可独立叠加。
- 外部 OJ 逐 case 分数缺失，按规则不晋升、不创建 restart-submission，`dorm` 继续指向 v027。
