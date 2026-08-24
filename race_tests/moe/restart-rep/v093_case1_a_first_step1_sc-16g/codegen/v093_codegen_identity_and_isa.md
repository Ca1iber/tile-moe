# v093 codegen and ISA identity

- Case1 generated SHA: v092 `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7`; v093 `cce8acc279ea734193c956934453d8558d81cf28e92ffcd22da5b13a1f51511b`.
- Case2 generated SHA: v092 = v093 = `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`.
- Case3 generated SHA: v092 = v093 = `9e4c82be7ef461356c775eb72deac50c49400223b1974f0d705aff72241bab59`.
- Case1 Step1 resources: `224 -> 228 MT`, `42 ST` unchanged, `2 waves/PEU` unchanged, zero stack/private bytes.
- Case1 Step1 ISA: instructions `3063 -> 3060`, `snop 363 -> 360`; unchanged `ldg_b128=28`, `lds_b128=64`, `sts_b128=16`, `stg_b64=16`, `mma_16x16x16f16=256`, `barrier=4`, `arrive=91`.
- OJ source and three generated sources validate; async-copy and foreign markers are absent.

Conclusion: only Case1 materializes new code; the gain is consistent with issue order/overlap rather than reduced static work.
