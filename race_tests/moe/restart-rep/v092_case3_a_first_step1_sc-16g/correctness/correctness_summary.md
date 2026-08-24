# v092 correctness summary

Exact candidate SHA-256: `8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483`.

All official Cases 1/2/3 passed the full padded-output comparison against the PyTorch reference under `rtol=1e-2`, `atol=1e-2`. The output buffer was prefilled before execution, so untouched padded rows would fail the check.
