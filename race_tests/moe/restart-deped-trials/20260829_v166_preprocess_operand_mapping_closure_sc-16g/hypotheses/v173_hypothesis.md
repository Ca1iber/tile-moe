# v173 Case2/3 Step1 unpredicated native-A loads

Observed evidence:
- v166 Case2 Step1 is the dominant 2.07-ms stage.  It streams almost compulsory
  Gate/Up weight bytes and remains issue/latency limited.
- Consumer-native input panels are fully materialized for all 128/192 physical
  rows before Step1.  The hot K-pair loop nevertheless predicates odd and
  next-even native-A vector loads with `row < actual_rows`.
- v166's successful Gate/Up pair-load schedule proves request issue ordering is
  still performance-relevant on the current exact source.

Verified bottleneck:
- Step1 VLS/request issue and overlap, not excess Gate/Up bytes or grid underfill.

Current hypothesis:
- For Cases2/3, remove the per-vector actual-row predicate from the already
  materialized native-A workspace.  Added tail A reads are mostly L2-resident and
  small relative to compulsory Gate/Up weights; deleting hot-loop masks may let
  the backend issue A requests earlier and reduce VLS stalls.

Proposed mechanism:
- Compile Case2/3 shared short/long Step1 native-A loads unconditionally.
- Keep Case1, all output predicates, MMA tail predicates, bytes for Gate/Up, grid,
  barriers, layouts, and every Step2 path unchanged.

Predicted metric changes:
- Fewer generated compares/xmask branches around native-A vector loads.
- Same MT/ST wave tier and no spill.
- Step1 time improves enough to clear 1.2% end to end if predicate issue is causal.

Falsifying result:
- Correctness/import/resource failure, material HBM amplification, or paired
  end-to-end improvement below 1.2%.

Correctness and resource risks:
- Tail values may be arbitrary but rows are independent and all output/MMA-tail
  semantics remain predicated; valid rows must remain identical.
- No async copy, injected source, direct MXMACA builtin, or cached contents.

