# v183-v184 Case1 unified-prepack closure (sc-16g)

## Identity

- Branch / starting commit: `dorm` / `8874be22265e2ffa07ea393cb3ae6e2dfffe41ba`
- Exact decision parent: v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Target: official/OJ Case1 on MetaX C500 `sc-16g`
- Promotion floor: 1.2% direct-v166 paired end-to-end improvement
- Both sources pass the OJ source validator and full valid-row correctness at `rtol=atol=1e-2`.
- TileLang primitives only; no async copy, foreign-code injection, direct MXMACA builtin, disabled race checker, warmup-only work, or cached contents.

## Evidence-based reopening

The v182 Case2 closure saved roughly 33 us but reached only a 0.955% 3x20 mean because Case2 is about 3.44 ms. Exact v166 Case1 is about 1.98 ms, and v159 tracing placed rank plus two prepack kernels at about 43.9 us, so applying the same launch/control mechanism to Case1 had a falsifiable chance to exceed 1.2% without changing the main MMA kernels.

## v183

- SHA-256: `a67d823e013f9e1a2a88c15fdacfc357d2b6aeea1e44be2475e473ef250bf45c`
- Mechanism: one expert-indexed synchronous prepack handles both short M128-native and long M192-native layouts. In every expert's `copy_col==0` CTA, thread 0 constructs that expert's short/long rank. Step1 consumes the table after the producer kernel boundary.
- 1x20 screen: `1.984397 -> 1.961715 ms`, `-1.1430%`.
- 3x20 changes: `-0.5565%`, `-0.9538%`, `-0.7800%`; mean `-0.7634%`, median `-0.7800%`, pstdev `0.1626 pp`.
- Verdict: stable positive signal, below floor.

## v184

- SHA-256: `cce52566812c6b86e712af2dd5431088f8519eb57434e9435afdea3a7e747194`
- Refinement: only the `copy_col==0, copy_row==0` CTA builds the complete rank table; its first 16 threads each own one expert and compute ranks in parallel. Other producer CTAs perform no rank scan.
- 1x20 screen: `1.983258 -> 1.963251 ms`, `-1.0088%`.
- 3x20 changes: `-0.9779%`, `-0.8270%`, `-0.9520%`; mean `-0.9189%`, median `-0.9520%`, pstdev `0.0659 pp`.
- Verdict: parallel rank construction recovers part of the producer overhead but remains below floor.

## Conclusion

Combining the two input-prepack launches and rank-map launch is a real 15--20 us class Case1 optimization, but the unified producer kernel lengthens enough that the endpoint gain saturates below 1.2%. v184 is the coherent closure of the family; neither source advances `dorm` or `restart-submission`, and sub-floor percentages must not be added to another candidate.

