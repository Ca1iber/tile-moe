# Correctness

All three official cases passed full-output comparison against the PyTorch reference with `rtol=1e-2` and `atol=1e-2`.

The checks are embedded in the corresponding `benchmark/case{1,2,3}_screen.json` runs. The candidate was compiled independently from exact v110 before timing.
