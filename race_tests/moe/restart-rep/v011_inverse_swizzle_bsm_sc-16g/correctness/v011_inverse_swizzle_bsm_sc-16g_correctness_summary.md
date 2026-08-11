# v011c correctness summary

- OJ：`--cases 1,2,3 --warmup 10 --repeat 100`，3/3 PASS，三例 `max_abs=0.001953125`。
- 官方 functional：2/2 PASS。
- 容差：沿用权威脚本 `atol=rtol=1e-2`。
- 原始证据：`../benchmark/v011_inverse_swizzle_bsm_sc-16g_oj.log` 与 `../benchmark/v011_inverse_swizzle_bsm_sc-16g_official.log`。
