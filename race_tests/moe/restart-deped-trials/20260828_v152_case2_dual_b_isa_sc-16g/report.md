# v152 Case2 dual-B fragment scheduling closure (sc-16g)

## Hypothesis

The v152 Step1 source consumes each K half in the order

`Gate LDS -> Gate MMA -> Up LDS -> Up MMA`.

Allocate a second local B fragment and request

`Gate LDS -> Up LDS -> Gate MMA -> Up MMA`

so that the Up shared-memory load can overlap Gate MMA latency without adding
global-memory traffic or shared memory.

## Scope and compliance

- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Shape: official Case2 only
- TileLang primitives and the existing inline emitter only
- No async copy, injection, MXMACA builtin, result cache, or cross-run state
- Submission was not updated; this is a rejected research trial

## Correctness and performance

- OJ structure validator: PASS
- Direct Case2 correctness: PASS
- Paired screen: one AB/BA round, warmup 3, repeat 20
- Parent: 3.9281536102 ms
- Candidate: 3.9232513428 ms
- Delta: -0.124798% (faster), below the 1.2% promotion floor and inside noise

## Lowering and ISA evidence

The generated C++ preserves the requested second local fragment and moves the
Up LDS block before Gate MMA.  However, after removing debug directives,
comments, and labels, the parent and candidate Step1 instruction streams are
bit-identical:

- 2,246 instructions in each stream
- normalized instruction SHA256 in both cases:
  `93346d38e711957b8578e9501f9ef506c9675d7bb8175879d8514a4791c40237`
- 256 `mma_16x16x16f16`
- 64 `lds_b128`
- 28 `ldg_b128`
- 16 `sts_b128`
- 4 `barrier`
- 203 `snop`
- 91 `arrive`

Resources are also unchanged for Step1: 226 MT registers, 42 ST registers,
and a static two-wave limit.  There is no spill or new stack frame.

## Conclusion

The backend already schedules the independent Gate/Up B loads as aggressively
as this source-level dual-fragment rewrite permits.  The measured -0.125% is
noise, not a promotable optimization.  Do not repeat this source-level variant.
Any follow-up must change the actual MMA dependency/interleave structure rather
than merely moving the two `ldmatrix_b` calls in TileLang source.
