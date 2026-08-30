# v203 Case2/3 parallel rank builder report（sc-16g）

## 结论 / Outcome

v203 是新的本地候选，等待外部 OJ。它保留 v202 的 unified physical-expert M64 prepack，仅把指定 producer CTA 中的单线程串行 rank builder 改成 expert 线程并行的稳定前缀 rank。Case1 与两个 GEMM kernel 均未改动。

- Parent candidate: v202, SHA256 `fac648642911ce415dd8a4cef03c59f5e8d23109fde964c21f034744bf1d2404`
- Decision baseline: external-OJ-AC v166, SHA256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- v203 SHA256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`
- Promotion floor: at least 1.2% direct-v166 paired improvement

## 正确性与合规 / Correctness and compliance

OJ source validator passes. All three official cases pass the full padded-output reference comparison at `rtol=atol=1e-2`. The source uses TileLang primitives only and contains no async copy, source injection, direct MXMACA builtin, disabled race checker, warmup-only preprocessing or cross-call cached contents.

## 正式长测 / Long-run benchmark

Negative change means faster. Case2/3 use five alternating AB/BA rounds, warmup 5 and repeat 50; Case1 is a 3x20 no-regression control.

| Case | Protocol | Mean | Median | Population stdev | Verdict |
|---:|:--|--:|--:|--:|:--|
| 1 | 3x20 | `+0.1131%` | `+0.0568%` | `0.1216 pp` | unchanged/no structural regression |
| 2 | 5x50 | `-1.7731%` | `-1.7201%` | `0.1019 pp` | passes 1.2% |
| 3 | 5x50 rerun | `-1.4779%` | `-1.4676%` | `0.0295 pp` | passes 1.2% |

The first Case3 formal file is retained as evidence of a transient 95.96 ms system outlier. Its other four samples were all faster than v166; an unchanged full rerun produced five clean samples from `-1.45%` to `-1.53%`.

Relative to v202, the initial 2x30 screens improve Case2 by `0.2675%` and Case3 by `0.2493%`.

## Trace 与 codegen

Final v203 Case3 mcTracer means over four launches:

| Kernel | Mean time |
|:--|--:|
| unified producer | `0.219328 ms` |
| Step1 | `4.066688 ms` |
| Step2 | `2.285824 ms` |

The v202 producer mean was `0.228800 ms`, so the producer improves by about `4.14%`. Generated Case3 resources are producer `74 MT / 48 ST / 6 waves`, Step1 `226 / 46 / 2`, and Step2 `220 / 56 / 2`; codegen contains 13 MMA sites, 16 sync sites, and zero async-copy sites.

## 决策 / Decision

Stage v203 under `restart-experiments` only. Do not modify v166, `restart-submission`, or SOTA metadata until external OJ reports all three official cases. Promotion still requires no OJ case regression and at least one strict score improvement.
