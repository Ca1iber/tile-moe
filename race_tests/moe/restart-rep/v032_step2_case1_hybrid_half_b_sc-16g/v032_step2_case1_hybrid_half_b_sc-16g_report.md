# v032 evidence report

Status: accepted

Parent: v031 (`57a752c72fa15426522ef421436b8682d86850a6`)

OJ submission SHA256: `1f283c91e68c747c31f3cdf160cbffe9f0c77f911d314abc7ac97d49c2396104`

## Verdict evidence

| Evidence | v031 | v032 | Result |
|---|---:|---:|---:|
| Case1 exact OJ W20/R100 | 3.189432 ms | 3.156060 ms | -1.0463% (separate exact runs) |
| Case1 paired reproduction 1 median | 3.187686 ms | 3.158118 ms | -0.9482%, 7/7 wins |
| Case1 paired reproduction 2 median | 3.187377 ms | 3.158036 ms | -0.9215%, 7/7 wins |
| mcTracer Step1 median | 2.057216 ms | 2.055936 ms | -0.0871% |
| mcTracer Step2 median | 1.116160 ms | 1.088768 ms | -2.8440% paired median |
| Step2 MT/ST registers | 236 / 52 | 234 / 52 | no occupancy regression |
| Step2 dynamic shared/private | 32768 / 0 bytes | 32768 / 0 bytes | unchanged |

Exact OJ v032: Case1 3.1560601806640625 ms, Case2 5.036403198242187 ms, Case3 10.867388916015624 ms. All pass with max absolute error 0.001953125 and zero padding error.

Official adapter functional: both configurations PASS. Separate-process performance results are 86.86343750 ms and 28.52190674 ms; neither shape triggers the Case1 specialization, so these are fallback compatibility checks rather than the acceptance metric.

## mcProfiler

Stable directional replay counters for Case1 Step2:

- WSM stall: 82,266,837 -> 71,906,959 (-12.593%).
- VLS pipeline stall: 729,636,739 -> 729,321,332 (-0.043%).
- VL1 pt0/pt1/pt2/pt3: -5.301% / -6.426% / -5.127% / -6.334%.
- Global-read bytes replay proxy: 10,795,122,752 -> 10,870,607,424 (+0.699%).
- Shared memory access efficiency: 100% -> 100%; private read/write instructions: 0 -> 0.
- MTE duty 38.02% -> 37.97%; MMA duty 24.69% -> 24.70%.

`Total Cycles` and tool-generated `case_flops` are multi-replay aggregates and are not used as elapsed performance. Clean paired benchmark is the end-to-end authority; mcTracer is the per-stage authority.

## Lowering and ISA

Generated C++ grows from 22,343 to 26,124 bytes and materializes four async-copy source matches plus a wait wrapper, while eight static MMA source sites remain unchanged. Resource reports and mcTracer both show no private-memory spill and the same 32 KiB dynamic shared allocation. Step2 MT registers improve from 236 to 234.

Final xcore1000 ISA was regenerated from both generated C++ files. Static pattern matches are archived for structural comparison only: MMA 512 -> 512, BSM 143 -> 153, barrier-like 8 -> 18, wait 0 -> 2, LDG 54 -> 58, STG 57 -> 57.

## Roofline and hardware

Native mcProfiler model: v031 AI 774.803 and 516.597 tool-TFLOP/s; v032 AI 768.612 and 515.209 tool-TFLOP/s; both exceed native `MAX_I=260`.

Schedule-aware Case1 Step2: 103,079,215,104 FLOPs, 1,220,542,464 bytes, AI 84.4536. Using mcTracer medians gives 92.352 -> 94.675 TFLOP/s and logical traffic 1093.5 -> 1121.0 GB/s. Under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities, both are HBM-side.

mx-smi long-run workload remains correct at 3.15573125 ms average over 5000 runs. Nine steady samples selected by HBM >100 GB/s and median AP >=90% report 751.471-763.303 GB/s, median 759.080 GB/s, with 104/104 AP entries active at 95% median usage. Startup/shutdown samples are retained but excluded from steady statistics.

## Caveats

- C500 16G is a 25% compute, 16 GB sGPU slice. The 1400 GB/s roof is a conservative measured sensitivity and 1843.2 GB/s is the physical-theoretical reference; neither is claimed as a guaranteed slice entitlement.
- Native RoofLine replay counts and schedule-aware logical bytes are different models.
- ISA grep counts are static text-pattern counts, not executed-instruction totals.
