# v148 Case3 expert-grid revival closure (sc-16g)

Status: **rejected and closed**. Starting commit: `622d194b`; parent source is the OJ-verified v148 SHA-256 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`.

## Hypothesis

The old v048 result showed that grouping Case3 Step1 CTAs by expert could improve weight reuse. Re-test the idea on v148 while preserving its mature synchronous data path.

## Trials

| Trial | Mapping | Strict correctness | Case3 screen vs v148 | Result |
|---|---|---:|---:|---|
| expert-group revival | dynamic grouped `(bx, by)` | PASS | **+14.201%** | rejected |
| 3-D expert-pair grid | `(2, 16, 48)`, `bx=2*bz+inner`, `by=blockIdx.y` | PASS | **+2.373%** | rejected |
| 2-D expert-pair grid | `(32, 48)`, paired block mapping | PASS | **+2.355%** | rejected |

All three exact sources pass the OJ source validator and use TileLang primitives only, without async copy or foreign code.

## Causal profile

The dynamic revival forced hot Gate/Up addresses through dynamic 64-bit expert/column arithmetic and regressed badly. The static 2-D pair grid retained the parent resource class (`226 MT` became `226 MT` with ST reduced from 42 to 40) but still lost performance.

Targeted mcProfiler comparison for the 2-D pair mapping versus the archived v148 Step1 profile:

- waves/workgroups: unchanged at 6144 / 1536;
- global reads: `5.253 GB -> 5.929 GB` (**+12.87%**);
- L2 hit ratio: `33.73% -> 24.31%` (**-9.42 percentage points**);
- average wave life: `169105 -> 171582` cycles;
- DNoC read latency: `273.89 -> 287.40` cycles;
- MMA duty: `54.36% -> 53.91%`.

## Conclusion

The CTA ordering is not semantically neutral on v148. Its existing grid order provides better downstream cache locality than expert-pair grouping. The old v048 benefit does not transfer after v148's consumer-native input/up-logits and Step1 scheduling changes. Close the expert-grid family; do not combine it with later candidates without new counter evidence.
