# v157_case3_unified_exact_step1_sharedraw_sc-16g 实验记录

## 身份

- 状态：local candidate；外部 OJ 待验证，绝不标记 accepted。
- 机器：MetaX C500 `sc-16g`，sGPU id 3，25% compute，16 GiB。
- Git 起点：`dorm` / `46736908ef8a845c7ed28d934888d5f01f5c6ead`。
- 父版本：`v154_case3_unified_m192_sharedreuse_sc-16g`。
- 父源码 SHA-256：`c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`。
- 当前外部 OJ SOTA：`v148_allcase_silu_degree9_clamp55_sc-16g`，submission SHA-256 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`，显示分 `[83,82,82]`，aggregate `82.33`。
- Candidate SHA-256：`fc627e4e54e74bcd892bfe62c1f5c3ed3d47ed68df23c20fbd80917717924eff`。

## 假设卡

- Observed evidence：v154 Case3 的 short Step1 M128xN128 与 long Step1 M192xN64 分属两个 launch，mcTracer 合计约 `4.301568 ms`，占主链约 61%。v154 对 Step2 做同类 mixed-slot 合并曾取得 1.98% 端到端收益。
- Verified bottleneck：Case3 Step1 为最大阶段；3-wave、6-wave、延后 A、K128、宽 CTA 等几何改动已有强反例。
- Current hypothesis：保持 short/long 两条热循环和 CTA 数不变，只合并为一个 mixed-slot grid，可降低 dispatch/调度成本并改善同 expert 邻接性。
- Proposed mechanism：单个 `16x96`、256-thread Step1 grid；前 32 个 y-slot 执行原 short M128xN128，后 64 个 y-slot 将每个 long expert 的相邻两 slot 映射到两个 N64 half。
- Predicted metric changes：少一个主要 kernel；资源不越过 226 MT/thread、32 KiB、2 waves/PEU；正式 Case3 至少改善 1.2%。
- Falsifier：编译/合规/正确性失败、资源膨胀、任一官方 case 回退，或正式 paired 改善低于 1.2%。
- Correctness/resource risk：TileLang 可能把两分支 shared allocation 相加；mixed grid 也可能破坏原 short-then-long 调度。

完整的预写假设卡保存在 `v157_case3_unified_exact_step1_sharedraw_sc-16g_hypothesis.md`。

## 实施经过

1. 第一表达把两个原样 body 放进运行期分支，但各自保留 shared allocation。它正确且资源寄存器档不变，编译器却将 shared 相加到 48 KiB，统一 Step1 变成 `7.391104 ms`，端到端回退 `+44.23%`。
2. `T.match_buffer` 分支别名先遇到 scope mismatch，补成 `shared.dyn` 后又被 `PlanAndUpdateBufferAllocationLocation` 拒绝；未进入性能测试。
3. 最终表达为一块显式 `256x64` FP16 raw shared buffer（32 KiB）。Gate 位于行 `0:`，Up 位于行 `128:`；两条 body 通过固定 row offset 直接访问同一 buffer，不依赖别名。Case1/2 继续调用原 long macro，代码路径未改。
4. CTA、wave、MMA 数学工作、输入/输出 workspace、权重字节、同步点、Step2 均保持不变。

- Source snapshot：`v157_case3_unified_exact_step1_sharedraw_sc-16g_custom_fusedmoe.py`
- Candidate staging：`candidate_submission.py`
- Patch：`v157_case3_unified_exact_step1_sharedraw_sc-16g.patch`
- Candidate SHA-256：见 `candidate_submission.sha256`。
- 无 async copy、foreign source、直接 MXMACA builtin、预计算结果缓存或跨调用缓存内容。

## 结果

- OJ source validator：PASS。
- 三个官方 case 全有效行正确性：PASS，`rtol=atol=1e-2`。
- Case3 正式 5x20 AB/BA：均值 `-1.86799%`，中位 `-1.86911%`，pstdev `0.03618 pp`；五轮全部越过 -1.8%。
- Case1/2 独立 1x10：`-0.3807%` / `-0.3915%`，均为无回退的噪声级侧检。
- 结论：本地过 1.2% 门槛的 candidate，外部 OJ 待验证；不得创建 `restart-submission/v157...`，也不得声称 external-OJ SOTA。
- 证据报告：`../../restart-rep/v157_case3_unified_exact_step1_sharedraw_sc-16g/v157_case3_unified_exact_step1_sharedraw_sc-16g_report.md`
