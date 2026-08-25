# v121 hypothesis card

Observed evidence: v110 Case2/3 Step2 consumes about 34% of steady GPU span. Consumer-native `up_logits` already improved Step2, but each thread evaluates the same native-row predicate twice for its two 128-bit column vectors. v111 duplicated full/tail load paths inside the hot K loop and regressed 3.56%.

Verified bottleneck: Case2/3 remain dominated by Step1 overall, while Step2 is the largest remaining independently optimizable secondary stage. The native intermediate path is sensitive to control and load ordering.

Current hypothesis: sharing one row-validity decision across the two vectors that own that row can reduce repeated predicate/address work without increasing HBM bytes or duplicating the K-loop load path.

Proposed mechanism: change only the three consumer-native Step2 load sites from four independent vector iterations to two row groups, each containing two vector loads under one row predicate. Keep Case1's compile-time unpredicated path, all grids, MMA work, barriers, bytes, and arithmetic unchanged.

Predicted metric changes: Case1 generated code remains equivalent; Case2/3 Step2 generated instruction/control count falls, resource tier stays at two waves/PEU, and end-to-end Case2/3 median latency falls. Candidate threshold is at least 1.2% end-to-end with no correctness failure.

Falsifying result: no generated-code change, any correctness failure, a resource-tier regression, or paired median improvement below 1.2%.

Correctness and resource risks: reordering native vector loads may change load overlap; loop canonicalization may increase address arithmetic or code size. No async copy or foreign source is used.
