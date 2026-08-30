# exact-v166 long Step2 Down bounds hypothesis

- Parent: external-OJ SOTA v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Target: official Case2/3 unified long M192xN128 Step2 branch only.
- Evidence: exact generated Case2 C++ retains a fallback/guard around every 128-bit Down load even though `by` is bounded by the launch grid, `long_n_half` is the first/second physical M128 slot of one expert, and the branch computes exactly one in-range N128 half. Manual four-read staging exposed four repeated integer guard trees per K64.
- Atomic mechanism: add only `T.assume(0 <= long_output_col)` and `T.assume(long_output_col + 128 <= hidden)` before the original `T.copy`. No scheduling, bytes, address, grid, workspace, MMA, barrier, precision or output mapping changes.
- Prediction: generated C++/ISA should delete the repeated Down fallback guards without changing the two-wave Step2 resource tier. If those guards are on the critical issue path, direct-v166 Case2/3 time can improve by at least 1.2%.
- Falsification: no codegen change, resource-tier degradation, correctness failure, or paired whole-operator improvement below 1.2%.
- Safety: a true launch-derived range fact expressed through ordinary TileLang; no unchecked runtime specialization, async copy, source injection, direct builtin, cached results, disabled checker, or out-of-run preprocessing.
