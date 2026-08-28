# v187 Case1 Step2 双 K operand 试验

## 身份

- Parent: exact v166 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Candidate: v187 `949250e06ddd20236a3e3063e0d2978672ba746b64ca4d15c8bfc42cedc2699d`
- Dorm start: `c7b9a630`
- Scope: 仅 Case1 Step2；Case2/3 保持 exact v166

## 假设与改动

v166 的 Case1 Step2 对每个已进入 shared memory 的 Down K64 panel，复用一个 B 局部 fragment，执行顺序为：

`LDS K0 -> MMA K0 -> LDS K1 -> MMA K1`

v187 增加第二个 B fragment，改为：

`LDS K0 -> LDS K1 -> MMA K0 -> MMA K1`

目标是解除单 fragment 的覆盖依赖，让两个连续 K32 的 LDS 更容易与 MFMA 重叠。没有改变 grid、wave、全局/共享内存字节数、barrier、MFMA 数量或算术结果。

## 门禁结果

- OJ AST/结构校验：PASS
- 严格全输出正确性：PASS
- 私有内存/spill：未发现
- Case1 Step2 资源：210 MT registers、52 ST registers、32 KiB shared memory、静态 2 waves
- 对照 v166 Step2：202 MT registers、32 KiB shared memory、静态 2 waves
- 生成源码 SHA256：`c199a5245fd6a207bf21350e96d9688c1a4c2c9983d9768b484d6eb389e8af94`

## 配对筛选

1×20 direct-v166 Case1 配对筛选：

- Parent: `1.9850112915 ms`
- Candidate: `1.9979776382 ms`
- Candidate 相对 parent：`+0.6532127%`（回退）

## 结论

双 K fragment 确实保留到了代码生成阶段，但把 Step2 寄存器从 202 提高到 210，静态占用没有改善，最终端到端回退约 0.65%。该方向未达到 1.2% 晋级门槛，拒绝；不移动 dorm，不生成 restart-submission，也不与其他亚门槛改动叠加。

