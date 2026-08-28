# v154_case3_unified_m192_sharedreuse_sc-16g 实验记录

## 身份

- 状态：inconclusive（本地候选，外部 OJ 待确认）
- 机器：MetaX C500 sc-16g，25% compute，16 GiB quota
- 基线版本：外部 OJ SOTA v148
- 父版本：v153_case2_unified_m192_sharedreuse_sc-16g，commit `858ecaf497f58aeaca10aca021cf38635ccb6a6e`
- 当前 OJ SOTA：v148 / `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840` / display `[83,82,82]`
- Kernel：`v154_case3_unified_m192_sharedreuse_sc-16g_custom_fusedmoe.py`
- SHA-256：`c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`

## 假设

详见 `hypothesis.md`。核心是假设 Case3 不需要把短/长 expert 拆成两个 Step2 launch；96 个物理 M slots 本身足以编码 32 个 M128 短任务和 32×2 个 M192/N128 长任务。

## 实施经过

- 保留 Case1、Case2 与 Step1 的所有行为。
- exact official Case3 下关闭 `use_step2_dynamic_m192n128`。
- 统一 Step2 grid 为 `28 x 96`、256 threads；短 slot 使用 M128xN256，长 expert 的两个 slot 使用 M192xN128 并计算互补的输出列半块。
- 两条分支共用一个 256x64 FP16 Down shared buffer（32 KiB）。
- 未使用 async copy、代码注入、MXMACA compiler builtin、跨调用缓存或计时外预处理。
- 独立 patch 未预先保存，完整父/候选 SHA 已写入 `UNAVAILABLE.md`。

## 结果

- OJ 静态源码校验：PASS。
- 三个 case 全有效行正确性：PASS，`rtol=1e-2, atol=1e-2`。
- Case3 exact-source 5x20：平均 `-1.9783%`，中位数 `-1.9948%`，标准差 `0.0438` 个百分点。
- Case1 `-0.1114%`、Case2 `+0.1048%`，均为噪声区间。
- mcTracer：父版两个 Step2 合计 `2.402048 ms`；候选统一 Step2 `2.254464 ms`，下降 `6.14%`。整次 kernel 中位数和 `7.038720 -> 6.861824 ms`。
- mcProfiler：HBM read `+0.86%`，但 VL1 partition stalls `-19.86%`、AP active cycles `-4.21%`、平均 wave lifetime `-1.30%`，说明收益来自统一调度和更少的局部访存阻塞，而非少读权重。
- 结论：保留为本地候选；外部 OJ 未确认，不创建或修改 `restart-submission`。
