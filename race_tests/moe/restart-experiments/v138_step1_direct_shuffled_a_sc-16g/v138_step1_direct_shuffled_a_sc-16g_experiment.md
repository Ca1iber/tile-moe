# v138 Step1 direct shuffled-A experiment

## Objective

Test whether v110's separate native-input prepack kernel and HBM round trip can be removed without losing coalescing. Each Step1 lane performs a contiguous 128-bit row-major load, then a 64-lane register transpose reconstructs the existing MFMA-A ownership.

## Mechanism

- Loader ownership: `row = lane // 4`, `8-half chunk = lane % 4`.
- MFMA-A ownership: `row = lane % 16`, `8-half chunk = lane // 16`.
- Inverse source lane: `srcLane = (lane % 16) * 4 + lane // 16`.
- For each K64 tile and thread, four `ldg128` operations feed sixteen 32-bit `shfl_sync` operations; each shuffled word is split into two FP16 scalar fragment writes.
- The runtime prepack `T.Kernel` is omitted. Its cached workspace allocation remains only to preserve the statically specialized five-dimensional argument type; the workspace is neither populated nor read in the direct path.
- Grids, MMA instructions, Gate/Up ordering, weight loads, synchronization, `actual_rows`, native `up_logits`, Step2, and math are unchanged.

## Result

Case1 source/generated-code validation and full-output correctness pass. Generated code contains two kernels rather than v110's three and lowers the intended path to conditional `load_global_128` plus `__shfl_sync(width=64)`.

Four alternating AB/BA rounds report candidate/parent latency changes of `+18.9651%`, `+18.9215%`, `+19.5832%`, and `+19.3834%`. Mean regression is **19.2133%**, with `0.2795%` population standard deviation. Step1 grows from `226 MT / 42 ST` to `240 MT / 44 ST`, while the static occupancy ceiling remains two waves/PEU.

The removed Case1 prepack cost was only about 0.021 ms, whereas the direct transpose increases the whole operator by about 0.419 ms. The shuffle, unpack, scalar-fragment-write, and live-range cost therefore dominates the saved launch and HBM round trip. Cases2/3 and mcProfiler were intentionally skipped after the mandatory 1.2% gate failed.

## Verdict

Reject v138. Do not promote it to `restart-submission`; v110 remains the external-OJ SOTA. The full per-K64 32-bit lane-transpose direction is closed unless a future backend exposes a materially cheaper vector or native MFMA-A permutation.
