# v065_actual_rows_nonnegative_sc-16g 证据报告

## Verdict

rejected-noop。源码更简洁，但 Case2 最终 generated C++ 与 v062 字节级一致，不能产生性能变化。

## Evidence

- 三形状正确性 PASS，OJ 静态门禁 PASS。
- v062/v065 Case2 generated C++ SHA-256 同为 `6fdee4ae3b46dab42b0be9c34a5eaa818298c92afbf0cc8cd4e025f71825b220`。
- 由于机制在 lowering 后不存在，benchmark、profiler、ISA 和 Roofline 不再执行。
