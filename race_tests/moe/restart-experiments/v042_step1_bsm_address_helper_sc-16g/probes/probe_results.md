# v042 probe results

- Producer-concurrency curve relative to v041: one wave sequential +2.502%, one wave interleaved +3.777%; gate2/up1 three-wave +1.249%; gate1/up2 three-wave +1.401%. Together with v040 four-wave and v041 two-wave evidence, exactly one producer wave per tensor is the optimum.
- A paired gate/up helper with closed-form swizzled addresses improved -0.304% (5/5).
- Combining gate/up through runtime pointer selection regressed +1.981% because it lengthened the select/dependency chain.
- A single-tensor helper was numerically correct but regressed +43.012%; codegen showed Step1 MT registers hit 256, while barriers stayed unchanged.
- Strength-reducing address arithmetic to shifts improved -0.414% (7/7).
- Calling an inlined two-row helper from an 8-iteration loop was best: -0.425% (7/7), then -0.43165% in the final 13-pair run.
