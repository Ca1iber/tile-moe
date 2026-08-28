# v188 Case1 Step2 N64 occupancy probe

## 身份

- Parent: exact v166 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Candidate: v188 `54e6b0c59f3253a32cd27490cb339230c648e0bbb8ae10fb78fe25f521697682`
- Dorm start: `04a8b355`
- Scope: 仅 official Case1 Step2；Case2/3 保持 exact v166

## 假设与改动

将 Case1 `block_dhidden_step2` 从 128 降到 64，使 CTA 输出从 M128×N256 变成 M128×N128。目标是用更小的 accumulator 与 shared Down tile 降低资源占用，以更多驻留 workgroup 隐藏 VLS/MFMA 延迟。代价是输出列 CTA 从 8×24 翻倍到 16×24，并重复读取 Up-logits 与元数据。

## 门禁与代码生成

- OJ AST/结构校验：PASS
- 严格全输出正确性：PASS（rtol=1e-2、atol=1e-2）
- Case1 Step2：202 → 130 MT registers
- ST registers：52
- 静态最大驻留 workgroup 指标：2 → 3
- 未发现 private spill
- 生成源码：57,569 B；12 个 MMA sites；0 async-copy sites

## direct-v166 Case1 配对筛选

协议：1 round、warmup=3、repeat=20、AB/BA runner。

- Parent: `1.9841279984 ms`
- Candidate: `2.1518207550 ms`
- Candidate 相对 parent：`+8.4517106%`（回退）

## 结论

资源下降与驻留能力提升是真实的，但不能抵消 CTA 翻倍以及 Up-logits/元数据重复读取。该结果把 Case1 Step2 的优化边界进一步明确为：不能通过简单缩小 N tile 换占用率；必须保留当前每次 Up-logits 读取对 256 个输出列的复用。v188 低于 1.2% 晋级门槛，拒绝，不移动 dorm、不生成 submission、不与其他亚门槛改动叠加。

