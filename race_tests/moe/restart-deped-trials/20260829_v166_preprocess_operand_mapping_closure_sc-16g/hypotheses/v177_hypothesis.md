# v177 hypothesis card

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Primary change: issue the unified M192 Step2 Down `T.copy` before the consumer-native `up_logits` producer in each K64 stage.
- Evidence: Down is the large cold weight stream; native up_logits was produced immediately before Step2 and is more cache-local. The current long path is A-first, while earlier generic Step2 evidence favored B-first half interleave.
- Mechanism: start the long-latency Down request front earlier, then cover it with the unchanged A load/address work before the existing CTA barrier.
- Invariants: identical grid, CTA/waves, shared allocation, bytes, predicates, MMA, barriers, epilogue, and math; only source producer order changes.
- Expected signal: lower long-Step2 VLS/global-wait latency without a resource-class change.
- Falsifier: validator/correctness failure, generated resource regression, or paired whole-operator improvement below 1.2%.
- Safety: TileLang primitives only; no async copy, injection, general MXMACA builtins, cached results, or out-of-run preprocessing.
