# exact-v166 hybrid Step1 consecutive-K32 dual-B-fragment hypothesis

- Parent: external-OJ SOTA v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`.
- Reprofile evidence: Case3 Step1 is 1536 CTAs / 6144 waves with average wave life `144,914.91 cycles`, MMA/MTE/STE duty `63.94/6.58/2.59%`, and `162.59M` VLS pipeline stalls. Case3 Step2 scales better and is not the next target.
- Atomic mechanism: in the official hybrid short and long Step1 paths, allocate one additional B fragment. For each staged K64 panel, load both consecutive K32 Gate fragments before their two Gate MMAs, then load both consecutive K32 Up fragments before their two Up MMAs. Global/shared bytes, CTA count, MMA count, barriers, A fragments, precision and epilogue remain unchanged.
- Distinction from history: archived dual-B Step1 paired Gate and Up at the same K32 and was noise; this probe pairs consecutive K32 fragments of the same operand to expose independent LDS requests and consecutive MMA issue.
- Prediction: only worth running if Step1 remains at the exact two-wave resource tier and generated code shows LDS0/LDS1/MMA0/MMA1 ordering. A direct-v166 whole-operator improvement of at least 1.2% is required.
- Falsification: lowering failure, spill/resource cliff, missing codegen ordering, correctness failure, or sub-1.2% screen.
- Safety: on-chip fragment scheduling only; no async copy, source injection, direct builtin, cached result, disabled checker, or preprocessing.
