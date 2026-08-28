# v156 Case3 long M192xN256 shared-A — rejected

## Hypothesis

Replace the two 256-thread M192xN128 long-expert CTAs with one 512-thread
M192xN256 CTA. Stage each 192x64 Up tile once in shared memory so two N-warp
groups reuse it, reducing duplicate global Up reads while preserving the same
MMA work and total wave count.

## Change

- Parent v154 SHA:
  `c1bb9f120ecd66c6626e97189c6a073e2c2670462e61b47daa9a454913e43e3d`.
- Candidate SHA:
  `30a6c7c5aea626204ae9022e6dbd0a634bcc2cc253d277baeee6a1c33f21bc04`.
- Long grid: `56x32` M192xN128 / 256 threads became `28x32`
  M192xN256 / 512 threads.
- Shared footprint: 192x64 FP16 Up plus 256x64 FP16 Down = 56 KiB.
- No async copy, injection, direct compiler builtin, or cross-run cache.

## Evidence

- OJ source validator: PASS.
- Full valid-row Case3 correctness: PASS, `rtol=1e-2, atol=1e-2`.
- 1x10 screen: `6.883353 -> 7.822285 ms`, regression `+13.6406%`.
- mcTracer total kernel median sum: `7.813888 ms`.
- Candidate long kernel: `2.157312 ms`, grid `28x32`, 512 threads,
  184 registers/thread, 57,344 B dynamic shared.
- Parent v153/v154 long M192xN128 kernel was about `1.360000 ms`; the wide
  kernel regressed about `58.63%`.
- Codegen reports static maximum `2 waves/PEU` for the 512-thread long kernel.

## Conclusion

Reject. An eight-wave CTA cannot exploit the intended A reuse: 184 registers
per thread and 56 KiB shared leave only two resident waves per PEU, so the CTA
is executed in heavily serialized wave groups. Future designs must preserve
the four-wave 256-thread CTA shape; do not pursue M192xN256 by simply doubling
block-column warps.
