# v016 evidence report

Status: rejected after strict revalidation; current best unchanged.

## Measured facts

- Correctness: all screen and strict OJ samples passed, max absolute error `0.001953125`.
- Strict protocol: three fresh-process pairs, alternating AB/BA/AB, warmup 10, repeat 100, cases 2 and 3.
- Case 2: v013 median `5.414287 ms`; v012d median `5.440532 ms`; paired median change `+0.503%`.
- Case 3: v013 median `10.625918 ms`; v012d median `10.737848 ms`; paired median change `+1.053%`.
- Paired case-3 mcTracer: Step2 median change `+3.172%`; Step1 median drift `+0.510%`; device-span median change `+1.248%`.
- MXCC Step2: v013 `196 MT / 28 ST / 2 waves`; v012d `190 MT / 28 ST / 2 waves`; both use 32 KiB dynamic shared memory and zero tracer private memory.
- Generated C++: v013 has zero async/wait sites; v012d has four async-copy and three barrier-wait sites. Both have six textual `__syncthreads()` sites.
- Final Step2 ISA: v013 has 3 static barriers; v012d has 6. Both have zero private loads/stores and zero spill annotations.

## mcProfiler interpretation boundary

The targeted replay supplies a useful directional warning but invalid absolute utilization values for the async path: MTE duty is reported as `215.91%`, and dispatched waves exceed achieved waves by roughly 28.7x. Those values are internally inconsistent, so global-byte and duty ratios are not used as bandwidth claims.

The counters that agree with the source/ISA structure show average wave lifetime rising from `4,936.03` to `35,956.32` cycles, VLS pipeline stall rising about `8.65%`, and VLS write-data stall rising about `1099.65%`, while MMA duty remains essentially flat (`24.82%` to `24.73%`). This is consistent with extra synchronization and an ineffective overlap window, but the paired OJ and mcTracer measurements—not replay totals—are the performance authority.

## Causal conclusion

v012d issues real async transfers and slightly lowers register use, but does not cross an occupancy boundary. The same CTA still waits at explicit barrier/full-CTA rendezvous and reuses a single A shared buffer. Consequently the async machinery lengthens Step2 instead of overlapping enough latency to pay for its scheduling and synchronization cost. The prior long-case gain was dominated by the accumulator split that v013 already absorbed.

## Decision

Reject v012d against v013, do not implement shape dispatch, and leave `custom_fusedmoe.py` byte-identical at SHA-256 `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
