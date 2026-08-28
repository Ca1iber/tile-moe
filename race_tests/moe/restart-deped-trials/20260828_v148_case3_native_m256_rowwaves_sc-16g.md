# v148 Case3 原生 M256×N64 独立 row-wave 探针（sc-16g）

## 1. 上版本遗留问题

外部 OJ/仓库所有者确认的 SOTA 仍为 `v148_allcase_silu_degree9_clamp55_sc-16g`，提交源码 SHA256 为 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`。新鲜 Case2/3 profile 表明 Step1 约占端到端 62%--66%，MMA duty 约 52%--55%，且 Case3 的 184-row 长 expert 会由两个 M128 CTA 重复读取相同 Gate/Up 权重。

此前 `M256×N64` 等面积长-expert探针已经降低约 13.6% global read 和约 29.7% VLS stall，但同一 wave 串行执行 top/bottom 两个 M128 fragment，最终仍回退约 2.3%。旧报告只在“上下 row half 能改为独立 wave、且不增加 fragment live state”时允许重开。

## 2. 问题原因分析

已验证结论：旧 M256 探针的权重复用真实存在，失败不来自 spill；问题是 top/bottom fragment 串行化降低了可见并行度。当前假设：把两个 M128 fragment 合并成一个原生 M256 fragment，让四个 64-thread wave 分别拥有连续 64 行，可以保持相同每线程 A/accumulator 面积，同时避免同一 wave 在上下半片间串行切换。

证伪条件：严格正确性失败；generated code 未保留向量 A load；或相对 exact v148 的 Case3 配对提升不足 1.2%。

## 3. 本版本解决方案

本探针只改变官方 Case3 的长-expert Step1：

- 由两个 `M128×N64` A/Gate/Up fragment 改为一个 `M256×N64` fragment；
- `warp_row_tiles` 从 32 提到 64，四个 waves 分别负责 `[0,64)`、`[64,128)`、`[128,192)`、`[192,256)`；
- 保持四 waves、N64、K64、MMA 总数、Gate/Up 字节、rolling-A 和每线程 accumulator 面积不变；
- 增加一个极小的设备 metadata kernel，按运行时 `group_sizes` 构造 short/long expert 表，避免 v143 已证伪的“前短后长”固定排列假设；
- Case1/2 仍走 v148 路径；无 async copy、foreign source、注入、结果缓存或 disabled race check。

## 4. 具体落地策略

最终归档源码为 `20260828_v148_case3_native_m256_rowwaves_sc-16g.py`，SHA256 `13ab557d54228c7c84e3bc7dabf11a2a2fcd3a230d71411866f187c591289b38`。

v2 首先修正了 M256 C-fragment 的真实 4-column lane 写回映射并通过完整 Case3 正确性。v3 再把 A workspace 的 8/4 个地址组由 `T.serial` 改为 `T.unroll`，试图恢复 128-bit load；source validator 对两版均 PASS。

评测命令使用项目原生 runner：

```text
run_v110_fullcheck.py --parent <v148 submission> --candidate <probe> --case 3 --rounds 1 --warmup 1 --repeat 2
```

这是终止性 smoke，不是可晋级的正式 verdict；出现 116% 回退后按规则停止长测和 mcProfiler。

## 5. Benchmark 对比

环境为 C500 `sc-16g`、MACA 3.7.1.5、KMD 3.8.30；Case3 为 experts=64、hidden=7168、intermediate=2048、total_tokens=9088、FP16 输入/权重与 FP32 accumulator。

| 版本 | Case3 时间 | 相对 v148 | 相对官方 baseline 35.875 ms | 正确性 |
|---|---:|---:|---:|---|
| v148 parent | `7.6479998 ms` | baseline | `78.68%` 更快 | PASS |
| M256 row-wave v2 | `16.5524483 ms` | `+116.428%` 回退 | `53.86%` 更快 | PASS |

v3 没有继续计时：generated C++ 证明预期的向量化没有 materialize，因此其热循环与 v2 保留同一标量 A-load 结构。

## 6. Profile 指标变化

没有采集 mcProfiler：116% 的稳定终止性回退已经否决候选，继续占用 perfcount 不会改变晋级结论。改用 exact codegen/resource 证据定位根因：

| 指标 | 旧双 M128 长探针 | 新单 M256 长 kernel | 解释 |
|---|---:|---:|---|
| MT registers/thread | 约 `198` | `196` | 没有寄存器 cliff |
| ST registers | `23`（旧报告） | `52` | 动态地址/控制增加，但仍 2 waves |
| static waves/PEU | `2` | `2` | occupancy 档位未变 |
| generated source | 旧报告 `40,683 B`（全 TU） | v3 `47,669 B`（全 TU） | 新增 metadata kernel 与动态跨-wave地址 |
| async-copy sites | `0` | `0` | 合规同步路径 |
| 新长 kernel A workspace load | 旧路径可形成每线程连续向量读取 | `for long_elem/next_elem in 0..8` 标量 half load | 116% 回退的直接 codegen 根因 |

`T.unroll(8/4)` 只在 generated C++ 留下 `#pragma unroll`；TileLang 的向量化阶段没有把动态跨-wave native workspace 地址识别成 `uint4/ldg_b128`。这说明性能失败不是 M256 MMA 本身或资源溢出，而是为了重新分配 row ownership，A operand feed 丢失了 consumer-native 的向量装载合同。

## 7. 实验总结

该方向拒绝，不编号、不创建 submission、不移动 `dorm`。单 M256 fragment 的数学和 lane 映射可正确实现，资源也没有恶化，但跨 wave 重读既有 M128-native workspace 会被当前 lowering 标量化，Case3 终止性回退 116.4%。

后续不要重复普通 `serial/unroll/vectorized` 变体。只有 TileLang 暴露一种 OJ 合规、可证明生成 128-bit vector load 的“跨 wave native fragment remap”原语，或重新设计 prepack 使 M256 消费者原生连续时，才值得重开；后者必须同时证明不会让短 expert 或现有 M128 Step1 退化。v148 保持 SOTA。
