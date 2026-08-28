# v155 Case3 unified triplet interleave — rejected

## Hypothesis

After v154 merged short and long Step2 into one 28x96 grid, interleave one short
slot with the two physical slots of one long expert. The intended effect was to
balance short and long CTA runtimes across the launch.

## Change

- Parent: frozen v154 SHA
  `c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`.
- Candidate SHA:
  `1e489b75c4465256ca4c3c2545aa88d45a74d8f317c156817c2fdcd7784f164c`.
- Runtime mapping used `expert_rank`, `% 3`, and `// 3` so every logical triplet
  selected one short expert slot followed by two long-expert slots.
- No async copy, injection, compiler builtin, preprocessing cache, or other
  unrelated change.

## Evidence

- OJ source validator: PASS.
- Full valid-row Case3 correctness: PASS, `rtol=1e-2, atol=1e-2`.
- Screen 1x10: `6.891418 -> 7.127424 ms`, regression `+3.4246%`.
- Independent 3x10 changes: `[+3.6853, +3.4622, +3.4318]%`.
- Confirmation mean `+3.5265%`, median `+3.4622%`, stdev `0.1130` percentage
  points.

## Conclusion

Reject. The stable regression falsifies the load-balance hypothesis. Physical
`bx` continuity is valuable: keeping the two long slots of one expert adjacent
likely preserves Down-weight/L2 locality and avoids extra runtime rank/modulo
addressing. Future Case3 scheduling experiments should preserve same-expert
slot adjacency.
