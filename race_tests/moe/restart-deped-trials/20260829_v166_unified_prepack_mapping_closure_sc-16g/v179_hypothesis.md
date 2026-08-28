# v179 hypothesis: physical-block unified prepack (Case2)

- Parent: exact v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Scope: official Case2 only; Case1/Case3 must remain source-specialized to v166 behavior.
- Mechanism: use `group_idx_for_bx[physical_block]` plus `group_padded_offsets` to map the existing 1.5E mixed Step1 slots directly. Prepack short and long expert inputs in one expert-indexed kernel/workspace, eliminating the 64-thread rank-map launch and the separate short/long prepack launches.
- Invariants: same Step1/Step2 CTA count, MMA count, Gate/Up/Down global bytes, output semantics, synchronous TileLang primitives only, no cached contents, no async/injection/builtin.
- Expected signal: remove two tiny launches and one metadata pass; Case2 1.2% endpoint floor is about 41 us at 3.44 ms.
- Falsifiers: validator/correctness failure; extra main-kernel waves/register tier; paired improvement below 1.2%; or any Case1/Case3 codegen change.

