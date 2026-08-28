# v148 后续三条路径关闭记录（sc-16g）

日期：2026-08-28

基线：`restart-submission/v148_allcase_silu_degree9_clamp55_sc-16g/submission.py`

结论：以下三条路径均不满足相对直接父版本至少 1.2% 的晋级门槛，不编号、不生成 submission、不推进 `dorm`。

## 1. 分段五阶 SiLU

- 方案：以 `|x|=3.625` 分段，在 `[-5.5, 5.5]` 内使用两段五阶多项式替代 v148 的九阶 SiLU。
- 正确性：Case1 八组压力输入均确定性通过 OJ 容差，OJ mismatch 为 0，最大绝对误差 0.0419921875。
- AB/BA：3 轮、warmup 3、repeat 30；相对 v148 分别回退 0.4873%、0.5162%、0.6663%，中位回退 0.5162%。
- 判断：静态算术减少没有转化为运行时间收益，关闭该分段五阶族。

## 2. `up_logits` 仅 block 间距 padding

- 方案：Case2/3 consumer-native `up_logits` 每个 M block 末尾增加 128 个 FP16 槽位，打破原来恰好 512 KiB 的 block stride；不改变 K-plane 内布局。
- 生成代码：新 block stride 为 262272 FP16，即 524544 bytes；仍保持向量化读写。prepack/Step1/Step2 资源分别为 78/11/6、226/42/2、220/52/2（MT/ST/warps），与父版本等价。
- 正确性：Case2 有效行严格检查通过。
- AB/BA：3 轮、warmup 10、repeat 20；相对 v148 回退 0.0287%、0.0245%、0.0636%，中位回退 0.0287%。
- 额外问题：展平索引使 TileLang 静态检查器重新给出 `up_logits` 写竞争警告。
- 判断：结果完全处于噪声区且略回退，关闭 block-only pitch padding。

## 3. 计时内 Gate/Up FP8 预处理

- 方案：每次 `run_kernel` 内先用 TileLang Kernel 将完整 Gate/Up 从 FP16 缩放并转换成 FP8；输入预打包也输出 FP8；Step1 直接消费 FP8，所有预处理成本均计入正式时间，不跨调用复用预处理内容。
- 合规：OJ 源码校验通过；仅使用 TileLang primitives，无异步拷贝、源码注入、外部调用或 MXMACA 内建函数。
- 生成代码：共四个 Kernel（权重预处理、输入预打包、Step1、Step2）。Step1 使用 4 个 `16x16x32f8` MMA site，较 FP16 路径的 Gate/Up MMA 数减半；资源为 232 MT、52 ST、2 warps，无私有内存 spill。预处理 Kernel 为 24 MT/24 ST，输入预打包为 70 MT/22 ST，Step2 为 202 MT/52 ST。
- 正确性：Case1 随机全量 OJ 容差下，v148 mismatch 0；候选 mismatch 32854/6291456（0.5222%），最大绝对误差 0.154296875。
- 包含全部预处理成本的初筛：v148 2.222592 ms，候选 23.760128 ms，回退 969.03%。
- 判断：FP8 热计算的 MMA/资源收益确实存在，但一次性转换并写回两整套权重的固定成本大一个数量级，且精度不满足现有随机压力门槛。关闭全量 FP8 权重预处理路径。

## 对后续的约束性线索

1. 在“每次调用都重新预处理并计时”的规则下，任何全量 FP16 权重转置、重排、复制或压缩都极难回本；已有 FP16 完整 materialization 和本次 FP8 materialization 形成一致证据。
2. 后续预处理若要有机会，只能处理远小于完整权重的数据量，例如路由元数据、CTA 映射，或能证明只触达很小权重子集的稀疏方案。
3. FP8 MMA 本身有计算侧收益，但当前精度和预处理经济性同时不成立；不要再用不同 full-weight tile 参数重复扫同一族。
4. 保留 v148 为当前 owner-approved SOTA。

