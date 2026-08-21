# v073 Case1 original 4-wave Step1 rolling-A 报告（sc-16g）

## Verdict

`rejected`。把 rolling-A 直接用于 v59 原始4-wave单Step1仍稳定回退 `+2.560%`，不推进 submission。

## Mechanism

grid、CTA、权重流量和kernel数量保持v59；Case1只把双A半行交错分支换成guarded same-stripe rolling-A。Case2/3与Step2不变；full-padding correctness、source/generated-code合规均PASS。

## Codegen and benchmark

- Step1：`238 MT / 32 ST registers`，相对v59 `222/52`；static max仍2 waves/PEU。
- Step2：`212/52`，不变。
- 3轮AB/BA：`+2.485% / +2.560% / +2.599%`；中位 `+2.560%`，stddev `0.047%`。

## Conclusion

rolling stripe减少了ST状态，却拉长MT地址/谓词live range并破坏v59的 `Gate0→input0→Gate1→Up0→input1→Up1` ready-work交错。v59原双A调度仍更快；关闭该替代路线。
