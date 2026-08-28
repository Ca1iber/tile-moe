# v153_case2_unified_m192_sharedreuse_sc-16g 实验记录

## 身份

- 状态：inconclusive（本地越过 1.2%，外部 OJ 待验证）
- 机器：sc-16g
- 基线版本：`v148_allcase_silu_degree9_clamp55_sc-16g`
- 父版本：`v152_dynamic_step2_m192n128_sc-16g`
- 当前 OJ SOTA：`v148_allcase_silu_degree9_clamp55_sc-16g` / `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840` / `[0.836195, null, null]`
- Kernel：`v153_case2_unified_m192_sharedreuse_sc-16g_custom_fusedmoe.py` / `0f345d082b1e5bc761757110a9271ff905c4e02a866dd3b83a1726666d2b4a6a`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：long expert 的两个 M128 slot 重复读取 Down；拆分 kernel 的复用收益被 launch/grid 税抵消。
- Verified bottleneck / 已验证瓶颈：Case2 Step2 为 1.331328 ms，存在可消除的 long-expert Down 重读。
- Current hypothesis / 当前假设：单一 28x48 launch 内用两个物理 slot 覆盖同一 M192 的两个 N128 half。
- Proposed mechanism / 拟采用机制：short 保留 M128xN256，long 使用 M192xN128；两分支显式共用 32-KiB Down shared。
- Predicted metric changes / 预测指标变化：global read、VL1 stall、wave life 和 Step2 时间下降；Case1/3 不变。
- Falsifying result / 证伪条件：错误、48-KiB shared、正式改善不足 1.2% 或旁路 case 回退。
- Correctness and resource risks / 正确性与资源风险：N-half 写入必须互斥，尾行必须清零，branch buffer 不能累加。

## 实施经过

- 实际改动：精确 Case2 guard 下，让 long expert 的两个物理 M slot 分别计算互补 N128，并复用同一 M192 up_logits；把 Down shared 提到动态分支外显式共用。
- 相对计划的偏离：第一版复用两个 M128 fragment 丢失 K 重叠并回退 26.44%；第二版 M192 emitter 因 shared 累加到 48 KiB 回退 15.11%；依据 tracer 修正为显式 32-KiB shared reuse 后转为约 3.9% 改善。
- Source snapshot：`v153_case2_unified_m192_sharedreuse_sc-16g_custom_fusedmoe.py`
- Patch：由同目录 exact source 与父版本 SHA 可重建；未保存独立 patch 文件。
- Candidate submission：exact source SHA 为 `0f345d...b4a6a`；外部 OJ 门禁通过前不创建 `restart-submission/v153_case2_unified_m192_sharedreuse_sc-16g/`。

## 结果

- 结论：inconclusive；本地 Case2 正式中位改善 3.988%，Case1/3 为噪声，等待 exact-source 外部 OJ。
- 证据报告：`../../restart-rep/v153_case2_unified_m192_sharedreuse_sc-16g/v153_case2_unified_m192_sharedreuse_sc-16g_report.md`
