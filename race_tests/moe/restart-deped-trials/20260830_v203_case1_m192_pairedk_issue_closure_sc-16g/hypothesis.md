# v203 Case1 M192 paired-K issue refinement hypothesis

Observed evidence:
- Exact v203 Case1 Step2 dispatches only 192 CTAs / 768 waves and has an average
  wave life of 193,734 cycles, while Step1 averages 42,692 cycles.
- Step2 MMA duty is 61.89%; its measured global bytes are already close to the
  compulsory model, so ordinary extra prefetch or same-byte HBM packing is not
  supported.
- Historical v161 M192-only long Step2 regressed 0.3532%, while v162's coupled
  M192 + paired-K shared feed improved the exact then-parent by 0.8592% mean.
  It is the nearest coherent Step2 family below the 1.2% floor.

Verified bottleneck:
- Long-expert rows occupy two physical M128 slots. The incumbent generic Step2
  repeats the same expert Down panel across those slots and pays long per-wave
  dependency/synchronization latency.

Current hypothesis:
- Preserve v162's traffic-reducing M192 paired-K decomposition, but issue each
  A fragment immediately beside its matching Down half (`A0 -> Down0 -> A1 ->
  Down1`) instead of materializing both full A fragments before both Down copies.
  This should expose independent address streams earlier without changing bytes,
  MMA work, barriers, grid, output semantics, or the two-wave resource tier.

Proposed mechanism:
- Exact Case1 only: enable the existing unified M192 long-Step2 path.
- Stage two K64 Down panels in the two halves of the existing N256 shared tile.
- Keep two M192 A fragments, but interleave producer issue by K phase.
- Leave Case2/3 and all Step1 paths byte-identical to v203.

Predicted metric changes:
- End-to-end Case1 direct-v203 improvement >= 1.2%.
- Lower long-Step2 average wave life and/or VLS stalls; unchanged MMA count,
  global bytes, barrier count, and static two-wave cap.

Falsifying result:
- OJ-source/correctness failure, resource/spill cliff, or formal paired mean below
  1.2% versus exact v203.

Correctness and resource risks:
- Incorrect K-half/row-offset pairing would corrupt the Down reduction.
- The second M192 A fragment raises registers; generated resources must remain at
  two waves with no spill.
- TileLang primitives only; no async copy, injection, direct MXMACA builtin,
  disabled checker, cached contents, or warmup preprocessing.
