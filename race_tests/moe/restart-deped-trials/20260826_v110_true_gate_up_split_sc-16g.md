# v110 true Gate/Up split study (sc-16g)

## Status

- Parent: external-OJ-AC `v110_case1_unpredicated_native_up_logits_sc-16g`
- Parent submission SHA256: `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`
- Scope: normal OJ-compliant TileLang only; no async copy, injection, foreign cache, or result cache
- Decision: **rejected and archived**; no numbered experiment and no `restart-submission`
- Candidate gate: aggregate gain must be at least 1.2%; ultimate goal remains at least 7%

## Question

v110 Step1 simultaneously keeps Gate and Up accumulators alive. Its Case3 kernel uses 226 MT registers per thread, is limited to two resident waves, and accounts for most of end-to-end runtime. This experiment tests whether physically splitting Gate and Up into two GPU kernels can trade one extra launch and one temporary tensor for a much smaller live accumulator set and three resident waves.

This is different from the earlier same-kernel Gate/Up serialization experiments: Gate and Up are separate launches here, so their register allocation is independent.

## Variants

### A. True Gate/Up split

- Case3 only; Cases1/2 retain v110.
- Prepack and Step2 remain unchanged.
- Gate launch computes one FP32 `M128 x N128` accumulator and writes activated Gate values to a separate consumer-native FP16 workspace.
- Up launch computes one FP32 `M128 x N128` accumulator, reads the Gate workspace in its epilogue, and writes the same consumer-native `up_logits` consumed by Step2.
- The original combined Step1 is made compile-time unreachable rather than executed.
- Archived source SHA256: `187d57e1af8ad8670348843a7f5770668540b1ceec2181e2d32e6b2dbf4372e8`
- Evaluation script SHA256: `73bf0fb392800a0a6d265d8ba97da0f6a5060ae0a01aa366c771b889172f3265`

### B. Split plus synchronous weight ping-pong

- Starts from A.
- Each split kernel uses two 16 KiB shared weight buffers.
- The next weight tile is synchronously staged before the current tile's MMA, followed by barriers.
- No async primitive is used.
- Archived source SHA256: `3c8b26f459a8485993a79ab76bdf998edfcb7de161a4db4dc94df26e3d67fd86`
- Evaluation script SHA256: `293b518109f4e514ae942f21f24e4a67e307e0c83c5cdb6f9717543c9f954739`

## Static and resource evidence

Both variants pass the OJ static validator and use zero async-copy sites.

| Kernel | v110 registers / waves | Split A registers / waves | Split B registers / waves |
|---|---:|---:|---:|
| Step1 combined | 226 MT / 2 | replaced | replaced |
| Gate | - | 142 MT, 32 ST / 3 | 146 MT, 36 ST / 3 |
| Up | - | 142 MT, 36 ST / 3 | 146 MT, 40 ST / 3 |
| Step2 | 220 MT, 52 ST / 2 | unchanged | unchanged |

Variant A therefore proves that splitting the live Gate/Up state really can remove register pressure and raise reported occupancy from two to three waves. It does not spill according to the generated resource metadata.

## Correctness

Full Case3 comparison for both A and B:

- maximum absolute difference: `0.001953125`
- mean absolute difference: `6.168e-05`
- strict mismatch count: `0`
- OJ-tolerance mismatch count: `0`

This is a performance rejection, not a correctness rejection.

## ABBA timing

Three independent 20-iteration Case3 repeats were used for each side.

### Variant A

- v110 parent: `[7.5632450, 7.5870399, 7.5707645] ms`
- split candidate: `[8.0589569, 8.0547585, 8.0597633] ms`
- per-pair change: `[+6.5542%, +6.1647%, +6.4590%]`
- median change: **+6.459% regression**
- mean change: **+6.393% regression**

### Variant B

- v110 parent: `[7.5518719, 7.5479233, 7.5578049] ms`
- split plus synchronous ping-pong: `[8.5671040, 8.5614399, 8.5609089] ms`
- per-pair change: `[+13.4434%, +13.4278%, +13.2724%]`
- median change: **+13.428% regression**

## Timeline evidence for Variant A

Trace artifact on the profiling container:

`/root/moe_runs/v110_split_gate_up_trace2/v110_split_gate_up_case3-268739.json`

Across four traced calls:

- prepack: approximately `0.249-0.260 ms`
- Gate: approximately `2.599-2.610 ms`
- Up: approximately `2.588-2.625 ms`
- Step2: approximately `2.570-2.591 ms`

Gate plus Up therefore costs about `5.20 ms`, versus approximately `4.70 ms` for the combined v110 Step1. The extra kernel gap alone is not the dominant loss.

## Conclusion

The register/occupancy hypothesis was only half correct. A true split materially lowers registers and obtains three resident waves, but it also:

1. reads the Step1 input twice;
2. writes and rereads an additional Gate workspace;
3. loses the useful Gate/Up producer interleaving present in v110;
4. adds a launch and synchronization boundary.

Those costs exceed the benefit of the extra resident wave. The synchronous ping-pong derivative is worse because ordinary `T.copy` plus barriers does not provide asynchronous producer/consumer overlap; it adds shared memory, synchronization, and live state.

Actionable boundary: do not pursue separate Gate/Up launches or synchronous double buffering from v110. A future revisit would require a legal mechanism that preserves single-read input sharing and real asynchronous overlap; neither exists under the current normal-track constraints.

No changes are made to v110, `dorm`, or `restart-submission` by this rejected experiment.
