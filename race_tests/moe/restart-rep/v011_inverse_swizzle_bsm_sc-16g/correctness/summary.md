# v011 correctness

- `oj_benchmark.py` 三个 OJ case 全部 PASS。
- v011a、v011b、v011c 以及全部严格配对样本的 `max_abs` 均为 `0.001953125`。
- 判定容差：`rtol=1e-2, atol=1e-2`。
- 原始逐样本 JSON 行保存在 `../benchmark/` 的日志中。
