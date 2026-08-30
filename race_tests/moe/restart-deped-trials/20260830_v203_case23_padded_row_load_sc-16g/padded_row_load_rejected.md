# Rejected trial: branch-free padded-row producer loads（sc-16g）

- Date: 2026-08-30
- Starting branch/commit: `dorm` / `764cc043`
- Parent: v203 local candidate, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Trial source SHA256: `2e1719c68cd54b52c3f0b9d725d34d8d134b734601cb005b643f11299b991e86`
- Machine: C500 25% `sc-16g`, KMD 3.8.30, MACA 3.7.1.5

## Hypothesis

Physical expert slots allocate at least 128 rows for short experts and 256 rows for long experts. The unified producer reads only 128/192 rows, so all padded addresses are valid. Always loading those rows would fully overwrite the workspace while removing the `copy_source_row < copy_group_size` zero-fill branch.

## Gates and result

- OJ source validator: PASS.
- Full padded-output correctness, Case3 at `rtol=atol=1e-2`: PASS.
- Candidate versus v203 Case3, AB/BA 2x30: `+0.393691%`, `+0.516633%`; mean `+0.455162%` regression.
- Producer resources: v203 `74 MT / 48 ST / 6 waves`; candidate `88 MT / 42 ST / 5 waves`.
- Step1/Step2 resources remain unchanged.
- Generated source shrinks, but async-copy sites remain zero.

## Causal conclusion and stop reason

Removing the source predicate reduces textual control flow but increases producer MT-register allocation enough to lose one resident wave. The backend evidently shortens value/address lifetimes more effectively on the conditional zero-fill path. The resource regression predicts and matches the clean end-to-end slowdown.

Reject this mechanism. Do not advance `dorm` or create a candidate/submission. Future producer changes must preserve v203's `74 MT / 6 waves` tier; source-level branch removal is not itself a valid optimization signal.
