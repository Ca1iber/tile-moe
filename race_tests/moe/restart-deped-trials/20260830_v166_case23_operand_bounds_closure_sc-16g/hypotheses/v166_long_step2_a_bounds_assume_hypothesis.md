# exact-v166 long Step2 native-A workspace bounds hypothesis

- Parent: external-OJ SOTA v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Target: official Case2/3 unified long M192xN128 Step2 branch only.
- Evidence: every long expert has `group_size > 128` and two padded M128 blocks. The long branch reads rows 0..191 from `up_logits[long_first_bx + row//128]`, hence only those two valid blocks are addressed. Exact generated C++ nevertheless retains a fallback bounds guard around every 128-bit native-A workspace load in every K64 iteration.
- Atomic mechanism: add only `T.assume(0 <= long_first_bx)` and `T.assume(long_first_bx + 2 <= num_blocks_m)` immediately after `long_first_bx = padded_start // 128`. Keep the required `long_i < group_size` valid-row predicate and all traffic/scheduling unchanged.
- Prediction: generated C++ should delete repeated workspace-block guards/fallbacks while preserving the Step2 two-wave resource tier; this is a larger dynamic control deletion than the rejected Down-column bound probe.
- Falsification: no codegen change, resource-tier degradation, correctness failure, or direct-v166 whole-operator improvement below 1.2%.
- Safety: true padded-layout invariants only; no fixed expert ordering/count assumption, async copy, source injection, builtin, cached result, disabled checker, or out-of-run preprocessing.
