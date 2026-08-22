# Benchmark evidence

- Case1：3轮 AB/BA，warmup 1000 / repeat 300。
- Case2：5轮 AB/BA，warmup 100 / repeat 100。
- Case3：5轮 AB/BA，warmup 20 / repeat 100。
- JSON 均来自 exact v085 parent 与 candidate SHA `43bda059...` 的同进程比较。
- `run_v59_fullcheck.py` 实际对整个 padded output tensor 做 assert；其结果字符串沿用旧脚本的 “valid rows” 文案。
