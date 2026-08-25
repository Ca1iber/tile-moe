# v100 Step2 expert-grid-after-pad128 report

## 1. Evidence-driven direction

A fresh exact-v095 mcTracer capture measured Step2 at `34.59%`, `34.25%`, and `33.59%` of GPU span in Cases 1--3. v085 had shown a large Step2 benefit from the fixed `+128` FP16-column row pitch and explicitly left post-pitch CTA row/expert ordering as a follow-up. Historical expert grouping was only measured before that pitch change, so this combination was still falsifiable.

## 2. Isolated implementation

Two independent variants were produced from warning-free v096, whose generated-device code is byte-identical to v095:

- Case2-only expert-grouped Step2 grid, source SHA-256 `c86b6e2a...`.
- Case3-only expert-grouped Step2 grid, source SHA-256 `c3916c4a...`.

No async copy, foreign source, cached result, grid-size change, MMA reduction, or arithmetic change was introduced.

## 3. Correctness and benchmark

Both sources pass the OJ source validator and full padded-output reference check (`rtol=atol=1e-2`). Same-process AB/BA, 3 rounds, warmup 20, repeat 30:

| Variant | Paired changes | Median | Verdict |
|---|---|---:|---|
| Case2 expert grid | `+4.0533% / +4.3204% / +4.2566%` | `+4.256570%` | reject |
| Case3 expert grid | `+3.8844% / +4.3086% / +4.2457%` | `+4.245676%` | reject |

## 4. Codegen/resource clue

The mapping materially lowers: generated SHA-256 is `588bde94...` for Case2 and `0c1392b5...` for Case3. In both target shapes Step2 changes from v095 `222 MT / 54 ST / 2 waves` to `206 MT / 60 ST / 2 waves`. The substantial MT reduction does not cross an occupancy tier and performance becomes about 4.25% worse. This rules out register count as the dominant mechanism and supports the conclusion that the current transposed order preserves more useful same-K-front/address locality across neighboring CTAs.

## 5. Decision

`rejected_performance_regression`. The post-pad128 expert-grouping combination is closed for Cases2/3. No `restart-submission` is created and `dorm` does not advance to either candidate. v095 remains the development-performance parent; formal SOTA remains external-OJ-AC v092.
