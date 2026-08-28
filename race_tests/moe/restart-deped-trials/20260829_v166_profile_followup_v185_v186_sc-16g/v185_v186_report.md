# v185-v186 exact-v166 profile follow-up closure (sc-16g)

## Identity

- Branch / starting commit: `dorm` / `f40d4f1d265ce3c6941fae4bc09c9a8f46d1bd0b`
- Exact decision parent: v166, SHA-256 `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Target: official/OJ Case1 on MetaX C500 `sc-16g`
- Promotion floor: 1.2% direct-v166 paired end-to-end improvement
- External OJ SOTA remains v148 with score vector `[83, 82, 82]`; no submission promotion is authorized by these local trials.
- Both sources pass the OJ source validator. v186 passes full same-process reference correctness at `rtol=atol=1e-2`.
- TileLang primitives only; no async copy, foreign-code injection, direct MXMACA builtin, disabled checker, warmup-only work, or cached contents.

## Fresh exact-v166 evidence

- Case1 steady GPU span: about `2.002688 ms`; Step1 `1.186048 ms` (59.2%), Step2 `0.740352 ms` (37.0%), auxiliaries about `44 us`.
- Step1: 226 MT registers, 32 KiB dynamic shared memory, MMA duty 61.70%, MTE duty 9.81%, about 44.8 M VLS pipeline stalls, 1,091,969,888 read bytes versus 1,073,741,824 compulsory Gate+Up bytes.
- Step2: 202 MT registers, 32 KiB dynamic shared memory, MMA duty 61.83%, MTE duty 9.46%, about 14.2 M VLS pipeline stalls, 612,745,184 read bytes versus 536,870,912 compulsory Down bytes.
- Conclusion: both main stages are latency/overlap limited and already near compulsory HBM traffic; a full global weight rewrite cannot repay its own read+write cost.

## v185: lower-ldgstg pass

- Source SHA-256: `49ed97a999ec0d45f70586be5e73331f5f0b3b7ac063fe871020003052b46ea5`
- Mechanism: enable `TL_ENABLE_LOWER_LDGSTG` without changing the algorithm.
- Parent and candidate generated C++ are byte-identical: both SHA-256 `23262711ff5fa65848ec975a94120a218f36cbf2b3c749c3ec52c401d891abfb`, 57,572 bytes.
- Kernel resources are also identical, including Step1 226 MT registers and Step2 202 MT registers.
- Verdict: compiler no-op. Benchmark intentionally skipped because no executable code changed.

## v186: N64 short Step1 plus next-Gate register pipeline

- Source SHA-256: `e715eedea882aa4f2cb37867d87e830261482bdd43b1210d1034d62f0e22073d`
- Mechanism: short-expert N128 to N64; two `fp16x8` Gate vectors per thread hold the next tile; unified mixed grid remapped so long-path CTA count remains unchanged.
- OJ source validator: PASS.
- Generated Case1 Step1: 202 MT registers and 42 ST registers, no reported private spill; shared allocation falls from 32 KiB to 16 KiB. Generated C++ SHA-256 is `cd96971238a755d5a5802b3c4f4ba246f500e736d050508c214604b824fd92a9`.
- Correctness: PASS against the full reference output in the same-process driver.
- 1x10 paired screen: parent `1.990707 ms`, candidate `2.241766 ms`, change `+12.6116%` (regression).
- Causal result: resource pressure moved in the predicted direction, but short-expert CTAs doubled from 512 to 1024 and every K pair gained explicit register load/store scheduling. Those costs dominate any latency overlap.
- Verdict: rejected immediately; the regression is far beyond noise, so no formal 3x20 run or profiler collection is justified.

## Closure

- Do not enable `TL_ENABLE_LOWER_LDGSTG` for this source: it is a no-op.
- Do not combine short N64 with explicit next-Gate register prefetch: reduced resources do not imply reduced endpoint latency.
- Do not advance `dorm` to either trial and do not create `restart-submission` entries.
- The next experiment must preserve the v166 CTA count and HBM bytes, and should target on-chip shared-memory operand layout or instruction scheduling rather than global preprocessing.
