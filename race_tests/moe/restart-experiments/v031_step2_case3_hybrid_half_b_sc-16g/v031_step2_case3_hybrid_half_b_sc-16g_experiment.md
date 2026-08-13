# v031_step2_case3_hybrid_half_b_sc-16g 实验记录

## 身份与状态

- 状态：accepted
- 机器：sc-16g，MetaX C500 25% sGPU / 16000 MiB quota
- 分支：`dorm`
- 父版本与上版最优：`v030_step2_hybrid_half_b_pipeline_sc-16g`
- restart baseline：`v000_minibs_baseline_sc-16g`
- Submission SHA-256：`dc4200fb77f99cf576dcacc17d9c2c9cf08aaae1d3edbfb4876b599a38668528`

## 假设卡

- 已观测证据：v030 已证明在 Case2 中将 Step2 的 256x64 B tile 拆为两个 128x64 half，并让 B1 async BSM copy 与 B0 MMA 重叠，可在资源不变时缩短 Step2；Case3 与 Case2 具有相同 `hidden=7168, intermediate=2048`，但 v030 因 dispatch 限制仍走旧路径。
- 已验证瓶颈：v030 Case3 mcTracer Step2 约 `3.716 ms`，占两个 kernel 总时间约 34%；生成 C++ 使用单 32 KiB B shared buffer，B load/sync/MMA 串行。
- 当前假设：Case3 的 64 experts / 96 token blocks 仍能复用相同 half-B overlap 机制，且更大 grid 不会改变 BSM 正确性或增加单 CTA 资源。
- 拟采用机制：只把 `use_step2_half_b_pingpong` 的 32-expert 限制放宽为同一 `7168x2048, num_experts>=32` 分支内恒真；Case1、官方 4/8-expert fallback 与 Case2 代码完全不变。
- 预测：Case3 Step2 runtime 和 VL1 stall 下降；MMA 数、MT/ST registers、32 KiB shared、2-wave occupancy 与 private spill 不变；端到端提升约为 Step2 提升乘其时间占比。
- 证伪条件：Case3 正确性失败；两组 AB/BA 不能稳定胜出；mcTracer Step2 不降；生成 C++ 不出现 async BSM；出现寄存器、shared、spill 或 occupancy 回退。
- 风险：更大 grid 可能放大 BSM/HBM 竞争；mcProfiler multi-batch replay 可能产生跨批聚合异常，不能替代 clean runtime。

## 实施经过

1. 先追查 v030 显式 async wait：去除 token wait 以及把 4 token 槽缩为 1 槽均正确，但 Case2 配对中位仅约 `-0.04%`，属于噪声，不命名为独立版本。
2. 将 v030 的 hybrid half-B 路径扩展到 Case3；最小源码 diff 仅一行 dispatch 变化。
3. Case3 精确 reference PASS 后，空载配对初筛 7/7 获胜，中位约 `-0.75%`。
4. 从最终 archived submission 重跑三 Case正确性、OJ、官方 adapter、两组 Case3 AB/BA、三组 mcTracer、targeted/RoofLine mcProfiler、同步 mx-smi、C++、ISA 与资源报告。
5. targeted mcProfiler 的 wave/aggregate 字段在 v030 多批 replay 中不一致，已明确 quarantine；阶段时延以 paired mcTracer 为权威，VL1/private/shared 等稳定字段保留为方向证据。

## 最小变更

```diff
-        use_step2_half_b_pingpong = num_experts == 32
+        use_step2_half_b_pingpong = True
```

该行位于 `hidden == 7168 and intermediate == 2048 and num_experts >= 32` 分支内，因此仅新增 Case3 的 64-expert 特化，不扩大到其他维度。

## 一句话结果

Case3 第二组独立 7 轮 AB/BA 为 7/7 获胜、配对中位 `-0.7388%`；mcTracer Step2 三组均下降、中位 `-2.2253%`；MMA 数和 234 MT/52 ST/32 KiB/2-wave/0-private 资源均不变，接受为新的 OJ 合规最优版本。

完整证据见 `../../restart-rep/v031_step2_case3_hybrid_half_b_sc-16g/v031_step2_case3_hybrid_half_b_sc-16g_report.md`。
