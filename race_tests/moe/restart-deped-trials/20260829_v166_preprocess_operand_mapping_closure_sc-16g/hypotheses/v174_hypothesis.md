# v174 hypothesis card

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Primary change: remap the two physical long-Step1 slots from even/odd N64 tiles to two contiguous N halves.
- Mechanism: for a fixed physical slot, adjacent `pid0` CTAs advance the Gate/Up N tile by 64 instead of 128. This may improve global-weight request locality and memory-partition behavior without changing CTA count, waves, shared memory, MMA work, or per-CTA A reuse.
- Expected signal: lower Case2/3 long-Step1 time and/or global-load stalls; no material change to generated resource counts.
- Falsifier: correctness failure, changed launch/resource shape, or paired whole-operator improvement below 1.2%.
- Safety: TileLang primitives only; no async copy, injection, general MXMACA builtins, cached results, or out-of-run preprocessing.
