# v203 Case1 resource / overlap / backend closure (sc-16g)

## Identity and gate

- Date: 2026-08-30.
- Exact parent: `v203_case23_parallel_rank_builder_sc-16g`.
- Parent SHA-256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- External OJ SOTA remains v166; Case1 `2.015 ms`, ratio `0.848108`.
- Direct-parent promotion floor: at least 1.2%. Sub-floor changes are not stacked.
- All runnable trials use public synchronous TileLang only; no async copy, source injection, direct MXMACA builtin, disabled checker, cached contents, or warmup preprocessing.

## A. Split mixed Step1 by resource shape

The exact Case1 mixed Step1 kernel contains 512 short M128N128 CTAs and 1024 long M192N64 CTAs. Splitting it into short/long launches lets the long kernel compile from 226 MT / 32 KiB to 202 MT / 24 KiB while preserving tiles, bytes, MMA work, and mapping.

- OJ source validator: PASS.
- Full valid-row correctness: PASS at rtol=atol=1e-2.
- 1x20 direct-parent screen: `1.991821 -> 2.026918 ms`, `+1.7621%` regression.
- mcTracer: parent unified Step1 `1.189120 ms`; split short `0.537600 ms` plus long `0.701952 ms` = `1.239552 ms`, about `50.432 us` slower before considering the extra launch boundary.

Conclusion: one mixed launch benefits from short/long CTA overlap and tail-wave filling. Lower long-kernel registers do not improve the static two-wave class enough to repay serialization. Do not compact to 16 KiB or retry split launch variants.

## B. Paired-K Step2 A-fragment representations

The archived full dual-A paired-K control is a real but sub-floor optimization: formal mean `-0.9794%`, Step2 218 MT. Three new representations tried to preserve its paired Down panels and single barrier while reducing A live state.

| Trial | Step2 MT | Strict correctness | 1x20 change vs exact v203 | Verdict |
|:--|--:|:--:|--:|:--|
| full late A1 after even MMA | 204 | PASS | `+3.7918%` | A1 latency fully exposed |
| K32 rolling A1 overwrite | 204 | PASS | `+3.2653%` | one MMA group cannot hide refill |
| prefetch half A1, refill half | 212 | PASS | `+0.5690%` | overlap loss exceeds register saving |

Conclusion: the paired-K gain requires complete A0/A1 requests before the paired Down barrier. Reducing live A state destroys more overlap than it saves. Do not combine these variants or stack the archived 0.98% result with another sub-floor probe.

## C. MXCC MMA scheduler bound

Exact-v203 was compiled with the already OJ-valid backend flag `-metaxgpu-sched-mma-maxnum={1,2,4}`. All variants pass the OJ source validator. TileLang generated C++ is byte-identical (`259796a7...`), and all Case1 resources remain Step1 226 MT / Step2 202 MT.

- max=1: strict correctness PASS; `1.993946 -> 1.987021 ms`, `-0.3473%`.
- max=4: strict correctness PASS; `1.989235 -> 1.989875 ms`, `+0.0322%`.
- max=2: codegen/resource only; not timed after the extreme values falsified the 1.2% hypothesis and historical v148 max=2 was noise.

Conclusion: legal backend scheduling changes are at most sub-percent noise on this endpoint. No candidate or submission is created.

## Final decision

All three families are rejected. `dorm`, `restart-submission`, and SOTA metadata remain unchanged. Future Case1 work must introduce a different transport, reuse, or work-allocation mechanism; resource count reductions, post-barrier A refill, and ordinary MMA scheduler bounds are closed.
