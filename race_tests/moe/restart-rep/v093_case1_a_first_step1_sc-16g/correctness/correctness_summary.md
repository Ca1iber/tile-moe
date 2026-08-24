# v093 correctness summary

Exact candidate SHA-256: `f87f933dd3484a9e7508cea21883d6ab790201939e0781c12bd5d8cbbd1a9247`.

All official Cases 1/2/3 pass full padded-output comparison against the PyTorch reference at `rtol=1e-2`, `atol=1e-2`. The output is prefilled before execution, so untouched padded rows fail rather than being silently accepted.
