# v026_step1_v024_stable_clock_revalidation_sc-16g 实验记录

## 身份

- 状态：closed / inconclusive for v023→v024, accepted methodology correction
- 机器：sc-16g，C500 25% sGPU，16 GiB quota
- 父版本：v023，SHA-256 `b250a2ce37a29ac0434b3d34011642ffca10251126895d9fc69a9d07b9770c7d`
- 候选版本：v024，SHA-256 `8679b644dabbfa5db5438bb841b4e48b6facea3a54c851069caa99996ec4403e`
- 长期参照：v019，SHA-256 `35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0`

## 假设卡

- Observed evidence / 已观测证据：v025 的初始四实例结果在复验中从约 3.4% 收益收敛到 0%，且 `mx-smi` 显示 XCORE 会在编译空窗后从 428 MHz 拉升到 1125 MHz。
- Verified bottleneck / 已验证瓶颈：小于约 0.2% 的源码顺序差异会被 DVFS、编译顺序和同进程 JIT 模块共存效应覆盖。
- Current hypothesis / 当前假设：给四个实例做 Latin-order 对称预热和测量，可以消除 first/second compile slot 偏差，并判断 v024 是否真实优于 v023。
- Proposed mechanism / 拟采用机制：父先/子后、子先/父后共四实例；统一预热；四顺序 Latin rotation；用两个比值的几何平均作平衡差值。
- Predicted metric changes / 预测指标变化：若 v024 的中间 half-copy swap 有效，应在 8 轮中稳定优于 v023，且幅度显著超过 self-control 噪声。
- Falsifying result / 证伪条件：差值落入约 ±0.1% 或对 partner source / process composition 敏感。
- Correctness and resource risks / 正确性与资源风险：仅复验已通过正确性的快照，不修改主源码；主要风险是测量协议本身引入 JIT/code-placement 偏差。

## 实施经过

- 新增 `run_compile_order_balanced_oj.py`，加入 `--precondition-cycles` 与 `--precondition-repeat`，在测量前按相同 Latin order 对四槽位预热。
- v023 vs v024：8 轮平衡中位数 `-0.081%`，7/8 轮候选更快，判为噪声带内。
- v019 vs v024：同一四实例协议一次为 `-1.623%`（8/8），另一独立进程为 `-6.617%`（4/4）。同一 v024 绝对时间随共同编译的 partner source 从约 5.26 ms 变到 4.99 ms，暴露 JIT/code placement 或共驻模块效应。
- 因此 v020–v024 相对 v019 的累计方向仍有价值，但 v024 相对 v023 的独立增益未获证明。主源码暂不回退，因为二者性能等价且 v024 已是已验收 checkpoint。

## 结果

- 结论：`inconclusive`（v023→v024），但 benchmark 方法学修正被接受。
- 后续裁决协议：四实例平衡只作同窗口筛选；必须确认稳定 XCORE/MC；重要候选再做独立进程/不同共驻源码复验；小于 0.2% 不作接受依据。
- 证据报告：`../../restart-rep/v026_step1_v024_stable_clock_revalidation_sc-16g/v026_step1_v024_stable_clock_revalidation_sc-16g_report.md`
