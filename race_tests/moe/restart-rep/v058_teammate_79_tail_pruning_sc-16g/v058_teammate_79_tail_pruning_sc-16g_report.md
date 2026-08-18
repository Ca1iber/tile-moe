# v058_teammate_79_tail_pruning_sc-16g 证据报告

## Verdict

- 运行类型：verdict（本地 sc-16g）
- 结论：inconclusive for OJ promotion；local accepted candidate
- 一句话因果结论：按 `actual_rows` 以 32-row MMA warp 粒度跳过尾部计算，并停止搬运无效输入行，使三个官方形状均稳定提速；没有外部 OJ 各 case 数值，不能晋升全局 SOTA。

## Identity

- Machine：MetaX C500 sc-16g，25% compute quota，16 GB VRAM slice
- Git branch / parent：`exp/moe-teammate-79-audit` / `0d02ed217409347548c9298d14fc9b19b0844e11` (`dorm` v027)
- Candidate：`restart-experiments/v058_teammate_79_tail_pruning_sc-16g/candidate_submission.py`
- Candidate SHA-256：`d728a71570e3d67afdf21588783a5e29f1042d8eba644d41ee55d0389cd4b462`
- Incumbent v027 SHA-256：`04132c0de7e1e0164883a07dbd57e009f71ab4da94a98533214124c55b8a08a8`
- Import validation：PASS；只含允许的 Torch/TileLang import
- External OJ incumbent / candidate per-case scores：unavailable；因此未创建 `restart-submission/v058.../`
- Runtime：Python 3.12.11；TileLang `0.1.9+cuda.git0d02ed21`；PyTorch `2.8.0+metax3.7.1.3`；KMD 3.8.30；MACA 3.7.1.5

## Correctness

- 独立 FP32 reference，official Case1/2/3，`rtol=atol=1e-2`：全部 PASS。
- 三个 case 的 `max_abs` 均为 `0.001953125`，`padding_max=0.0`。
- 原始日志：`correctness/official3_reference_validation.log`；源码门禁：`correctness/oj_source_validation.txt`。

## Benchmark

- 协议：v027/v058 AB/BA paired，warmup=5，repeat=30，rounds=5，官方三形状固定分布。
- Case1：v027 `3.193225 ms`，v058 `2.876373 ms`，speedup `1.11016x`。
- Case2：v027 `5.098112 ms`，v058 `4.735207 ms`，speedup `1.07664x`。
- Case3：v027 `10.973474 ms`，v058 `9.262054 ms`，speedup `1.18478x`。
- 每轮样本见 `benchmark/paired_official3.json`，收益远超样本抖动。

## Profile

- mcTracer Case1：Step1 median `2.055680 -> 1.743360 ms`（paired median `-15.07%`）；Step2 `-0.07%`，说明 Case1 收益来自 Step1 pruning。
- mcTracer Case2：Step1 paired median `-6.17%`；Step2 `-8.82%`。
- mcTracer Case3：Step1 paired median `-18.63%`；Step2 `-9.87%`。
- launch gap 没有系统性改善；优化来自 kernel 内部。
- Case3 mcProfiler achieved/dispatched waves 完全匹配；AP active cycles `-9.98%`，Memory Instructions `-9.49%`，L2C Read Instructions `-11.91%`。Global Memory Read bytes `+1.54%` 与 L2 hit rate `-5.05pp` 表明收益主要是少执行 MMA/内存指令，而非简单减少所有 HBM traffic。
- mcProfiler replay 的 Total Cycles 与 paired timing 方向冲突，按协议只作诊断，不覆盖 paired benchmark/mcTracer 结论。

## Lowering and code generation

- Case1/2/3 均重新生成 device C++、编译最终 xcore1000 ISA，并归档资源使用。
- 生成代码三个 case 均 `memcpy_async_sites=0`、`barrier_wait_sites=0`；对 C++/ISA 的禁用 marker 扫描命中 0。
- Case1 registers/thread：Step1 `222`，Step2 `236`；Case2/3：Step1 `216`，Step2 `230`；`staticMaxWarps/PEU=2`。

## Causal interpretation

- 固定分布中每个 expert 的 100/184 行被 padding 到 128/256，原始行利用率为 73.96%。
- 32-row warp 粒度 pruning 将执行覆盖近似变为 128/192，理论 row-work 降低 16.67%，有效覆盖利用率升至 88.75%。
- 实测阶段收益随 Case3 的长尾/规模放大最明显，符合假设；Case1 未启用 Step2 pruning，所以 Step2 持平也符合实现。
- 本地结论可靠，但没有外部 OJ 数值，状态必须保持 `inconclusive`，不能标记 `opt(moe)` 或创建晋升 submission。
