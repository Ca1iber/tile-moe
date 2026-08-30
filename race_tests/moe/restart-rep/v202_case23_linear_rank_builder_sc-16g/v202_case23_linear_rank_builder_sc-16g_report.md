# v202 Case2/3 linear rank builder report（sc-16g）

## Outcome

v202 is the new **local candidate**, pending external OJ. It preserves v191's unified physical-expert M64 prepack and replaces the per-expert `O(E²)` prefix-rank scans with one `O(E)` ordered rank builder. It does not modify Case1 or either GEMM stage.

- Parent candidate: v191, SHA256 `f4cf60816c8b56a683e1325d477645563ed1add4b5f83668a0c8785275ab982a`
- Direct decision baseline: external-OJ-AC v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- v202 SHA256: `fac648642911ce415dd8a4cef03c59f5e8d23109fde964c21f034744bf1d2404`
- Promotion floor: at least 1.2% direct-v166 paired improvement

## Correctness and compliance

The OJ source validator passes. All three official cases pass the full padded-output reference check at `rtol=atol=1e-2`. The source uses TileLang primitives only and contains no async copy, injected source, direct MXMACA builtin, disabled race checker, warmup-only preprocessing or cross-call cached contents.

## Long-run benchmark

Negative change means faster. Case2/3 use five alternating AB/BA rounds, warmup 5 and repeat 50; Case1 is a 3x20 no-regression control.

| Case | Protocol | Mean | Median | Population stdev | Verdict |
|---:|:--|--:|--:|--:|:--|
| 1 | 3x20 | `-0.1946%` | `-0.1850%` | `0.0628 pp` | unchanged/no regression |
| 2 | 5x50 | `-1.4896%` | `-1.4538%` | `0.0781 pp` | passes 1.2% |
| 3 | 5x50 | `-1.2637%` | `-1.2780%` | `0.0259 pp` | passes 1.2% |

The stricter v191 Case3 5x50 control produced mean `-1.1965%` and median `-1.1824%`, just below the floor. v202 therefore replaces v191 rather than stacking an unrelated sub-floor optimization: the rank builder is part of the same unified-prepack mechanism and restores a reproducible margin above the gate.

## Trace and code generation

Final v202 Case3 mcTracer means over four steady launches:

| Kernel | Mean time |
|:--|--:|
| unified producer | `0.228800 ms` |
| Step1 | `4.075584 ms` |
| Step2 | `2.280576 ms` |

The v191 producer mean was `0.230272 ms`. Generated Case3 resources are producer `92 MT / 46 ST / 5 waves`, Step1 `226 / 46 / 2`, Step2 `220 / 56 / 2`; there are 13 MMA sites, 16 sync sites and zero async-copy sites. The two main kernels retain the established resource tiers.

## Decision

Stage v202 under `restart-experiments` only. Do not modify v166, `restart-submission` or `SOTA.json` until the external OJ reports all three official cases. If OJ is AC and all case scores are non-regressing with at least one strict improvement, v202 may be promoted through the SOTA gate.
