# Correctness and OJ validation

- OJ source validator: PASS.
- Generated-device validator: PASS for Cases 1, 2 and 3.
- Full valid-row reference comparison: PASS for all three official cases, `rtol=1e-2`, `atol=1e-2`.
- Generated C++ is byte-identical to v110 for every official case; only the supported backend fast-math compile option changes final ISA.
- External OJ verdict: PENDING.
