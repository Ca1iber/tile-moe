# v113 Case1 native workspace 无谓词写回试验

- 基线：v110 external-OJ-SOTA（源码 SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`）。
- 源码 SHA256：`556231dd5cade76d146003cbbf3c980ea38d62bc3f0a330188e6bc438717b780`。
- 改动：仅在官方 Case1 中移除 Step1 consumer-native `up_logits` 写回的 `actual_rows` 谓词；v110 的三处 Step2 无谓词读取保持不变。
- 正确性：Case1 PASS（所有有效行，`rtol=1e-2, atol=1e-2`）。
- Case1 三轮 AB/BA 短测变化：`+0.117% / -3.192% / -0.624%`，中位仅 `-0.624%`，未达到 1.2% 候选门槛且方差较大。
- 资源：Step1 226 MT / 42 ST、Step2 202 MT / 52 ST，均为 2 waves/PEU；没有资源改善。
- 静态检查：新增 `up_logits[...] is written by multiple threads` 数据竞争告警。虽然有效输出正确，但该写法降低可审计性。

结论：删除 padding 行写回谓词没有形成稳定收益，且引入静态竞争告警；不扩展到 Cases2/3，保持 v110 为正式 SOTA。
