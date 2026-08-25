# Case3 consumer-native full-A hypothesis

- Base: external-OJ-best v095 behavior via the warning-free v096 scaffold.
- Prior evidence: consumer-native split-A passed correctness and improved Case3 by a stable median 0.809%, below the 1.2% promotion gate.
- Change: retain the consumer-native prepack and direct per-thread 128x64 A mapping, but produce all four native vectors before Gate0 instead of splitting them around Gate0.
- Distinction from rejected v093: v093 used non-native `T.Parallel` producers and later failed external OJ; this path uses the already OJ-accepted Case2 native mapping and has one writer per native element.
- Expected mechanism: keep native layout savings while removing the duplicated producer loop/control path, potentially crossing 1.2%.
- Acceptance/falsifier: OJ static validation plus full padded correctness must pass; median AB/BA improvement >=1.2%, with no data-race warning, is required for a numbered candidate.
