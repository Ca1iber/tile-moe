# v105 correctness summary

- OJ source and three generated-device scans: PASS.
- Case3 full padded output: PASS against PyTorch reference, `rtol=atol=1e-2`.
- Every K pair is accumulated exactly once; only odd N-tile accumulation order changes.
- Cases1/2 generated sources are byte-identical to v102.
- No async copy, injection, forbidden import, or private allocation.
