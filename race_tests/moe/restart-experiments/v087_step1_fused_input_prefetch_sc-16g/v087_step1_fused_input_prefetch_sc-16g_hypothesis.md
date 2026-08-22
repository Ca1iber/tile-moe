# v087 hypothesis: fuse full-tile A prefetch after tile-major packing

## Pre-registration

- Parent is the exact archived v086 source.
- Change one mechanism only: for the tail-pruned Step1 path, merge each pair of 64-row A-load loops into one 128-row loop while preserving bytes, K order, MMA, barriers, grids, prepack and Step2.
- Rationale: v086 makes every `128x64` A tile physically contiguous, so the old v59 result on row-major storage no longer decides this scheduling question.
- Primary screen: Case3 exact-parent AB/BA, full padded correctness, three rounds.
- Promotion threshold: stable paired median improvement of at least 1.2%; otherwise reject without a numbered version.
- Required winner gates: all three cases, OJ source/generated checks, final xcore1000 ISA with no async/spill/private operations, and mcTracer attribution.
