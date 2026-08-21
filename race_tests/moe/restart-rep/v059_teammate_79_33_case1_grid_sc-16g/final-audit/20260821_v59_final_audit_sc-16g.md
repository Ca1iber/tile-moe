# v59 / 79.33 最终停止审计（sc-16g）

## Verdict

在无异步copy、无foreign source、OJ TileLang allowlist和用户`>=1.2%`晋级门槛下，本轮没有候选超过精确v59。恢复并保留v59为根`race_tests/moe/submission.py`；不创建新的`restart-submission`条目，不改写79.33的外部OJ归属。

## Identity

- 分支：`dorm`
- 审计前HEAD：`38d2c114`
- v59与最终根submission SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- 外部OJ分数：`79.33`（用户确认的既有结果；本轮未重新提交OJ）
- 机器：MetaX C500 `sc-16g`，25% compute，16,000 MiB quota
- 软件：MX-SMI 2.3.1、KMD 3.8.30、MACA 3.7.1.5

## Submission recovery

审计发现根`race_tests/moe/submission.py`原为SHA `491f9bf9...`的private-emitter开发基线，导入`tilelang.intrinsics.maca_mma_macro_generator.TensorCoreIntrinEmitter`，当前OJ validator明确拒绝。该文件来自历史commit `47466d9d`，没有未提交用户改动。

根submission现已恢复为精确v59，`cmp`字节一致，OJ source validator PASS。原版本仍由Git历史保留。

## Full padded correctness and A/A timing

脚本：`run_v59_fullcheck.py`；同一v59以两个module identity加载。所有case在输出预填7后，与独立PyTorch FP32 reference按`rtol=atol=1e-2`比较完整padding tensor，均PASS。

| Case | Parent median | Duplicate median | A/A median change | Protocol |
|---:|---:|---:|---:|---|
|1|2.780670 ms|2.779917 ms|-0.028%|5轮，warmup3，repeat100|
|2|4.733299 ms|4.735805 ms|+0.053%|3轮，warmup3，repeat100|
|3|9.253839 ms|9.254029 ms|+0.002%|3轮，warmup3，repeat100|

Case1 A/A change population stddev为`0.015%`；Case2/3分别约`0.077%/0.042%`。均远低于1.2%门槛。

## Mechanism-family audit

- 减少真实流量：沿M合并长expert、沿N合并双column CTA均真实改变复用，但被大CTA协调、fragment或64KiB shared成本覆盖。
- 改善有效重叠：single-A→rolling-A可使隔离长核缩短5.22%，但无法战胜v59双A交错；直接替换原4-wave Step1回退2.56%。
- 提高occupancy：BN64把Step1从222 registers/32KiB/2 waves-per-PEU降到150/16KiB/3，却因双倍A/CTA使Step1回退28.50%。
- Step2、Split-K、CTA重排、up_logits缓存/扩大复用、barrier/layout方向已有独立反例。
- Gate/Up单shared缓冲在当前同步语义下需把每K约2次同步扩为约4次，同时不降低222-register限制；没有证据支持继续造版本。

## Stop condition

至少三类独立可行机制已被低噪声测量否决，fresh v59基线/阶段/环境未漂移，当前OJ允许的同步TileLang边界下没有剩余的证据支持方向。最终保留v59；若未来获得合法async、subgroup/named barrier或正式BSM映射，再重新打开producer/consumer与片上融合路线。
