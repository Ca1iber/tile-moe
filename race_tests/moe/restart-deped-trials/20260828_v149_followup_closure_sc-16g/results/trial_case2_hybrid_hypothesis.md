# Case2 M192xN64 long-expert hybrid trial

Observed evidence:

- Exact Case2 has 32 experts: first 16 have 100 rows and last 16 have 184 rows.
- v149 proves the identical Case3 short/long distribution benefits from preserving M128xN128 for short experts and using one M192xN64 four-wave Step1 CTA family for long experts.
- v149 Case3 reduces Step1 global reads by 23.44%, Step1 traced time by 8.56%, and end-to-end AB/BA median by 4.16%.

Verified bottleneck:

- Case2 long experts still use two padded M128 Step1 blocks and reload Gate/Up panels across the two row blocks.

Current hypothesis:

- Enabling the already-correct v149 long-expert M192xN64 path for exact Case2 will remove the same avoidable padding and repeated panel traffic without changing Case1 or Case3.

Proposed mechanism:

- Keep v149 unchanged except for admitting exact Case2 `(E=32, H=7168, I=2048, valid=4544, padded=6144)` into the short/long hybrid path.
- First 16 experts retain v148 M128xN128; last 16 use one M192xN64 four-wave Step1 path; Step2 remains unchanged.

Predicted metric changes:

- Case2 Step1 workgroups remain 768: `16*1*16 + 16*1*32`.
- Approximate padded MxN work falls 16.67% and logical Gate/Up panel consumption falls 33.33%.
- End-to-end Case2 paired latency should improve by at least 1.2%; Case1 and Case3 should remain noise-equivalent to v149.

Falsifying result:

- Strict correctness/import failure, spill/async/foreign lowering, any official-case regression, or Case2 formal paired improvement below 1.2%.

Correctness and resource risks:

- Case2 short/long workspace offsets, native `up_logits` ownership, allocation-cache aliasing, and launch overhead from two additional kernels.
