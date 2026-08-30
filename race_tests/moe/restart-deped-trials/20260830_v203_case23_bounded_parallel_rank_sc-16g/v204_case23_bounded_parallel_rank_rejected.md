# Rejected trial: v204 bounded parallel rank prefix（sc-16g）

- Date: 2026-08-30
- Starting branch/commit: `dorm` / `855136f3`
- Parent: v203 local candidate, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Trial source SHA256: `62baaee12c8c7d04a6bf2284e96a0c777640e824859b4833eacb1bb3a21e98f2`
- Machine: C500 25% `sc-16g`, KMD 3.8.30, MACA 3.7.1.5

## Hypothesis

Replace v203's fixed 64-iteration per-thread rank prefix loop with a dynamic `copy_thread` upper bound and hoist the short/long classification outside the loop. The intended result was fewer loop comparisons and group-size loads without changing stable expert ordering.

## Gates and result

- OJ source validator: PASS.
- Full padded-output correctness, Case3 at `rtol=atol=1e-2`: PASS.
- v204 versus v203 Case3, AB/BA 2x30: `+0.304142%`, `+0.288781%`; mean `+0.296462%` regression.
- Producer resources: v203 `74 MT / 48 ST / 6 waves`; v204 `92 MT / 54 ST / 5 waves`.
- Step1/Step2 resources and codegen remain unchanged.
- Async-copy sites: zero.

## Causal conclusion and stop reason

The dynamic loop bound reduces source-level iterations but lengthens live control state and moves the producer back across the compiler resource-allocation threshold. Losing one resident wave is consistent with the repeatable end-to-end regression. This mechanism is rejected and must not advance `dorm`, create a numbered candidate archive, or enter `restart-submission`.

The useful constraint for follow-up work is to preserve v203's fixed-bound lowering and `74 MT / 6 waves` producer tier. Any further rank refinement must be checked in generated resources before timing.
