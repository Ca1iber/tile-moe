# v094 codegen and ISA

- Case1 generated SHA unchanged: `cce8acc279ea734193c956934453d8558d81cf28e92ffcd22da5b13a1f51511b`.
- Case2 generated SHA unchanged: `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e`.
- Case3: `9e4c82be7ef461356c775eb72deac50c49400223b1974f0d705aff72241bab59 -> d627d221d94cf8f2a48de61f9e3b8371bfa15856fed6d519451a00ac0dc3f19e`.
- Case3 Step1 resources: `228 MT / 42 ST -> 226 MT / 54 ST`, 2 waves/PEU unchanged, 0 stack/private.
- Step1 ISA: total `3076 -> 3250`, snop `360 -> 394`, ldg_b128 `28 -> 36`; unchanged lds_b128 64, sts_b128 16, stg_b64 16, MMA 256, barrier 4, arrive 91.

The candidate increases static scheduling code yet improves real Step1 by about 2.99%, supporting better dynamic latency overlap rather than work elimination.
