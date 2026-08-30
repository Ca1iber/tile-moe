# v203 Case2/3 parallel rank builder experiment

Parent: local candidate `v202_case23_linear_rank_builder_sc-16g`, SHA256 `fac648642911ce415dd8a4cef03c59f5e8d23109fde964c21f034744bf1d2404`.

Candidate SHA256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.

The executable change is limited to the rank-table builder inside the unified Case2/3 physical-expert prepack. The designated producer CTA now lets one thread per expert compute its short/long prefix rank in parallel, instead of thread 0 maintaining two serial counters. Expert order remains stable and the producer data movement plus both GEMM kernels are unchanged.

Local verdict: candidate. Case2 and Case3 pass the direct-v166 5x50 promotion floor; Case1 passes the no-regression control. External OJ evidence is still required before any `restart-submission` or SOTA change.
