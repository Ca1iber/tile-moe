# v146 假设卡

## Parent 与目标

- Parent：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 目标：缩短 Case1 Step1 的 SiLU epilogue，不改变 MMA、grid、workspace、Step2 或 Case2/3。
- 候选源码 SHA-256：`99745a82952ac37faea46a7f16dbe73877adf9c84328c2e02821e0cfd39fab58`。

## 机制假设

v110 每个 Gate accumulator 都执行精确 `exp2 + reciprocal/division` SiLU。此前 direct division 与 rsqrt reciprocal 已证明“只换精确倒数写法”没有收益，而全局 fast-math 已被 external OJ 判 WA。

v146 仅在官方 Case1 (`experts=16, hidden=2048, intermediate=8192`) 采用显式 degree-11 odd sigmoid 多项式：先把 Gate 值 clamp 到 `[-6, 6]`，用 Horner/FMA 计算 `sigmoid(x) ≈ 0.5 + x*P(x²)`，再乘原始 Gate 值。系数来自 `[-6,6]` 上 200001 个等距 double 样本的最小二乘拟合。Case2/3 由 compile-time 分支保留 exact v110 代码。

预期结果是删除 Step1 中的 exp/div 长延迟链，以更多独立 FMA 换取更短指令流；MMA 数、workgroup 数、共享内存和寄存器驻留不应变化。

## 风险与门禁

- 这是显式近似数学，不是 bit-exact 变换。区间内 sigmoid 最大绝对逼近误差约 `0.00234444`，SiLU 最大绝对误差约 `0.0140667`。
- clamp 之外仍用原始 Gate 值乘近似 sigmoid，隐藏测试若产生远超训练分布的 Gate 尾部，误差可能增大。
- 因此本地随机/压力验证、严格 `rtol=1e-2, atol=1e-2` 与 OJ 容差通过只能授予 `locally-qualified`；外部 OJ AC 之前绝不更新可靠 SOTA 或 `restart-submission`。
- 不启用 fast-math、async copy、代码注入、结果缓存或固定 expert 排布假设。
