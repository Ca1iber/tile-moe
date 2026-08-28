# v189 hypothesis: unified-long Step2 Down register-prefetch ping-pong

## Evidence

- Exact-v166 Case2/3 Step2 have nearly identical scaled behavior: about 48.1k/48.2k cycles average wave life, 54.58%/55.69% MMA duty, 8.82%/9.00% MTE duty, and VLS pipeline stalls that approximately double with expert count.
- Case2 Step2 reads 969.35 MB. Down compulsory bytes are 939.52 MB and consumer-native Up-logits add about 25.17 MB, leaving only roughly 0.5% non-compulsory reads. L2 duty is 24.08%; the problem is latency exposure, not redundant HBM traffic or saturated bandwidth.
- In the unified kernel, short M128xN256 slots require a 256x64 Down shared tile. Long M192xN128 slots use only the first 128x64 half, leaving the second half physically allocated but idle.
- Historical second-A-fragment ping-pong raised registers without benefit. This experiment instead pipelines the dominant Down stream and reuses already-allocated shared capacity.

## Mechanism

Only the Case2/3 unified long-expert branch changes:

1. Load K0 Down directly into shared half 0.
2. For each K64 tile, load current A and register-prefetch the next Down K64 tile.
3. Consume the current shared half with MFMA while the next Down registers are live.
4. Store the prefetched Down tile into the alternate 128x64 shared half and synchronize once.

Grid, threads, global bytes, mathematical work, output mapping, short-expert path, Step1, and Case1 remain unchanged. Shared memory remains 32 KiB.

## Prediction and falsifier

- Codegen must preserve no-spill resources and the same static resident-workgroup cap.
- Strict all-case correctness must pass.
- Case2 and/or Case3 direct-v166 paired performance must improve by at least 1.2%; otherwise reject and archive.
- Any register cliff, compiler failure, or increased global bytes falsifies the direction.

## Safety

TileLang primitives and synchronous loads/stores only; no async copy, source injection, general MXMACA builtin, hidden preprocessing, or cached results.

