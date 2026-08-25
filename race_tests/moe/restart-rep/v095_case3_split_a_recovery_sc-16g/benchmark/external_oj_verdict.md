# External OJ verdict

- Authority: user report on 2026-08-25.
- Exact candidate SHA-256: `7e7f5b69a9a17fef7f6e155f7a07901af0e0aba9ec59edab788e6b4f15e90b8f`.
- Verdict: **ACCEPTED**.
- Latency ms: `[2.429, 3.977, 7.896]`.
- Score ratio: `[0.822442, 0.823925, 0.819607]`.
- Display score: `[82, 82, 81]`.
- Case3 compiler emitted two static data-race warnings for the split-A high-half temporary index; runtime check and SPJ both passed.

The AC confirms that the recovered Case3 split-A path is OJ-correct once the v093 Case1 A-first path is removed. Against v092, Case2 is equal and Case3 improves, but Case1 score ratio is lower (`0.822442 < 0.823043`). The strict per-case monotonic SOTA gate therefore rejects formal promotion for this OJ run; v092 remains `restart-submission` SOTA.
