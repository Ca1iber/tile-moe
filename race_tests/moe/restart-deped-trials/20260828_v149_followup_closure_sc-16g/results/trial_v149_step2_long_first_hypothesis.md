# v149 Case3 Step2 long-block-first traversal trial

Observed evidence:

- v149 produces short experts first and long experts last; Step2 currently traverses `bx=0..95`, consuming short blocks first.
- Long `up_logits` therefore have the freshest producer-side cache state when Step2 launches, but are consumed only after all 32 short blocks.
- mcTracer shows launch gaps are negligible, so only in-kernel traversal/cache locality is targeted.

Verified bottleneck:

- Step2 still costs about 2.595 ms and streams the consumer-native workspace plus Down weights; producer-consumer cache recency is not aligned with its block order.

Current hypothesis:

- Traversing the 64 long blocks first and the 32 short blocks second will better align Step2 with Step1 production order and improve workspace locality without changing arithmetic or bytes.

Proposed mechanism:

- Only for exact Case3 hybrid, map Step2 logical `pid1=0..63` to `bx=32..95`, then `pid1=64..95` to `bx=0..31`.
- Keep grid size, by mapping, tiles, math, memory layout, Step1, and all other cases unchanged.

Predicted metric changes:

- Generated Step2 body changes only in the initial bx mapping.
- Step2 time and end-to-end Case3 time should fall; all traffic and resource ceilings should remain effectively unchanged.

Falsifying result:

- Correctness/import failure, resource cliff, or formal Case3 improvement below 1.2%.

Correctness and resource risks:

- Incorrect block permutation, extra control/address overhead, and reduced Down-weight cache locality from changing expert traversal.
