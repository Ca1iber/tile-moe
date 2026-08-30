# exact-v203 backend scheduler and physical-producer closure (sc-16g)

## Verdict

No candidate reached the mandatory `1.2%` direct-parent promotion floor. All runnable timed probes passed full valid-row correctness at `rtol=atol=1e-2`, but every result regressed. Keep exact v203 as the local external-OJ-pending candidate; do not modify `dorm`, `restart-submission`, or SOTA metadata.

## Identity and rules

- Parent: `v203_case23_parallel_rank_builder_sc-16g`.
- Parent SHA256: `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- Target: MetaX C500 `sc-16g`, official Case2 screen.
- Gate: public synchronous TileLang only; no async copy, foreign source, direct MXMACA builtin, disabled race checker, cached contents, or warmup preprocessing. A probe must improve its direct parent by at least 1.2%; sub-floor changes are not stacked.

## A. MXCC machine-scheduler audit

MXCC 3.7.1 exposes several hidden machine schedulers through `-mllvm -misched=...`. This is distinct from the old v148 `-map-sched-select=map-ml` probe. All source variants pass the OJ source validator.

| Probe | SHA256 | Producer / Step1 / Step2 MT | Case2 change vs v203 | Decision |
|:--|:--|:--|--:|:--|
| `metaxgpu-ilp` | `1389c93145b44b5a37bb16e1f2f9c543be137b3ffe26535fe1cf97ef6a741366` | `74 / 210 / 216` | `+18.3802%` | reject |
| explicit `metaxgpu` | `8c91c2f8c5555f29b56bcdbfd529dcbdd660a89f244247160e3c910945766669` | `72 / 198 / 204` | `+39.0049%` | reject |
| `metaxgpu-maxocc-iter` | `f77241b9478d62a3d1de296faf5f84e94dc248d020e3d7c54ff09be1fcb29498` | `74 / 228 / 220` | `+1.1276%` | reject |
| `metaxgpu-igroup-strategy=1` | archived source | identical to parent | not timed | compiler/resource no-op |
| `listall`, `minreg`, `maxocc` | archived sources/logs | compilation process killed | not timed | backend/compiler-resource unstable |

The default parent resources are producer `74 MT / 48 ST / 6 waves`, Step1 `226 / 46 / 2`, and Step2 `220 / 56 / 2`. Lowering MT registers did not improve occupancy and severely lengthened the endpoint. The default scheduler deliberately spends registers to preserve global-load/MMA latency overlap; register count alone is not an optimization metric. This closes scheduler-family replacement for this source.

The separate `metaxgpu-memory-latency={200,400,800}` family was already closed on v84 with at most `0.114%` signal and was not repeated.

## B. Physical M64 producer thread count

The v203 physical producer uses a 512-thread CTA. Every thread issues two FP16x8 source vectors per M64/N128 phase, while only the first 256 threads write the consumer-native workspace. The probe uses 256 threads and four source vectors per thread, preserving the 16-KiB bridge, bytes, phases, native layout, rank builder, and both GEMM bodies.

- Source SHA256: `dfd30c186be189934c20cf152cad592e87fc6c7a2631c319170d78f918d791e7`.
- OJ source validator: PASS.
- Resources: producer `76 MT / 52 ST / 6 waves`; Step1/Step2 unchanged.
- Case2 1x20: parent `3.435597 ms`, candidate `3.456077 ms`, `+0.5961%` regression.

The 16-KiB bridge does not make smaller CTAs preferable. Eight producer waves issuing requests remain more valuable than giving every thread both read and write duties. Do not sweep 128-thread variants.

## C. Synchronous two-slot phase overlap

The second producer probe allocates two 16-KiB shared slots. Phase 0 is preloaded normally. During each later hand-off, threads 0:256 consume the current slot and write the native workspace while threads 256:512 load the next M64 phase into the other slot using four FP16x8 vectors each. This is synchronous public TileLang wave specialization, not async copy.

- Source SHA256: `dd33163156db985e4d8cfc8ca4a59a63f034a5309928b8657116092e97314720`.
- OJ source validator: PASS.
- Resources: producer `74 MT / 50 ST / 6 waves`; Step1/Step2 unchanged; generated async sites zero.
- Static generated `__syncthreads` sites: `17` versus parent `16` (site count is not dynamic count).
- Case2 1x20: parent `3.444211 ms`, candidate `3.463642 ms`, `+0.5642%` regression.

The backend does not turn the lower/upper-wave roles into useful global-read/global-write overlap. The extra shared footprint and role control dominate. Do not extend this source to Case3 or combine it with the rejected 256-thread probe.

## Reusable conclusion

The remaining producer cost is real but its established optimum depends on 512-thread request concurrency, one 16-KiB bridge, and sequential M64 phases. Rank work, branch removal, phase size, direct global-to-native remap, smaller CTAs, and manual double-buffered wave specialization are now closed. Main-kernel scheduler replacements are also closed: reduced registers without a higher occupancy tier destroy the incumbent latency-hiding schedule.
