# v052 Case3 Step1 one-wave BSM staging

Status: accepted as the new local sc-16g best and packaged for OJ; external OJ timing is pending. The implementation parent is `v050_case1_step2_v027_rollback_sc-16g` at `b7772836`; the branch also retains the rejected v051 record at `e06318dc`. Submission SHA-256: `774343051d2a9fb7cecdd635b971085b61b9ec973725524dfc0f2e4d26a93986`.

Case3 Step1 now uses direct `continuous_pipeline_memcpy_async<16>` BSM staging with one producer wave for gate and one for up. A 7168-wide helper uses the exact 14336-byte FP16 row stride. Case1 remains byte-identical to v050 and keeps its accepted fast reciprocal; Case2 remains byte-identical; Case3 keeps the normal SiLU path and its Step2 generated body is byte-identical.

The first probe reused Case1's hard-coded 4096-byte row stride and failed Case3 correctness. A second probe put the 7168 helper in a separate `T.import_source`, which TileLang could not merge into the single `pragma_import_c`. The final source concatenates both helper strings into one import and selects the exact helper per shape.

All three OJ-shaped cases pass with max abs 0.001953125 and zero padding, official functional tests pass 2/2, and the OJ import allowlist passes. In 13 alternating W20/R100 Case3 pairs, the parent/candidate medians are 10.242933/10.009800 ms; paired median -2.31103%, mean -2.43854%, 13/13 wins.

mcTracer localizes the improvement to Step1: median 6.916352 -> 6.632960 ms, paired median -3.03144%. Wave-matched mcProfiler replay reports memory instructions -10.546%, global-read bytes -4.326%, AP active cycles -3.381%, MMA duty 45.40% -> 46.99%, MTE duty 7.04% -> 8.03%, and zero private traffic.
