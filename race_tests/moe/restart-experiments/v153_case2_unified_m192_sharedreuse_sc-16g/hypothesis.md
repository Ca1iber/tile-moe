# v153 hypothesis card

## Observed evidence

- Exact v152 Case2 uses one `28 x 48` Step2 launch and takes 1.331328 ms in
  mcTracer.
- Case2 contains 16 short experts with 100 rows and 16 long experts with 184
  rows.  Each long expert occupies two physical M128 slots, so v152 reloads the
  same Down weights for its second M slot.
- A prior split-kernel M192xN128 experiment proved that long-expert Down reuse is
  real, but the extra map/launch and two smaller grids consumed the gain.
- A first unified two-M128-fragment trial reduced Step2 reads by 19.25%, but lost
  K-stage overlap and regressed end-to-end latency by 26.44%.

## Verified bottleneck

Case2 Step2 contains avoidable repeated Down traffic for long experts.  The
optimization must preserve the original single launch and 1,344-CTA grid while
avoiding both K-stage stall growth and dynamic-shared-memory inflation.

## Current hypothesis

Map each long expert's two physical M128 slots to complementary N128 halves over
the same M192 rows.  Use the already verified M192xN128 emitter for the long
branch and the original M128xN256 emitter for the short branch.  Allocate one
M128xN256-sized 32-KiB Down shared buffer outside the branch and let both paths
reuse it, so mutually exclusive buffers do not add to 48 KiB.

## Predicted changes

- Keep one `28 x 48` Step2 launch and 5,376 waves.
- Reduce Step2 global reads by roughly 19%.
- Keep Step2 dynamic shared memory at 32 KiB and MT-register count near v152.
- Reduce VL1 stalls and Step2 duration without changing output semantics.
- Improve official Case2 by more than 1.2%; leave Case1/3 in noise because the
  specialization is guarded by the exact Case2 shape.

## Falsifier

Any correctness/OJ-source failure, 48-KiB shared allocation, less than 1.2%
formal paired improvement, or meaningful Case1/3 regression rejects the trial.

## Correctness and resource risks

- The two long physical slots must write disjoint N128 halves.
- Both slots must read the same M192 native-layout `up_logits` rows.
- Rows 184:255 must be explicitly zeroed.
- Dynamic branch-local fragment layouts must not sum shared allocations.
- No async copy, injected code, direct MXMACA builtins, cached contents, or
  unmeasured preprocessing is permitted.

