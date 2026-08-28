# v149 Case3 short/long Step1 hybrid candidate (sc-16g)

Status: **local candidate; external OJ pending; not promoted to `restart-submission/`**.

## Identity

- Parent: `v148_allcase_silu_degree9_clamp55_sc-16g`
- Parent SHA-256: `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`
- Starting remote commit: `622d194b` on `dorm`
- Candidate SHA-256: `b85832d894ce5b53d678e44e7d76448ccdae5069ceaf74e08dce26c004c48702`
- Machine: MetaX C500, 25% compute slice, 16 GiB sGPU (`sc-16g`)
- Candidate source: `v149_case3_hybrid_m192n64_candidate.py`

## Hypothesis card

Observed evidence:

- In official Case3 the first 32 experts have 100 rows and one M128 block; the last 32 have 184 rows and two M128 blocks.
- v148 Step1 uses M128 x N128 for every block, so a long expert computes 256 padded rows and reloads each Gate/Up weight panel for two M blocks.
- A unified M192 x N64 four-wave feasibility probe compiled without spills and was strictly correct, but improved end-to-end latency by only about 0.22% because it also made short experts use the larger row tile.

Verified bottleneck:

- Case3 Step1 performs avoidable long-expert padded MFMA work and repeated Gate/Up panel loads.

Current hypothesis:

- Preserve the mature v148 M128 x N128 path for short experts and use one M192 x N64, four-wave CTA family only for long experts.

Proposed mechanism:

- Short 32 experts: original v148 synchronous input prepack and M128 x N128 Step1.
- Long 32 experts: separate synchronous M192-native input prepack and M192 x N64 Step1 with four waves, each wave owning M48 x N64.
- Step2 and the consumer-native `up_logits` representation remain unchanged.

Predicted metric changes:

- Step1 workgroups remain 1536: `32*1*16 + 32*1*32`.
- Approximate MxN padded work falls 16.67% versus v148.
- Gate/Up panel consumption falls from 96 expert-M panels to 64, a 33.33% logical reduction before cache effects.
- Input prepack rows fall from 12288 to 10240, a 16.67% reduction.
- Two extra kernel launches are introduced and must be covered by the saved Step1 time.

Falsifying result:

- Any strict correctness failure, async/foreign lowering, spill, official-case regression, or Case3 paired improvement below 1.2%.

Correctness/resource risks:

- Native workspace shape mismatch, wrong long-expert offset, overlapping `up_logits` stores, register pressure from M192 accumulators, and launch overhead.

## Local evidence

### OJ/source compliance

- `validate_oj_submission.py`: PASS on the exact candidate source.
- TileLang primitives only; no source injection, foreign calls, async copy, MXMACA builtins, or cached results.

### Correctness and paired timing

The project-native paired checker builds the official deterministic inputs, compares every output against the PyTorch reference with `rtol=1e-2, atol=1e-2`, and alternates AB/BA order.

| Case | Protocol | Parent ms (typical) | Candidate ms (typical) | Median change | Mean change | Verdict |
|---|---:|---:|---:|---:|---:|---|
| 1 | 3x20 | exact JSON | exact JSON | -0.1900% | -0.3492% | strict PASS; no regression |
| 2 | 3x20 | exact JSON | exact JSON | +0.0078% | -0.1124% | strict PASS; noise-equivalent |
| 3 | 5x20 | exact JSON | exact JSON | **-4.1646%** | **-4.1141%** | strict PASS; clears 1.2% floor |

These verdict runs use the exact final candidate SHA-256 shown above. Case3 change samples are `[-4.1646, -4.1955, -4.0122, -4.0313, -4.1669]%`; population standard deviation `0.0764%`.

### Generated-code/resource gate

The Case3 candidate lowers to five kernels:

| Symbol | Role | MT regs | ST regs | Stack | Static warp cap |
|---|---|---:|---:|---:|---:|
| `kernel_kernel` | short input prepack | 78 | 11 | 0 B | 6 |
| `kernel_kernel_1` | short M128xN128 Step1 | 226 | 42 | 0 B | 2 |
| `kernel_kernel_2` | long input prepack | 16 | 22 | 0 B | 8 |
| `kernel_kernel_3` | long M192xN64 Step1 | 206 | 28 | 0 B | 2 |
| `kernel_kernel_4` | unchanged Step2 | 220 | 52 | 0 B | 2 |

- `memcpy_async_sites = 0`
- `barrier_wait_sites = 0`
- `mma_sites = 12`
- No stack frame or spill in any generated kernel.

### Targeted mcProfiler result

The split symbols preserve the parent's aggregate launch geometry exactly:

- short Step1: 512 workgroups / 2048 waves;
- long Step1: 1024 workgroups / 4096 waves;
- combined: 1536 workgroups / 6144 waves, equal to v148.

Compared with the archived v148 Case3 Step1 profile, the two v149 Step1 symbols combined show:

- global reads: `5,252,607,264 -> 4,021,543,680` bytes (**-23.44%**);
- global writes: unchanged at `37,225,088` bytes;
- wave-count-weighted lifetime: `169,105 -> 147,336` cycles (**-12.87%**);
- VLS pipeline stall cycles: `241,391,728 -> 143,190,319` (**-40.68%**);
- AP active cycles: `540,094,935 -> 480,476,057` (**-11.04%**).

The long M192 x N64 symbol itself reports 1024 workgroups, 4096 waves, `2.084 GB` global reads, 135,343 average wave-life cycles, and 62.08% MMA duty. These counter movements support the predicted reduction in repeated Gate/Up traffic and padded work; the end-to-end AB/BA result remains the performance authority.

### mcTracer launch timeline

One traced steady-state Case3 invocation gives the following launch-level cross-check:

| Source | Kernels | Sum kernel time | GPU span | Inter-kernel gaps |
|---|---:|---:|---:|---:|
| v148 parent | 3 | 7.597312 ms | 7.628800 ms | 31.488 us |
| v149 candidate | 5 | 7.277568 ms | 7.311104 ms | 33.536 us |

- Sum kernel time improves by **4.21%**, consistent with the 5x20 Case3 AB/BA result.
- Splitting short and long experts adds two launches, but aggregate launch gaps rise by only `2.048 us`.
- Parent Step1 is `4.738048 ms`; v149 short and long Step1 total `1.825536 + 2.507008 = 4.332544 ms`, a **8.56%** Step1 reduction.
- Step2 remains effectively unchanged (`2.610432 -> 2.594816 ms`, a trace-level difference within the expected run noise).

The launch timeline therefore rules out launch bubbles as the source of the gain: the saved Step1 execution time is much larger than the additional launch overhead.

## Caveats and promotion state

- Case1 compilation emits TileLang's conservative native `up_logits` parallel-write warning. Strict full-output checks pass; the warning is not disabled or suppressed. External OJ remains the authority for final acceptance.
- The candidate clears the local 1.2% floor and is ready for OJ submission, but it is **not** an OJ-verified global SOTA yet. Do not create `restart-submission/v149...` or update `SOTA.json` until all official OJ cases pass without score regression.
- Targeted mcProfiler artifacts, raw Roofline images, and parent/candidate mcTracer traces are stored in the matching report directories. Neither profiler replaces the paired timing verdict.
