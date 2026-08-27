# v148 Case2/3 operand-feed 与 epilogue 探针（sc-16g）

## Verdict

- Parent：external-OJ AC、owner-approved SOTA v148，SHA256 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`。
- 本批没有探针达到相对直接父版本至少 `1.2%` 的候选门槛；不创建编号版本、不创建 submission、不移动 `dorm` 的性能 SOTA。
- 所有进入运行的探针均通过 OJ source validator；仅使用普通 TileLang primitive，无 async copy、foreign source、injection、结果缓存或 disabled race check。
- Case1 对所有 Case2/3 定向探针保持 v148 路径；关键探针的 Case1 generated device C++ SHA256 与 v148 均为 `be17efcd903ec31d294cfc9862d1479947647e99a4abc92bdc564e7bf920080a`。

## 1. 上版本遗留问题

v148 通过 degree-9 SiLU 多项式缩短了三组官方 shape 的 Step1 标量 epilogue，但 Case2/3 的本地支持收益只有约 `0.6%`，低于独立候选门槛。已有 Case3 profile 显示 Step1/Step2 MMA duty 约为 `55%/49%`，VLS stall 仍高；尚未区分剩余空间来自 routed-weight epilogue、Case2 特有并行度，还是 Down-B shared operand feed。

本批目标不是继续优化 Case1，而是从 exact v148 隔离 Case2/3 的 routed scale、SiLU 标量链和 Step2 B operand feed。若任何方向未达到 `1.2%`，只记录失败结论，不组合亚门槛微优化。

## 2. 问题原因分析

### Fresh v148 Case2 mcProfiler evidence

在无残留 profiler 进程、perfcount channel 正常的 C500 sc-16g 上，对 exact v148 定向采集 Case2 Step1/Step2。两个 kernel 均无 private read/write 和 spill；Achieved/Dispatched waves 完全一致。

| Metric | Step1 `kernel_kernel_1` | Step2 `kernel_kernel_2` |
|---|---:|---:|
| Total cycles | `11,297.68 Kcycles` | `9,663.12 Kcycles` |
| Workgroups / waves | `768 / 3072` | `1344 / 5376` |
| Average wave life | `164,455.66` | `53,298.38` |
| VLS pipeline stall | `113,330,907` | `39,687,152` |
| Global read bytes | `2,306,665,696` | `1,203,110,496` |
| Global write bytes | `18,612,544` | `88,087,552` |
| DNoC read average latency | `276.13` | `281.38` |
| AP MTE duty | `5.28%` | `5.44%` |
| AP MMA duty | `54.67%` | `48.68%` |
| L2C duty | `12.44%` | `5.79%` |

Case2 与已有 Case3 profile 呈同一种混合瓶颈：MMA duty 仅约 `49%–55%`，VLS/operand-feed stall 明显，但 L2C duty 很低，不能解释成 HBM 饱和或 CTA 数不足。Step2 比 Step1 的 MMA duty 更低，因此本批尝试改变 routed-weight 依赖链和 Down-B feed，而不是继续扫 CTA grid。

已验证结论：Case2/3 均已派发全部 waves，无 spill，也没有 HBM/L2 饱和证据。当前推测：Step2 的 Down-B shared staging、barrier 和 shared-to-fragment feed 是剩余结构性候选。待验证假设：用高度重合的 direct B loads 换掉 shared/barrier，是否能依赖近端 cache 保留 CTA 内复用。

## 3. 本版本解决方案

本批按风险和杠杆依次筛选五个原子机制：把 routed scale 前移到 Step1、只提前 routed-weight load、Case2/3 单段低阶 SiLU、保留 degree-9 但删除 clamp，以及绕过 Step2 Down shared 的 direct global-to-fragment feed。每个机制均保持 Case1 为 v148 原路径；正确性失败或短测低于门槛即停止。

预期收益分别来自减少 Step2 标量乘法、隐藏标量 load latency、缩短 Horner 链、删除 min/max，以及删除 Step2 shared/barrier。主要风险分别是 Step1 live state、数值误差和重复 Down global 请求。

## 4. 具体落地策略

- Parent：`race_tests/moe/restart-submission/v148_allcase_silu_degree9_clamp55_sc-16g/submission.py`。
- AB/BA runner：`race_tests/moe/restart-scripts/v148_allcase_silu_degree9_clamp55_sc-16g/run_v110_fullcheck.py`。
- direct-Down 探针新增 `MinimalMacaMMA.ldmatrix_b_global`，按现有 `64x8 -> 16x32` B-fragment lane map 直接发出连续 8 个 FP16 的向量 load；只在 `hidden=7168, intermediate=2048` 时启用。
- direct-Down 路径把 `down_shared` 缩为编译期无效占位，删除 Step2 even/odd Down `T.copy` 和相应 `T.sync_threads`，保留 A fragment、MMA 数、output epilogue 与 route metadata 语义。
- 持久源码：`race_tests/moe/restart-deped-trials/20260827_v148_case23_direct_down_fragment_sc-16g.py`。

## 5. Benchmark 对比

正值表示候选更慢。短测协议为同进程 parent/candidate、三轮 AB/BA、`warmup=3`、`repeat=20`；完整有效行输出使用 `rtol=1e-2, atol=1e-2`。

官方 OJ baseline 为 Case2 `18.610 ms`、Case3 `35.875 ms`。本批 AB/BA parent 位于本地同进程，Case2 约 `3.87 ms`、Case3 约 `7.51 ms`；由于官方 baseline 与本地配对不是同一运行环境，不把两者差值伪装成精确本地 speedup。direct-Down Case2 约 `8.67 ms`，虽仍快于外部 baseline，但相对同环境 v148 明确回退约 `4.80 ms / 123.85%`。

| Direction | SHA256 | Correctness | Case2 | Case3 | Decision |
|---|---|---|---:|---:|---|
| Step1 写 `up_logits` 时预乘 routed weight，删除 Step2 output multiply | `ad213910...` | PASS | median `+0.253%` | median `+0.386%` | reject：Step1 metadata/load/live-state 成本高于 Step2 标量乘法削减 |
| routed-weight load 从 Step2 epilogue hoist 到 MMA 前 | `c7ffbd51...` | PASS | median `+0.095%` | median `+0.009%` | reject：编译器/硬件已能隐藏两个标量 load，纯调度无收益 |
| Case2/3 单段 minimax degree-7 SiLU，Case1 保持 degree-9 | `ffb4d61b...` | FAIL | `20,938 / 44,040,192` strict mismatches，max abs `0.022949` | not run | correctness gate reject |
| Case2/3 degree-9 SiLU 去掉 clamp，Case1 不变 | `51063076...` | PASS | median `-0.342%` | median `-0.072%` | reject：真实小信号但远低于 1.2% |
| Step2 Down-B 按 MMA lane 映射直接 global-to-fragment，删除 shared staging/barriers | `af8dcd35...` | PASS | median `+123.850%` | not run | strong reject：CTA 内 4-wave 重复 Down 读取未被 cache 合并 |

## 6. Profile 指标变化

两份原始 Case2 profiler JSON 已持久归档：

- `race_tests/moe/restart-deped-trials/20260827_v148_case2_step1_mcprofiler.json`
- `race_tests/moe/restart-deped-trials/20260827_v148_case2_step2_mcprofiler.json`

### Direct Down fragment causal evidence

该探针是本批唯一真正改变 Step2 operand-feed 的结构实验：

- Case2 Step2 `220 MT / 52 ST -> 198 MT / 52 ST`，仍为 2 waves/PEU；
- generated source `30,643 -> 28,820 B`；
- 全 translation unit 的 `__syncthreads` 从 `9 -> 5`，即删除 Step2 四个同步位点；
- direct Down load lower 为连续 `uint4`（128-bit）global-to-local load；
- Case1 generated C++ 与 v148 bit-identical；
- Case2 strict correctness PASS。

尽管静态资源和同步数都改善，Case2 从约 `3.87 ms` 退化到约 `8.67 ms`。根因是原 shared panel 让四个 row waves 复用一次 `N256 x K64` Down tile；direct fragment 让每个 wave 重复读取整份 B，真实请求代价远大于 barrier/shared feed。该反例关闭“绕过 shared 直接喂 B fragment”家族。

## 7. 实验总结

1. routed weight 不是 Case2/3 Step2 的关键依赖：移动乘法位置会增加 Step1 压力，单纯提前 load 则接近 codegen/端点 no-op。
2. v148 degree-9 SiLU 在 Case2/3 仍有少量标量开销，但删除 clamp 仅带来 `0.07%–0.34%`；低阶单段近似又无法通过严格正确性。继续微调 epilogue 不可能独立达到 1.2%。
3. Step2 必须保留 CTA 级 Down-B shared 复用。下一次重开 operand-feed，必须在“不增加 Down global bytes”的前提下减少 shared latency/barrier，例如出现新的合规 BSM/shared-feed 原语；普通 load reorder、dual fragment 和 shared layout 微调已有负结果。
4. Case2/3 的 profile 比例相近，没有证据支持为 Case2 单独增加 grid 并行度；两者都已派发全部 waves，主要空间仍在每 wave 内的 operand-feed/MMA issue。

## Appendix: scratch evidence

- `/tmp/v148_case23_reprofile_20260827/case2_step1/1_kernel_kernel_1.txt.json`
- `/tmp/v148_case23_reprofile_20260827/case2_step2/1_kernel_kernel_2.txt.json`
- `/tmp/v148_probe_case23_{route_scale_step1,early_routed_weight,silu_deg7_minimax50,silu_no_clamp,direct_down_fragment}.py`
- `/tmp/v148_{probe_early_route,direct_down}_codegen/`

持久仓库同时归档 direct-Down 源码与两份 mcProfiler JSON；其余探针由完整 SHA256 和本报告固定。
