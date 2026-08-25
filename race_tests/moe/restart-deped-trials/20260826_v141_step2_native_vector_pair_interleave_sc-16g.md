# v141 Step2 native vector-pair interleave rejected

- Parent: external-OJ-AC v110, SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Candidate: SHA-256 `cd69d357e951ff800ffa0e67a2075b3a61c663c945a5f0d1daebbc5a88620159`.
- Change: replace each half-interleaved 128-thread x 4-vector native-A producer stage with a 256-thread x 2-vector stage. Bytes, addresses, shared layout, MMA, barriers and grid are unchanged.
- Correctness: PASS for all three official cases, `rtol=atol=1e-2`.
- AB/BA medians versus exact v110: Case1 `+0.602%`, Case2 `+0.888%`, Case3 `+0.940%` (positive is slower).
- Resources: Case1 Step2 remains `202 MT`; Cases2/3 rise `220 -> 224 MT`; all remain 2 waves/PEU.
- Conclusion: merely spreading identical native-A traffic across more active waves does not increase useful memory-level parallelism. It weakens the existing A/Down phase schedule and slightly extends address lifetimes. Do not repeat all-thread vector-pair repartitioning without reducing real traffic or changing reuse.
