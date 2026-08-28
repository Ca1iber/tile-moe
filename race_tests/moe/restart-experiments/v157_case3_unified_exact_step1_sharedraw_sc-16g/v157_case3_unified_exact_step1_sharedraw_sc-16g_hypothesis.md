# v157 Case3 exact-path unified Step1 hypothesis

Observed evidence:
- v154 Case3 runs short Step1 as M128xN128 (512 CTAs, 226 MT/thread, 32 KiB) and long Step1 as M192xN64 (1024 CTAs, 202 MT/thread, 16 KiB) in two launches.
- These two Step1 kernels total about 4.301 ms, roughly 61% of the traced Case3 chain.
- v154 unified the analogous mixed-slot Step2 without changing CTA count or padded MMA work and improved exact Case3 end to end by 1.98%.
- The rejected Case2 mixed Step1 did not preserve the short path: it forced short slots through two serial M192xN64 passes and regressed 16.29%.

Verified bottleneck:
- Case3 Step1 is the dominant stage. Existing 3-wave, 6-wave, delayed-A, K128 and N64-wide geometry changes are closed by direct negative evidence.

Current hypothesis:
- A single mixed-slot grid can remove one launch and improve expert-local CTA scheduling while preserving the exact short M128xN128 and long M192xN64 instruction bodies.

Proposed mechanism:
- Keep both input-prepack kernels unchanged.
- Replace the two Step1 launches with one 16x96, 256-thread launch.
- y<32 executes the exact short body with expert=y and N128 tile=x.
- y>=32 maps two adjacent physical slots per long expert to complementary N64 halves and executes the exact long body.
- Do not change CTA count, mathematical work, weight bytes, input layout, output layout, synchronization inside either branch, or any Case1/Case2 path.

Predicted metric changes:
- Major kernel count decreases by one.
- Unified kernel resource class is no worse than 226 MT/thread and 32 KiB shared; both branches remain at the same two-wave static occupancy tier.
- Case3 Step1 sum and end-to-end latency improve by at least 1.2%; Case1/Case2 code generation remains unchanged.

Falsifying result:
- Compilation/lowering failure; OJ/source/correctness failure; resource use above the short-path class; any official-case regression; or formal paired Case3 improvement below 1.2%.

Correctness and resource risks:
- Runtime branch allocation/layout expansion may increase register lifetime or prevent branch-local resource reuse.
- Mixed-grid physical ordering may harm the existing short-then-long scheduling or L2 locality.
- Incorrect long-slot N-half mapping could overlap or omit intermediate columns.
