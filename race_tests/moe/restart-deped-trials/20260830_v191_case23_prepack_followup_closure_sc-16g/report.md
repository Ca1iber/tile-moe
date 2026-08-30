# v191 Case2/3 prepack follow-up closure（sc-16g）

Parent: `v191_case23_unified_prepack64_sc-16g`, SHA256 `f4cf60816c8b56a683e1325d477645563ed1add4b5f83668a0c8785275ab982a`.

## v201: mixed M64/M96 phase producer

Hypothesis: retain two M64 phases for 100-row short experts, use two M96 phases for 184-row long experts, and remove one long-expert shared hand-off without increasing source rows.

- OJ source validator: PASS
- Case2 full padded-output correctness: PASS
- 1x20 direct-v191 Case2: parent `3.396864 ms`, candidate `3.406285 ms`, change `+0.2773%` (regression)
- Candidate source SHA256: `071fd33ca9efd35fa309aaf66736ee49016c49bad0aa0a2db5c08b2a9baf6a3f`

The M96 bridge raises dynamic shared capacity from 16 KiB to 24 KiB. Saving one long phase does not repay the lower producer residency. Reject; Case3 was not spent after the Case2 falsifier.

## v202 control that survived

The independent rank-builder refinement is not part of this rejected family. It is staged as `v202_case23_linear_rank_builder_sc-16g` after passing direct-v166 5x50 gates. This closure exists to prevent repeating mixed phase-size/shared-capacity sweeps.
