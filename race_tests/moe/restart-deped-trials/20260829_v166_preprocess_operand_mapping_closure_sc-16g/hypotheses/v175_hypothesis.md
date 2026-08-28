# v175 hypothesis card

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Primary change: unpredicate the unified M192 Step2 consumer-native `up_logits` loads for official Cases2/3.
- Safety argument: rows `[group_size, 192)` map to allocated native-workspace slots; MMA rows are independent, and the epilogue already overwrites every invalid output row with zero. Reading stale padded slots cannot affect valid rows.
- Mechanism: remove the per-element `long_i < group_size` branch and zero fill from every K64 stage. This trades at most 8/192 extra A rows for simpler vector loads and address/control code.
- Expected signal: lower unified long-Step2 latency and VLS/control stalls, with unchanged grid, shared memory, MMA count, output semantics, and Down-weight traffic.
- Falsifier: validator/correctness failure, unsafe generated addressing, resource-class regression, or paired whole-operator improvement below 1.2%.
- Safety: TileLang primitives only; no async copy, injection, general MXMACA builtins, cached results, or out-of-run preprocessing.
