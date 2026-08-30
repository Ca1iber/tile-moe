# v203 hypothesis: parallelize the rank builder

## Hypothesis

v202 removed duplicated rank construction from every producer CTA, but its remaining designated CTA still serialized all 32/64 expert classifications through one thread. For Case3 this leaves a dependency chain on the critical producer kernel and only a narrow margin above the 1.2% direct-v166 gate.

Assigning one producer thread to each expert makes the prefix scans concurrent. Each thread writes exactly one unique stable-rank slot, so no atomic operation, disabled race checker, async copy, source injection, compiler builtin, cached contents or cross-call preprocessing is needed.

## Expected evidence

- Full padded-output correctness remains identical.
- Step1 and Step2 code generation/resources remain unchanged.
- Producer register pressure or duration decreases.
- Case2/3 improve over v202 and remain at least 1.2% faster than exact external-OJ-AC v166.

## Result

The hypothesis is supported. Producer resources change from v202's `92 MT / 46 ST / 5 waves` to `74 MT / 48 ST / 6 waves`. Case3 mcTracer producer time falls from `0.228800 ms` to `0.219328 ms` while the two GEMM stages remain effectively unchanged.
