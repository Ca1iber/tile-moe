# v044 extend vector fast reciprocal to all OJ shapes

Parent/current best: `v043_step1_vector_fast_rcp_sc-16g` at `cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf`. Candidate SHA-256: `24e279e5874c0d3568bad85af9f939c1863c4b79f49586530a50ea60704c1164`.

Observed evidence: v043 improved Case1 by replacing the exact FP32 reciprocal correction chain with an OJ-compliant float4x16 `__builtin_mxc_rcpf` helper while preserving the vector lowering.

Hypothesis: Case2 and Case3 contain the same 64-lane SwiGLU epilogue and exact division chain, so applying the same helper should remove 128 `div_scale`, 64 `div_fmas`, and 64 `div_fixup` instructions per static Step1 body and reduce end-to-end latency.

Prediction/falsifier: accept only if exact Case2/3 output passes reference and repeated AB/BA timing wins outside noise. Any stable regression rejects the all-shape extension even if static ISA shrinks.

Result: the mechanism materialized and correctness passed, but Case2 regressed +0.10640% median (7/7) and Case3 +0.19618% median (7/7). Case2 MT registers increased 210->214; Case3 resources stayed flat. Rejected; v043's Case1-only specialization remains current best.
