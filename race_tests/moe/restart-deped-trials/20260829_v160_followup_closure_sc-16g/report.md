# 20260829 v160 follow-up closure (sc-16g)

本目录归档三个未进入线性候选的原子方向；都以正确性优先、1.2% 独立门槛筛选，禁止叠加亚门槛结果。

## v158: Case1 Step1 M128N64

- SHA-256：`29780d072cca25fe1e5f21d96f6846043cd37686004f87e0001f92dc620adf32`。
- 改动：Case1 `block_dexpert_step1=64`，试图增加 N 方向并行度。
- 正确性/codegen：PASS；Step1 `130 MT / 42 ST / 3 waves`、16 KiB shared。
- 结果：1x20 `+23.3217%` 回退。
- 根因：CTA/waves 从 `1536/6144` 翻倍为 `3072/12288`，额外调度与重复 operand 请求远大于并行度收益。关闭单纯缩 N tile 家族。

## v161: Case1 unified long Step2 M192

- SHA-256：`154efcb9048727329dfaf2de553022a3e09ebb18e102c26a4d33d943610e862e`。
- 改动：Case1 long expert 启用统一 M192 Step2。
- 正确性：PASS。
- 结果：1x20 `+0.3532%` 回退。
- 根因：serial K64 loop 破坏父版本跨 K128 half-interleaved pipeline；流量/MMA 下降不足以抵消依赖链。

## v162: paired-K64 shared Step2

- SHA-256：`751a695cf860a735f0447caab9248156a31646065b4de441c25bda0b817131a7`。
- 改动：两个 A fragments，复用 `down_shared` 两个 128-row half，按 even/odd K64 一次 barrier 后做两次 MMA。
- 正确性/codegen：PASS；Step2 `218 MT / 52 ST / 2 waves`，MMA sites 14，sync sites 17，async 0。
- 正式 Case1 5x50：mean `-0.85916%`、median `-0.82675%`、stdev `0.14966 pp`。
- Verdict：低于 1.2% floor，不叠加、不建立候选版本。该结果说明普通 K-pair shared feed 只有亚门槛收益。

## Reusable conclusion

下一步若继续权重/operand 布局，必须同时满足：不增加 global bytes、不增加 CTA/waves、保留 CTA 级 B shared 复用，并用独立正式 AB/BA 证明至少 1.2%。优先测试 tile-local shared swizzle/padding，而非全量 global prepack。

