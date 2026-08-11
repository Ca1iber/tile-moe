# v013 correctness

- OJ strict paired：12/12 case samples PASS。
- `max_abs=0.001953125`，容差 `rtol=1e-2, atol=1e-2`。
- 官方 `fusedmoe_benchmark.py` functional tests：2/2 PASS。
- 原始 OJ 与 official 日志分别位于 `benchmark/paired_v004_v013_all/` 和 `benchmark/official.log`。
