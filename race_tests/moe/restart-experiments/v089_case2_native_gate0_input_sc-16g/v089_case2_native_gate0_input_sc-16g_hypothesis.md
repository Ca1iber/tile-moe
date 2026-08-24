# Case2 consumer-native input × Gate0-early prefetch screen

Observed evidence:
- v088 improves all OJ cases by moving the full synchronous Step1 input prefetch after Gate0.
- mate.txt independently reaches 81.33 and adds a Case2-only consumer-native MMA-A input workspace.

Verified bottleneck:
- v088 mcTracer attributes its improvement to Step1; Step2 and launch gaps are unchanged.

Current hypothesis:
- The consumer-native physical layout can reduce Case2 input addressing/layout work without sacrificing v088's earlier load issue point.

Proposed mechanism:
- Start from mate.txt's Case2-only native layout and move both odd and next-even predicated native input loads to immediately after the first Gate half, matching v088's schedule. Cases 1 and 3 retain v088 ordering.

Predicted metric changes:
- Case2 end-to-end latency improves by at least 1.2% versus v088; Cases 1 and 3 remain within the paired noise band.

Falsifying result:
- Case2 improves by less than 1.2%, regresses, fails correctness/compliance, or introduces async copy/spill/resource regression.

Correctness and resource risks:
- Native row/column mapping mistakes, partial-tail initialization, larger prepack shared memory, and compiler register growth.
