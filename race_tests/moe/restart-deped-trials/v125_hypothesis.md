# v125 hypothesis

- Parent: exact v110 SOTA (`439a2b80...`).
- Scope: official Case1 Step2 expert-grouped grid only.
- Single mechanism: replace `by = by_local[0]` with `by = by_local[0] % 8`.
- Evidence: v124's `T.assume(0 <= by < 8)` removed all repeated Down-weight bounds guards and improved paired Case1 latency by 0.587%, but increased Step2 MT registers from 202 to 218.
- Expected compiler effect: constant power-of-two modulo should make `by` provably bounded without assumption-induced live-range inflation; generated code must show zero Down bounds guards and resource usage no worse than v124 before benchmarking.
- Promotion gate: correctness plus paired median improvement >= 1.2% versus exact v110; otherwise archive as rejected evidence.
