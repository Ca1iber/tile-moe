# v149 long-input prepack 96-row shared-phase trial

Observed evidence:

- v149 Case3 gains 4.16% end to end, but its long-expert input prepack takes about 0.261 ms versus the parent's whole-input prepack at about 0.249 ms.
- The long prepack uses one 192x128 FP16 bridge (`48 KiB`) per CTA; generated resources are only 16 MT / 22 ST, so shared capacity is its visible residency constraint.
- Step1 and Step2 are already independently validated; this trial must not alter either consumer.

Verified bottleneck:

- The new M192 native input representation pays a measurable 48-KiB synchronous prepack overhead before the profitable long-expert Step1.

Current hypothesis:

- Reusing a 96x128 (`24 KiB`) bridge for two synchronous row phases can allow more resident prepack CTAs and reduce the prepack kernel enough to improve Case3 end to end.

Proposed mechanism:

- For the M192 long-expert prepack only, load rows 0..95, synchronize, write their exact existing native slots, synchronize, then repeat for rows 96..191.
- Keep the same grid, input/output bytes, native layout, Step1, Step2, and all other cases.

Predicted metric changes:

- Dynamic shared: 48 KiB -> 24 KiB for the long prepack.
- No change to global bytes or downstream generated code.
- Prepack time should fall by enough for formal Case3 end-to-end AB/BA to clear 1.2%.

Falsifying result:

- Correctness/import failure, async/foreign lowering, unchanged shared allocation, downstream code change, or formal Case3 improvement below 1.2%.

Correctness and resource risks:

- Phase-to-native row mapping, shared reuse synchronization, predicated zero-fill for rows 184..191, and extra barrier/control overhead.
