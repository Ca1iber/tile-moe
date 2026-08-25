# v128 hypothesis

- Parent: exact v110 SOTA (`439a2b80...`).
- Scope: official Cases2/3 input prepack kernel only; Case1 remains source-specialized to the exact v110 path.
- Single mechanism: write each consumer-native 8-element vector directly from row-major global input to the native global workspace, removing the 64-KiB shared bridge and CTA barrier.
- Evidence: current Cases2/3 prepack costs about 0.243 ms. Historical panel/thread/padding sweeps retained the shared bridge; no direct global-to-global native remap was tested.
- Tradeoff: direct loads retain 128-bit per-thread vectors but lose cross-thread row-major coalescing. Codegen and paired benchmark will decide whether eliminating shared traffic/barrier outweighs that loss.
- Promotion gate: OJ source validation, full correctness, Case2/3 generated code/resource evidence, and paired median end-to-end improvement >= 1.2% versus exact v110 without any official-case regression.
