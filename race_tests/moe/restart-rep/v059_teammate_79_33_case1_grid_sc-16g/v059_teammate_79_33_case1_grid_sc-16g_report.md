# v059_teammate_79_33_case1_grid_sc-16g 证据报告

## Verdict

- 运行类型：verdict（本地 sc-16g）
- 结论：inconclusive for OJ promotion；local winner over v058
- 一句话因果结论：Case1 Step2 的 expert-grouped CTA 顺序在不改变 grid/waves 的情况下将 Step2 降低约 7.7%，端到端再提升 3.4%；缺外部 OJ 数值，不能晋升全局 SOTA。

## Identity

- Branch：`exp/moe-teammate-79-audit`
- Git parent：v058 commit `30a7dec5`；原始分支基点为 dorm/v027 `0d02ed217409347548c9298d14fc9b19b0844e11`
- Candidate SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- Compared teammate source v058 SHA-256：`d728a71570e3d67afdf21588783a5e29f1042d8eba644d41ee55d0389cd4b462`
- Incumbent v027 SHA-256：`04132c0de7e1e0164883a07dbd57e009f71ab4da94a98533214124c55b8a08a8`
- Import validation：PASS；external OJ per-case values unavailable；未创建 `restart-submission`。

## Correctness

- 独立 FP32 reference，official Case1/2/3，`rtol=atol=1e-2`：全部 PASS。
- 三个 case `max_abs=0.001953125`，`padding_max=0.0`。

## Benchmark

- v027 vs v059，warmup=5/repeat=30/rounds=5：
  - Case1 `3.195076 -> 2.780843 ms`，`1.14896x`。
  - Case2 `5.086660 -> 4.738372 ms`，`1.07350x`。
  - Case3 `10.972723 -> 9.263301 ms`，`1.18454x`。
- v058 vs v059 Case1，rounds=7：`2.875733 -> 2.780826 ms`，`1.03413x`；7 轮样本稳定。

## Profile

- v058 vs v059 Case1 paired mcTracer：Step1 median change `-0.16%`；Step2 median change `-7.71%`，准确命中新机制影响的阶段。
- grid 均保持 Step1 `(64,24,1)`、Step2 `(8,24,1)`；waves 不变。
- Step2 registers/thread `236 -> 212`，Step1 保持 222。
- mcProfiler achieved/dispatched waves 完全匹配；AP active cycles `-1.30%`，Global Memory Read bytes `-2.67%`，L2 hit rate `+0.95pp`，Total Cycles `-1.19%`。计数器覆盖两次 launch，只作辅助诊断。

## Code generation and policy gate

- Case1/2/3 生成 device C++ 的 `memcpy_async_sites=0`、异步 barrier=0。
- 最终 xcore1000 ISA 已编译；对 C++/ISA 的 async/foreign marker 扫描命中 0。
- Case2/3 的 source bytes/resources 与 v058 一致；Case1 Step2 因 CTA mapping 变更，registers/thread 降至 212。

## Causal interpretation

- 79.33 的唯一有效 official-shape delta 是 Case1 Step2 grouped grid；paired timing 与 stage trace 同时支持它。
- 源文件头部提到旧 S13 OJ Wrong Answer，但当前 exact v059 在本地三个独立参考形状均 PASS；这不能替代真实 OJ 隐藏样例。
- 因此候选是本地最佳参考代码，但状态仍为 `inconclusive`，提交类型保持 `exp(moe)`。
