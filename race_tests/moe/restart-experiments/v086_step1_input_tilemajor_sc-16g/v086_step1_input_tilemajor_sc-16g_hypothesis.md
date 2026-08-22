# v085 Step1 input tile-major prepack hypothesis

- Parent: exact archived v085, SHA-256 `6d4aa3a6f428d023adf6b681ea3a4429e5fd563d84f4fdd12fb85a8aab5be3d5`.
- Scope: normal, synchronous, OJ-allowlisted TileLang only; no async copy, foreign source, cached results, or harness changes.
- Mechanism: add one synchronous input prepack kernel and store input physically as
  `[row_block, k_tile, row_in_block, k_in_tile]`, so every Step1 `128x64` A tile is a
  contiguous 16 KiB region. The sixteen N-panel CTAs for one row block still read the
  same physical tile and retain cross-CTA cache reuse.
- Control: keep Step1/Step2 MMA topology, Gate/Up/Down layout, `actual_rows`, producer
  order, workspace pitch, math, and output contract unchanged.
- Cost: one extra kernel reads and writes the input once. Historical row-major pad128
  prepack cost about 0.24 ms in Case3; the candidate must recover that cost and improve
  end-to-end latency, not merely shorten Step1 in isolation.
- Gates: source/generated OJ validation, final xcore1000 ISA with no async/private spill,
  full padded-output correctness, then Case3 paired screen. Promote only for stable
  `>=1.2%` end-to-end gain versus exact v085.
- Falsifier: if Step1 does not improve enough to cover prepack, or if tile-major mapping
  damages the existing L2 reuse, reject the mechanism without creating a version.
