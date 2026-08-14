# v044 report: all-shape vector fast reciprocal

Status: rejected. Parent/current best `v043_step1_vector_fast_rcp_sc-16g` / `cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf`. Candidate SHA-256 `24e279e5874c0d3568bad85af9f939c1863c4b79f49586530a50ea60704c1164`. No `restart-submission` is created for this rejected version.

Correctness: OJ import validation passes; all three OJ shapes pass FP32 reference with max_abs 0.001953125 and zero padding; official functional tests pass 2/2.

Authoritative paired timing (W20/R100, alternating AB/BA): Case2 parent/candidate medians 4.919675/4.924948 ms, paired median +0.10640%, 7/7 regressions. Case3 medians 10.642427/10.663723 ms, paired median +0.19618%, 7/7 regressions. One-shot OJ W20/R100 candidate values are 2.844728/4.935997/10.664962 ms; these are context, not the paired verdict.

Codegen/ISA: both changed Step1 paths remove 128 div_scale, 64 div_fmas, and 64 div_fixup sites; MMA, 128-bit global/shared accesses, exp, and rcp counts stay unchanged. Step1 SNOP falls 346->192 (Case2) and 341->181 (Case3). Case2 resources rise 210->214 MT registers; Case3 stays 230 MT. Both remain two static waves/PEU with zero stack/private spill in tool reports.

mcTracer: valid Case2 three-pair Step1 median is -0.22293%, but the range (-1.598% to +0.096%) is noisy and conflicts with the stable clean verdict. It is used only to confirm unchanged Step2/grid/resource identity. mcProfiler was intentionally not collected after clean timing rejected both changed cases.

Conclusion: fewer static division-correction/SNOP instructions are not sufficient on the long-K Case2/3 schedules. The backend schedule and, for Case2, added register pressure offset the apparent instruction saving. Keep fast reciprocal restricted to v043 Case1.
