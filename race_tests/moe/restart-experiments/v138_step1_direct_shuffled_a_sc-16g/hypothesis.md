# v138 hypothesis card

Observed evidence:
- Exact v110 is the external-OJ SOTA (`439a2b80...509e`). Step1 occupies 62.37%--65.65% of the steady GPU span; its native input prepack kernel costs about 0.021/0.128/0.247 ms in Cases1/2/3.
- v128 proved that deleting only the 64-KiB prepack bridge while retaining the global native workspace regresses Case3 by 0.806%, because the direct global remap is not coalesced.
- An unnumbered 256-thread microprobe proved a different mechanism: row-major 128-bit loads with the lane map `(row=lane//4, chunk=lane%4)`, followed by `srcLane=(lane%16)*4+lane//16`, reconstruct the current MFMA-A layout bit-exactly and lower to `load_global_128 + __shfl_sync(width=64)`.

Verified bottleneck:
- v110 pays an extra original-input read plus native-workspace write in prepack, then repeatedly reads that workspace in Step1. Simply removing the shared bridge does not remove this round trip and loses coalescing.

Current hypothesis:
- Performing the 16x4 lane transpose inside each Step1 wave can preserve coalesced 128-bit row-major input loads while eliminating the entire prepack kernel and native input workspace. The added shuffle instructions may cost less than the removed launch and HBM round trip.

Proposed mechanism:
- For the three official shapes only, pass `stacked_expert_tokens` directly as the unused secondary input argument, omit the prepack `T.Kernel`, and replace every native-A workspace load with four coalesced row-major 128-bit loads plus sixteen 32-bit wave shuffles per K64 tile.
- Preserve the existing A/Gate/Up producer positions, K-pair order, MMA, weight copies, barriers, grids, `actual_rows` predicates, native `up_logits`, Step2, and math.

Predicted metric changes:
- Kernel count 3 -> 2 and prepack time -> 0.
- Original-input plus workspace-write bytes disappear; Step1 input read bytes remain, now from the original tensor.
- Step1 instruction count and VLS/shuffle work rise; Step1 registers may rise slightly. End-to-end must improve by at least 1.2% to survive.

Falsifying result:
- Any source/generated OJ failure, incorrect output, spill/256-register cliff, non-coalesced generated loads, or paired end-to-end gain below 1.2% versus exact v110.

Correctness and resource risks:
- Wrong inverse lane permutation corrupts MFMA-A; predicated partial waves must retain every valid row.
- `__shfl_sync` may serialize operand feed or expand register live ranges enough to outweigh prepack elimination.
