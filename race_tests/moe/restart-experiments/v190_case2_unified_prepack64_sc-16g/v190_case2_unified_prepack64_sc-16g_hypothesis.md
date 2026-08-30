# exact-v166 Case2 unified-prepack 64-row phase hypothesis

Observed evidence:
- Exact v166 Case2 mcTracer: rank `0.008128 ms`, short prepack `0.076480 ms`, long prepack `0.087296 ms`; auxiliary total `0.171904 ms`.
- Archived v182 merges rank and both prepack launches, but its unified producer still takes `0.144192 ms`; direct paired gain was only about `0.95%`.
- v182 uses a fixed `2 x 96-row` producer for every expert. Short experts need M128 while long experts need M192, so the short half performs 64 unnecessary row slots per expert and the shared allocation is 24 KiB.

Verified bottleneck:
- The remaining unified-producer loss is kernel work/resource cost, not launch count: v182 already removes two launches, while Step1/Step2 durations remain equal to v166.

Current hypothesis:
- A single 16-KiB `64 x 128` shared bridge with two compile-time phases for short experts and three for long experts can preserve the one-launch/rank-folding benefit while restoring exact M128/M192 row coverage.

Proposed mechanism:
- Start from archived v182, itself a coherent direct-v166 unified-producer experiment.
- Keep its physical expert order, rank construction, main Step1/Step2 kernels, workspaces, precision, and synchronization semantics.
- Replace the fixed two 96-row phases by uniform-CTA branches: short experts execute two 64-row phases; long experts execute three 64-row phases. Each phase uses two 128-bit vectors per 512-thread producer instead of three.

Predicted metric changes:
- Unified prepack mcTracer duration: `0.144 ms -> <=0.125 ms`.
- Main Step1/Step2 durations unchanged.
- Direct exact-v166 Case2 endpoint improvement: at least `1.2%`.

Falsifying result:
- Lowering/layout failure, correctness or OJ-source failure, resource spill, unified prepack not materially shorter, or direct-v166 paired improvement below `1.2%`.

Correctness and resource risks:
- Phase boundary errors for the short rows 64-127 or long rows 128-191.
- Extra long-path barrier may offset reduced short-path work.
- Runtime branch is CTA-uniform because `copy_group_size` is expert-wide; all barriers remain uniform.
- TileLang primitives only; synchronous `T.copy`/loads; no async copy, injection, builtin calls, cached contents, or out-of-run preprocessing.
