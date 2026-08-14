# v043 report: Case1 Step1 vector fast reciprocal

Status: accepted new best on sc-16g. Parent `v042_step1_bsm_address_helper_sc-16g` / `6086a1ba6bb4fcf227c408574fa9f05dd4656b2d`. Submission SHA-256 `41053f6c6c07a05e4b91b3cc848f5c6dc50b307eee07115118e4b3304004e986`.

Clean Case1 13-pair AB/BA: parent median 2.858409 ms, candidate 2.845409 ms; paired median -0.45093%, mean -0.45007%, 13/13 wins. OJ W20/R100: 2.845855 / 4.938163 / 10.647739 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding. Official functional 2/2 and OJ import validation pass.

The approximate reciprocal received an extra numerical gate: 3 seeds x input scales 0.25/1/2 all pass parent comparison. At standard scale, maximum parent/candidate difference is 0.0009765625. At 2x scale the observed maximum is 0.0078125, still within rtol=atol=1e-2.

Paired mcTracer localizes the gain to Step1: -0.729% / -0.593% / -0.876%, median -0.729%; Step2 median +0.054% is noise. ISA keeps MMA/LDG/BSM/LDS unchanged while removing 128 `div_scale`, 64 `div_fmas`, and 64 `div_fixup` sites; SNOP falls 511->351. Resources remain 222 MT / 36 ST for Step1, two static waves, zero private/stack/spill. Case2/3 kernel regions are byte-identical to v042.

mcProfiler raw data is archived but downgraded: the first candidate replay missed events, and the retry reports 1.17% more waves despite identical grid/resources. It is not used for the acceptance decision.
