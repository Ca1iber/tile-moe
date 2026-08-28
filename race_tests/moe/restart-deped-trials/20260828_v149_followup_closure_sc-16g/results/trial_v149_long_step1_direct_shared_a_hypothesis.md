# v149 long Step1 direct shared-A bridge trial

Observed evidence:

- v149 long M192xN64 Step1 uses only 16 KiB for Gate/Up shared, 206 MT / 28 ST, and no spills.
- The separate long-input prepack costs about 0.261 ms and materializes a native workspace consumed only by long Step1.
- Historical v138 direct-A regressed because lowering emitted sixteen 32-bit cross-lane shuffles per thread per K64; it did not use an explicit coalesced shared bridge.

Verified bottleneck:

- v149 still pays a producer kernel and an HBM workspace round trip to obtain a coalesced MFMA-A feed.

Current hypothesis:

- The M192xN64 path has enough shared headroom to stage a 192x64 FP16 A panel (24 KiB) alongside the 16-KiB Gate/Up buffers. A row-major global-to-shared copy followed by shared-to-fragment transfer can replace the native workspace feed without cross-lane shuffles.

Proposed mechanism:

- Only for the Case3 long-expert M192 kernel, stage each original A K64 panel in a 24-KiB shared bridge.
- Reuse the existing weight barriers for bridge producer/consumer hand-off.
- Initially retain the old prepack launch as an isolation control; if Step1 feed is non-regressing, remove the now-dead prepack in a follow-up.
- Short Step1, output layout, math, Step2, and all other cases remain unchanged.

Predicted metric changes:

- Long Step1 dynamic shared: 16 KiB -> 40 KiB; no spill and two-wave resource ceiling should remain.
- Native-workspace global reads are replaced by original-input reads plus LDS; Step1 time must not regress by more than the removable ~0.261-ms prepack cost.
- After deleting the dead prepack, Case3 end-to-end should clear 1.2% if the shared bridge feed is efficient.

Falsifying result:

- Layout/lowering failure, generated shuffle-heavy feed, spill/async/foreign code, correctness failure, or direct-shared Step1 regression larger than the removable prepack cost.

Correctness and resource risks:

- Shared A layout inference, barrier placement, overwriting the bridge before all fragment readers finish, K-pair ping-pong ordering, and increased shared occupancy pressure.
