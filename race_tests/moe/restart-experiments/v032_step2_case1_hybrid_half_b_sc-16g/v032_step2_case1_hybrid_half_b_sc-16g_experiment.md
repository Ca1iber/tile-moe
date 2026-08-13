# v032 Step2 Case1 hybrid half-B pipeline

## Hypothesis

Case1 uses the same 256x64 Step2 weight tile as Cases 2/3 but traverses 128 K tiles instead of 32. Extending the v030/v031 hybrid half-B path should amortize its extra async token/barrier machinery across the longer K loop and overlap one 128x64 half-tile load with MMA on the other half.

## Single source change

`use_step2_half_b_pingpong = True` is enabled only for the OJ Case1 branch (`hidden=2048`, `intermediate=8192`, `experts=16`). Case2, Case3, and official 4/8-expert fallbacks are byte-identical to v031.

The path keeps one 32 KiB shared weight tile, splits it into two 128x64 halves, asynchronously fetches the second half while MMA consumes the first, then waits before consuming the second. It is a hybrid pipeline, not full double buffering.

## Results

- Correctness: all three OJ cases PASS; maximum absolute error is 0.001953125 and padding error is zero.
- Exact OJ W20/R100: 3.156060 ms / 5.036403 ms / 10.867389 ms.
- Final-file paired reproduction 1: 7/7 wins, paired median -0.9482%, range -0.9830% to -0.8582%.
- Final-file paired reproduction 2: 7/7 wins, paired median -0.9215%, range -0.9995% to -0.8467%.
- mcTracer: Step1 median change -0.0871% (noise); Step2 median change -2.8440%.
- mcProfiler directionals: WSM stall -12.593%; VL1 partition stalls -5.126% to -6.426%; VLS pipeline stall -0.043%; global-read replay proxy +0.699%; shared access remains 100% non-conflict; private reads/writes remain zero.
- Codegen: `memcpy_async` appears (0 -> 4 source sites), MMA sites remain 8, and Step2 MT registers drop from 236 to 234. ST registers remain 52, dynamic shared memory remains 32 KiB, private memory remains zero, and the static report remains two resident waves.
- ISA static patterns: MMA matches stay 512; BSM 143 -> 153; barrier-like patterns 8 -> 18; wait patterns 0 -> 2. These are static text matches, not dynamic instruction counts.
- mx-smi steady state: nine samples selected by HBM >100 GB/s and median AP >=90% give 759.080 GB/s median HBM throughput; 104/104 AP entries are active at 95% median usage.

## Interpretation

The two independent paired benchmarks and mcTracer agree that the improvement belongs to Step2. The math and compulsory schedule bytes are unchanged; the win comes from overlapping a portion of the B-tile wait with MMA. The longer Case1 K loop makes the overlap profitable even though the async path adds barrier/token instructions and a small increase in profiler replay read traffic.

Native mcProfiler RoofLine reports AI 774.80 (v031) and 768.61 (v032), both on the compute side of its `MAX_I=260` model. The schedule-aware model counts repeated per-CTA weight reads: 103,079,215,104 FLOPs and 1,220,542,464 bytes, AI 84.454 FLOP/byte. At the explicitly modeled 25%-slice roofs (479.232 TFLOP/s compute, 1400/1843.2 GB/s bandwidth sensitivity), both points are HBM-side. The native replay model and schedule model answer different questions and are not mixed.

## Decision

Accepted. v032 is a reproducible, OJ-compliant improvement over v031 and becomes the new working best.
