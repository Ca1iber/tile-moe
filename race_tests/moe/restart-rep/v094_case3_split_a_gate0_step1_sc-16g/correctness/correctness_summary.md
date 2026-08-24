# v094 correctness

- Cases 1, 2, and 3: full padded output PASS at `rtol=1e-2`, `atol=1e-2`.
- Source validator plus all three generated-device forbidden-marker gates: PASS.
- No asynchronous-copy or foreign-code marker.
