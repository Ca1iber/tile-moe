# Rejected trial: split physical-prepack rank kernel（sc-16g）

- Date: 2026-08-30
- Starting branch/commit: `dorm` / `2428b8b7`
- Parent: v203 local candidate, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Trial source SHA256: `857f010e16e9622535a592daf197c8c780a20a1fafbd9164789b857ec0bc549c`
- Machine: C500 25% `sc-16g`, KMD 3.8.30, MACA 3.7.1.5

## Hypothesis

Move v203's stable parallel rank construction from the physical input-prepack producer into a dedicated 64-thread TileLang kernel. Because only one fused producer CTA executes rank work but all CTAs compile its control state, isolating it might lower producer registers and increase occupancy enough to amortize one launch.

## Gates and result

- OJ source validator: PASS.
- Full padded-output correctness, Case3 at `rtol=atol=1e-2`: PASS.
- Split-rank versus v203 Case3, AB/BA 2x30: `+0.307175%`, `+0.145656%`; mean `+0.226415%` regression.
- New rank kernel: `4 MT / 16 ST / 8 waves`.
- Producer: unchanged at `74 MT / 48 ST / 6 waves`.
- Step1/Step2: unchanged at `226/46/2` and `220/56/2`.
- Async-copy sites: zero.

## Causal conclusion and stop reason

The compiler already keeps v203's rank logic outside the producer resource-limiting live range, so splitting it produces no producer resource gain. The extra kernel launch and global ordering boundary are pure overhead, matching the repeatable end-to-end regression. Reject this mechanism; do not create a candidate version or submission.

Together with the bounded-loop result, this closes rank-table scheduling as a useful follow-up beyond v203. Further Case2/3 work should target producer data movement itself or a main-stage mechanism supported by new evidence.
