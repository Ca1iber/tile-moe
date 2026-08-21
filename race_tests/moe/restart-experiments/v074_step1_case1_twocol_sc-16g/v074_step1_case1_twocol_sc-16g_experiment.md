# v074 Case1 Step1 two-column-warp A reuse（sc-16g）

## Observed evidence

v59 Case1 Step1 `BM128×BN128/4 waves` 每两个相邻N tile分别读取同一A tile。此前沿M合并长expert能减少重复权重读，但大CTA/fragment成本覆盖收益；沿N合并以A复用为目标，机制不同，尚未被现有报告单独验证。

## Hypothesis

把两个BN128 CTA合为一个`BM128×BN256/512 threads/8 waves` CTA，以两个column-warp组共享A：CTA数减半，总waves、Gate/Up权重字节、MMA与输出元素不变，A读取理论减半。若64 KiB weight shared和8-wave协调成本可控，Case1 Step1可能改善。

## Mechanism

- Case1 `block_dexpert_step1: 128→256`，Step1 threads `256→512`。
- `block_col_warps:1→2`，每个column group仍计算128列；row warps仍4。
- Step1 grid N维 `64→32`；Step2与Case2/3不变。
- 不使用async、foreign call、source injection，不改变数学/workspace/benchmark。

## Predictions and falsification

- 先看codegen：必须形成Step1 grid32×24、512 threads、无private/async；若寄存器256或shared资源异常，早停。
- full-padding correctness必须PASS。
- 3轮AB/BA相对v59至少改善1.2%才晋级，否则归档拒绝。
