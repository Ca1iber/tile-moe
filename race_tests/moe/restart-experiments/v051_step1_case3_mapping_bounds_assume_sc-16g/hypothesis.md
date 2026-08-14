# v051 hypothesis: Case3 Step1 mapping bounds assumptions

## Baseline

- Accepted parent: `v050_case1_step2_v027_rollback_sc-16g`, exact submission SHA-256 `3ca06895240e4634e431de2628a887617fca138a6c247a63f4ecf4aa3d95d568`.
- The user-confirmed OJ result is approximately `3.8x / 3.8x / <3.5x`; Case3 is the weakest case.
- The Case3 Step1 expert-grouped mapping introduced by v048 computes `bx` and `by` through a local two-element mapping array but does not state their valid ranges to TileLang.
- In the accepted parent generated C++, Step1 consequently retains repeated guards such as `0 <= bx && bx < 96` and `0 <= by && by < 16` around group metadata, input/weight accesses, and the final store.
- The analogous Case3 Step2 mapping originally regressed without bounds assumptions. v049 added `T.assume` for its remapped `bx/by`, removed redundant guards, and produced a stable improvement. The exact v050 submission already contains and successfully passed OJ with those public `T.assume` calls.

## Hypothesis

For the exact 64-expert OJ Case3 only, add the same four bounds assumptions after the Step1 expert-grouped remap:

- `0 <= bx < num_blocks_m`
- `0 <= by < step1_col_tiles`

This is a compiler fact, not a relaxed runtime precondition: the existing mapping algebra maps the fixed Case3 grid onto `bx in [0, 96)` and `by in [0, 16)`. Making the fact explicit should remove redundant generated control flow and address arithmetic from Step1 without changing the grid, memory layout, synchronization, MMA schedule, or numerical result.

## Predicted evidence

- Case1 and Case2 generated device C++ remain byte-identical to v050.
- Case3 Step2 remains byte-identical; only Case3 Step1 bounds guards and dependent safe-memory branches disappear or simplify.
- Resource usage and static wave count do not worsen.
- Three-case correctness and official functional checks pass.
- Case3 paired W20/R100 latency and mcTracer Step1 duration improve outside measurement noise; Step2 remains unchanged.

## Falsifiers and rollback

- Any Case1/Case2 codegen change, correctness failure, new register/private-memory cost, or stable Case3 regression rejects the candidate.
- If the guards remain after lowering, the hypothesis is rejected at the codegen gate without performance claims.
- Rejection is recoverable by keeping v050 as the accepted submission; no root `submission.py` or `custom_fusedmoe.py` is modified.
