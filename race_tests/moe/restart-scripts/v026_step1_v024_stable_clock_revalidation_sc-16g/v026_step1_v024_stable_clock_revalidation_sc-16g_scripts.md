# v026_step1_v024_stable_clock_revalidation_sc-16g 脚本说明

## 实际使用脚本

- `run_compile_order_balanced_oj.py`：本版核心。构造 parent-first/candidate-second/candidate-first/parent-second 四实例；用四顺序 Latin rotation 预热和测量；用两个正反比值的几何平均抵消 compile-slot 偏差。
- 新增参数 `--precondition-cycles` 与 `--precondition-repeat`，解决 TileLang 编译空窗后 XCORE 从 idle 428 MHz 拉升到 active 1125 MHz 的 DVFS 偏差。
- 其余初始化模板未作为本版证据运行，因为本版不改变 Kernel 机制，只审计 benchmark 方法。

## 实验参数

- v023 vs v024：rounds 8，warmup 20，repeat 80，precondition 3×30。
- v019 vs v024 rep1：rounds 8，warmup 20，repeat 80，precondition 3×30。
- v019 vs v024 rep2：独立进程 rounds 4；用于检查 partner-source/JIT 共驻敏感性。
- 所有四实例输出均做 `torch.assert_close(rtol=1e-2, atol=1e-2)`。

## 产物核对

- [x] v019/v023/v024 源码快照和 SHA-256
- [x] 三组 balanced JSON 与完整 stdout log
- [x] 方法学结论写入 experiment/report
- [x] 未运行的 profiler/roofline 明确标记 unavailable，不伪造图表
