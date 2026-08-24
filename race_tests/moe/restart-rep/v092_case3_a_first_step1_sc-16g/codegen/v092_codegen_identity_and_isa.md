# v092 codegen and ISA identity

- Case1 generated-device SHA: v091 = v092 = `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7`.
- Case2 generated-device SHA: v091 = v092 = `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`.
- Case3 generated-device SHA: v091 `10eb2d621f2fd998511b795fd2f2609a52c0a3e130e7e045ef09057a27c0ffaa`; v092 `9e4c82be7ef461356c775eb72deac50c49400223b1974f0d705aff72241bab59`.
- Case3 Step1 resources: `224 -> 228 MT`, `42 ST` unchanged, `2 waves/PEU` unchanged, `0 bytes stack/private`.
- Case3 Step1 ISA: instructions `3079 -> 3076`, `snop 363 -> 360`; unchanged `ldg_b128=28`, `lds_b128=64`, `sts_b128=16`, `stg_b64=16`, `mma_16x16x16f16=256`, `barrier=4`, `arrive=91`.
- Source and all three generated sources pass OJ validation. No async-copy markers, foreign calls, injected source, or private spill are present.

Conclusion: only Case3 materializes the scheduling change. Static work is effectively unchanged; the measured gain is consistent with dynamic load-overlap improvement.
