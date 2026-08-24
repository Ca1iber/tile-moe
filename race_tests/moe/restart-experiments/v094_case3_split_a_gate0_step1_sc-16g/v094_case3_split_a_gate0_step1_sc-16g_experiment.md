# v094 experiment

## Change

- Parent：v093，commit `00b68d8494ba8b4111231cc6c92819d36e7da7e1`。
- 仅官方 Case3 的 non-native Step1 odd/next-even producer 改为：`A-low -> G0 -> A-high -> G1 -> U0 -> U1`。
- Case1 保持 v093 的 full-A-first；Case2 保持 v091 的 consumer-native A-first。
- 同步 TileLang-only；无 async copy、foreign code、hack、结果缓存或 harness 修改。

## Result

- Case3 clean AB/BA：7 rounds, warmup 100, repeat 100，paired median `-1.597355%`，pstdev `0.070910%`，7/7 同向。
- Case1：paired median `+0.126329%`；Case2：`-0.103180%`，均为 generated-identical 噪声。
- 三 Case 完整 padded output：PASS，`rtol=atol=1e-2`。
- Source + 3 generated-device OJ gate：PASS。
- mcTracer 修正三-kernel 身份后：Case3 Step1 paired median `-2.985075%`，GPU span `-2.012170%`；Step2 `-0.155415%`。
- Case3 Step1：`228 -> 226 MT`，仍 2 waves/PEU，0 private/stack；静态指令 `3076 -> 3250`，但动态 Step1 明确改善。

## Decision

超过 1.2% 本地候选门槛，保存精确 OJ source。完整外部 OJ 三例向量缺失，因此不进入 `restart-submission`。
