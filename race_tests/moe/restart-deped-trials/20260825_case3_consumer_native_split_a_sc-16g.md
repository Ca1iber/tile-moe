# 2026-08-25: Case3 consumer-native split-A below threshold

- Base: v095 performance behavior via warning-free v096 scaffold.
- Source SHA-256: `78e5d7b49112daa71d96a639d551ebbe0d7fd6314a00d1420cbf3a87c07fd0ac`.
- Change: consumer-native A workspace, rows 0:64 produced before Gate0 and rows 64:128 after Gate0.
- OJ source validation: PASS.
- Full padded Case3 correctness: PASS.
- AB/BA, 3 rounds, warmup 20, repeat 50: `-0.766576%, -0.841974%, -0.809255%`; median `-0.809255%`.
- Conclusion: real but below the 1.2% candidate gate. It established that native A layout helps, while the split producer leaves too much control overhead. Closed as an independent candidate and used only as evidence for v101 full-A.
