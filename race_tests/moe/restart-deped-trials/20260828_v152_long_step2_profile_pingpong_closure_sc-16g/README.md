# v152 Case3 long-Step2 profile and A-ping-pong closure (sc-16g)

## Identity

- Date: 2026-08-28
- Starting branch / commit: `dorm` / `11b9c8fb`
- Parent: `v152_dynamic_step2_m192n128_sc-16g`
- Parent SHA-256: `ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- Target: MetaX C500 `sc-16g`, official Case3
- Status: profile captured; ping-pong trial rejected below the 1.2% floor

No external-OJ SOTA or `restart-submission` state is changed.

## Parent long-Step2 profile

The profiled symbol is `kernel_kernel_6`, v152's dynamic long-expert
`M192 x N128` Step2 path. The exact workload has 32 long experts with 184 valid
rows each, hidden 7168, and intermediate 2048.

### Dispatch and lifetime

- Workgroups: `1,792` (`56 N tiles x 32 long experts`)
- Waves: `7,168` (4 waves/CTA)
- Average wave life: `42,528.47 cycles`
- Total cycles: `10,266.20 Kcycles`

### Memory evidence

- Profiled global reads: `973,636,512 B`
- Profiled global writes: `117,666,240 B`
- VL1 hit: `86.57%`
- L2 hit: `57.86%`
- DNOC read average latency: `277.79`

The full-precision compulsory read model is:

```text
Down weights = 32 * 7168 * 2048 * 2 = 939,524,096 B
valid up_logits = 32 * 184 * 2048 * 2 = 24,117,248 B
routed weights = 32 * 184 * 4 = 23,552 B
total = 963,664,896 B
```

The profile is only `9,971,616 B` (`1.035%`) above this model. The padded output
write requirement is `32 * 256 * 7168 * 2 = 117,440,512 B`, only `0.192%`
below the profiled write count. Therefore this path already has nearly minimal
FP16 global traffic. A same-size HBM prepack cannot reduce it.

### Pipeline evidence

- AP MMA duty: `55.44%`
- AP MTE duty: `8.70%`
- AP STE duty: `5.96%`
- VLS pipeline stall: `41,737,529 cycles`
- WSM stall: `7,406,775 cycles`
- VLS write-data stall: `1,835,008 cycles`
- mcProfiler-derived bandwidth: `785.19 GB/s`

The profiler Roofline uses the physical-card `1843.2 GB/s` roof and is not a
direct sc-16g guarantee. These counters show exposed global-request latency and
moderate MMA duty, not excess algorithmic bytes.

## Trial: second M192 A fragment

### Hypothesis

The parent performs each K64 phase as `load A + load Down -> sync -> MMA -> sync`.
The candidate pairs K phases and adds `up_long_prefetch`, issuing next A loads
beside the current full-tile Down `T.copy`. Grid, threads, MMA work, global bytes,
shared-B layout, and output semantics remain unchanged. No asynchronous copy is
used.

Predicted result: lower exposed VLS stalls, higher MMA duty, and at least 1.2%
end-to-end Case3 improvement without reducing occupancy.

Falsifier: full-output failure, OJ-source failure, resource cliff, or paired
improvement below 1.2%.

### Exact candidate

- Source: `trial_v152_case3_long_step2_a_pingpong.py`
- SHA-256: `ee8a4cdc2df51d130d8ecac5851d7b1e672e25bd14347195fb07ac97df1abbe5`
- OJ source validator: PASS
- Full padded-output correctness: PASS (`rtol=1e-2`, `atol=1e-2`)
- Async-copy / foreign-code / MXMACA builtin: none

### Paired screen

Protocol: one AB round, warmup 3, repeat 20.

- Parent: `7.0341506958 ms`
- Candidate: `7.0483459473 ms`
- Change: `+0.201805%` (slower/noise)

### Code generation

| Symbol | Parent MT/ST | Candidate MT/ST | Static wave cap |
|---|---:|---:|---:|
| long Step2 `kernel_kernel_6` | `190 / 32` | `218 / 40` | `2 -> 2` |

- Candidate generated source: `68,017 B`
- MMA sites: 14
- `memcpy_async_sites=0`, `barrier_wait_sites=0`
- No spill was reported.

The second A fragment increases live state by 28 MT and 8 ST registers without
raising the static wave cap. The new scheduling does not produce measurable
latency hiding and slightly regresses end-to-end time.

## Decision

Reject and close ordinary two-fragment synchronous A ping-pong for v152's
M192 long-Step2. The parent already overlaps current A and Down requests before
the same barrier; retaining an additional full A fragment only extends register
live ranges. Reordering the same blocking loads cannot remove the global FIFO
backpressure measured by mcProfiler.

Future work on this stage requires one of:

1. a representation with fewer bytes and a conversion/preprocess cost below the
   saved traffic (not true for full per-call FP8 packing under current shapes);
2. a legal non-blocking/BSM primitive exposed through TileLang (not currently
   available under the submission constraints);
3. less mathematical/output work rather than another ordering of the same
   synchronous copies.

## Artifacts

- `mcprofiler/`: complete parent `kernel_kernel_6` counter bundle and reports
- `codegen/`: exact candidate generated C++, compiler log, and resource JSON
- `trial_v152_case3_long_step2_a_pingpong_screen.json`: paired correctness/timing
- `run_v152_mcprofiler.sh`: exact profiler driver
