# v203 Case2/3 Step2 ping-pong and cross-half MMA closure (sc-16g)

## Identity and verdict

- Date: 2026-08-30.
- Parent: exact `v203_case23_parallel_rank_builder_sc-16g`, SHA256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: official Case2/3 on MetaX C500 `sc-16g`.
- Promotion floor: at least 1.2% direct-v203 paired improvement.
- Verdict: both mechanisms are rejected. No version number, candidate submission, SOTA update, or `dorm` performance-head movement is created.

All sources pass the OJ source validator and full valid-row correctness at `rtol=atol=1e-2`. They use public synchronous TileLang primitives only: no async copy, source injection, direct MXMACA builtin, disabled race checker, cached content, or out-of-run preprocessing.

## Probe A: long Step2 disjoint shared ping-pong

The unified Step2 allocates a 256x64 FP16 Down shared tile for the short M128xN256 branch, while long M192xN128 normally uses only the first 128-row half. The probe pairs adjacent K64 tiles: even K uses shared rows `[0,128)`, odd K uses `[128,256)`, reuses the same A fragment, and removes the ordinary tail barrier between K iterations.

- Source SHA256: `b5e4d15dc9584603c216c0070bf9f06be33a42c28ccf2f4bfce82f0c290cfdbb`.
- Case2 parent: `3.434253 ms`.
- Candidate: `3.458266 ms`.
- Change: `+0.6992%` regression.

The disjoint halves are correct, but removing the overwrite barrier does not create nonblocking transport. Odd A and Down issue after even MMA, lengthening the serial pair while saving only loop-edge synchronization. Reject; the unused half is not a useful synchronous double buffer.

## Probe B: cross-half Gate/Up MMA issue order

Every K64 Step1 tile normally consumes K32 halves as `Gate0 -> Up0 -> Gate1 -> Up1`. The probe changes only Case2/3 to `Gate0 -> Up1 -> Gate1 -> Up0`, separating consecutive consumers of the same A K32 subfragment. Buffers, dynamic LDS/MFMA counts, global/shared bytes, grids and barriers are unchanged.

| Scope | SHA256 | Parent ms | Candidate ms | Change | Decision |
|:--|:--|--:|--:|--:|:--|
| short + long | `c4b8f72aaf084cc993e9b7449090d9bc2e11599e60b014e1497ebfeb269ba23d` | 3.438745 | 3.434406 | `-0.1262%` | noise |
| short only | `be1bf86f0945bb397e375a9ffe88ebbfe0e578604967fa5e4629baa1a0d984e9` | 3.442381 | 3.440627 | `-0.0509%` | noise |
| long only | `0525f9c55238b632eff528ec3733a11024767aee298ce56d73c0af546d31be7f` | 3.438771 | 3.433702 | `-0.1474%` | noise |

The combined generated resources are producer `74 MT / 48 ST / 6 waves`, Step1 `232 / 46 / 2`, and Step2 `220 / 56 / 2`. Parent Step1 is `226 / 46 / 2`; explicit constant issue sites raise MT registers by six without changing residency. The isolated screens show there is no short/long cancellation hiding a promotable effect. Reject and do not stack the sub-floor deltas.

## Causal conclusion

1. The long Step2 tail barrier is not an endpoint lever when all global copies remain synchronous.
2. K32 Gate/Up consumer ordering can materialize and remain correct, but the backend already schedules the incumbent LDS/MFMA dependency chains within noise-level distance.
3. Future work must change mandatory transport, reuse, or exposed hardware primitives; more synchronous shared-half ping-pong or K32 issue permutations should not be repeated.
