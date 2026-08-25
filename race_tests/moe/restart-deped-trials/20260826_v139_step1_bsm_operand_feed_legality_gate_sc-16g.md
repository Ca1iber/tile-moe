# 2026-08-26 v139 Step1 BSM operand-feed 合法性门禁

## 结论

拒绝，不生成候选源码，不移动 v110 SOTA。`__builtin_mxc_ldg_b128_bsm` 不是比 `ldmatrix_b` 更低层的同步矩阵载入；SDK 把它明确封装为 global → shared/BSM 的异步 copy，并要求后续 wait。

## 关键证据

- SDK：builtin 位于 `maca_cp_async_zfill<16>`，上方注释为 `copy from global memory to shared memory`、`cooperate with maca_cp_async_wait`。
- TileLang：公开相关入口只有 `T.maca_async_copy(..., barrier=...)`，文档明确写 `emits memcpy_async`，并要求 `T.maca_barrier_arrive_and_wait()`。
- 在 `src/`、`tilelang/`、`include/` 中直接搜索 builtin 名称，命中数为 0。
- v110 的 `ldmatrix_b` 是 shared → local fragment，最终 ISA 已为 `lds_b128`；随后 MFMA 使用寄存器操作数。它与 global → shared 的 BSM copy 不在同一条边上。

## 为什么没有跑性能

要生成可执行代码，只能使用被当前约束禁止的异步拷贝，或绕过公开 TileLang API 注入/直调 SDK builtin。两者都不是可晋级 OJ 候选，因此在静态门禁处停止，避免制造无效 timing 和冗余 submission。

## 关闭范围

关闭“用 `__builtin_mxc_ldg_b128_bsm` 替换 v110 `ldmatrix_b`”这一具体方向。并不关闭 Step1 operand-feed 优化本身。只有后端公开同步 BSM → register 或 direct-BSM → MFMA 的合规 primitive，并且生成代码真正替换 `lds_b128`，才值得重开。

## 证据位置

- 假设与静态结论：`restart-experiments/v139_step1_bsm_operand_feed_legality_gate_sc-16g/`
- 报告、manifest、源码哈希与摘录：`restart-rep/v139_step1_bsm_operand_feed_legality_gate_sc-16g/`
- 复现命令：`restart-scripts/v139_step1_bsm_operand_feed_legality_gate_sc-16g/`
- Roofline 跳过原因：`moe-roofline/v139_step1_bsm_operand_feed_legality_gate_sc-16g/`
- SOTA：仍为 `restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py`
