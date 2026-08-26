# v143 外部 OJ WA 与后续失败方向归档（SC-16G）

日期：2026-08-26

唯一可靠父版本：`v110_case1_unpredicated_native_up_logits_sc-16g`

父源码 SHA256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`

## 最终裁决

`v143_step2_long_isoarea_valid_silu_sc-16g` 已被外部 OJ 判为 **WA**，因此正式撤销候选资格。`restart-submission` 与 SOTA ledger 继续保持 v110；当前合格累计收益重新计为 `1.000000x`。本报告内所有探针均未达到“正确性通过且相对可靠直接父版本至少提升 1.2%”的晋级门槛，不编号、不创建 submission。

## 1. v143 WA 根因

v143 的 Case3 专用 Step2 长 expert 路径把官方本地测试分布误当成接口不变量，硬编码了：

- expert 0..31 均为 100 rows；
- expert 32..63 均为 184 rows；
- 长 expert ID 为 `32 + 2 * pid1`；
- 长 expert raw start 为 `32 * 100 + 184 * pid1`。

将相同 shape、相同 32×100 + 32×184 计数多重集改为交错 expert ID 后，可以稳定复现错误：`max_abs=3.89453125`、OJ 阈值 mismatch `36,755,076`。证据日志为 `/root/moe_runs/v143_permuted_counts_repro.log`。这证明 WA 来自 expert 排布硬编码，而不是随机数值误差。

完整根因报告见 `restart-deped-trials/20260826_v143_external_oj_wa_root_cause_sc-16g.md`。

## 2. 动态 metadata 修复不产生收益

探针 `/root/moe_runs/probe_v110_dynamic_long_map.py` 从运行时 metadata 推导 expert 与起始行，固定分布和交错分布均 bit exact。相对可靠 v110 的三 Case变化约为：

- Case1：回退 `0.7523%`；
- Case2：回退 `0.0617%`；
- Case3：回退 `0.0901%`。

因此 v143 的表面收益依赖非法静态排布假设；将映射改为普适版本后，收益完全消失。

## 3. v143 衍生 tile 探针

以下性能结果只能作为失败机制证据，不能作为可靠收益链，因为其开发父版本 v143 已经 WA：

- Case3 Step2 M192×N128 / 4-wave 连续映射：bit exact，回退约 `25.93%`。
- M192 幂二次语义重映射：bit exact，回退约 `24.19%`。说明 `/3`、`%3` 与地址算术不是失败根因。
- Case3 M128 顶部 + M64 底部双 emitter：bit exact，回退约 `4.46%`。把底部微 tile 均摊给四个 wave 不如原调度。
- runtime-safe long-tile 映射：长 expert 多数正确，但短 expert 出现周期性错误；2D 与 3D grid 均不能修复。该形状不能安全泛化到单 block expert。

## 4. 从 v110 重做的 SiLU / reciprocal 探针

- Padé 5/4：三 Case 正确，最大绝对误差不超过 `0.001953125`；收益约 `0.28% / 0.15% / 0.02%`。
- Padé 7/6：三 Case 正确，最大绝对误差不超过 `0.0009765625`；收益约 `0.25% / 0.10% / 0.00%`。
- fast-math reciprocal + 一次 Newton 修正：本地正确，但三 Case分别回退约 `1.590% / 0.197% / 0.386%`。
- 严格 tanh 恒等式：正确，但三 Case 均在约 `±0.12%` 噪声区。

结论：替换特殊函数或显式倒数修正没有形成 1.2% 级收益。

## 5. Case1 子门槛机制组合

为检验两个独立阶段的小收益能否叠加，从精确 v110 组合：

1. `v124 Step2 by-bound proof + v137 valid-row SiLU`
   - 全三 Case bit exact；
   - Case1 三轮变化 `-0.881% / -0.775% / -0.864%`，中位 `-0.864%`；
   - Case2/3 仅噪声；未过 1.2% 门槛。
2. 再加入 `v135 Step1 B-fragment group_cols=1`
   - Case1 正确，最大绝对差 `0.0009765625`，OJ mismatch 为 0；
   - Case1 三轮变化 `-0.358% / -0.368% / -0.656%`，中位 `-0.368%`；
   - B-fragment 重排干扰原调度，收益反而缩小。
3. `v133 Step1 unpredicated write + v137 valid-row SiLU`
   - 三 Case bit exact；
   - Case1 中位仅 `-0.624%`；两种控制简化存在重叠。

这些组合证明小收益不能简单相乘，均不编号。

## 6. ISA strength reduction 结论

v110/v143 后端汇编的幂二整数乘除已降低为 `shl/shr/and/shl_add`，没有可通过源码移位替换消除的热区整数 `div/rem/mod`。M192 的幂二次重映射仍大幅回退，也排除了“索引除法是主要瓶颈”的假设。

## 后续约束

1. 所有普通赛道新实验必须从 exact v110 或后续外部 OJ AC 的合格版本出发。
2. 不继承 v143 的 expert 排布假设，也不继承 v129/v144 的 fast-math 风险路径。
3. 未达到 1.2% 的探针只进入 `restart-deped-trials`，不创建正式版本、分支或 submission。
