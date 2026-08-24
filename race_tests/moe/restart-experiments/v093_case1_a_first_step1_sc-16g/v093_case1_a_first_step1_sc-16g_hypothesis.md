# v092 Case1 non-native A-first screen hypothesis

Observed evidence: v091 Case2 native A-before-Gate0 improved external OJ latency by 3.338979%; v092 Case3 non-native A-before-Gate0 improved seven-round local latency by 2.522453% and mcTracer Step1 by 3.917254%.

Verified bottleneck: Case1 still uses non-native Step1 order G0 -> A -> G1 -> U0 -> U1 at both odd-tile and next-even producer sites. Case1 is otherwise unchanged from v092.

Current hypothesis: the same A-before-Gate0 issue-order mechanism will extend independent A-load overlap for Case1 and reduce end-to-end latency without changing static work.

Proposed mechanism: enable the existing non-native A-before-Gate0 path for the exact experts=16, hidden=2048, intermediate=8192 Case1 path; rename the compile-time flag from Case3-specific to selected-non-native terminology without changing Case3 semantics.

Predicted metric changes: Case1 paired median improves by at least 1.2%; Case2/3 generated code and latency remain unchanged; Case1 remains two-wave with no private spill.

Falsifying result: correctness/compliance failure, resource-class degradation, or strict paired median improvement below 1.2% relative to exact v092.

Correctness and resource risks: Case1 has fewer K tiles than Case3, so the extra overlap window may amortize poorly; earlier A fragment lifetime may raise registers.
