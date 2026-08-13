# v034 Roofline notes

- `native/v033` and `native/v034` preserve mcProfiler native Roofline output; replay-specific native points do not own the version verdict.
- The common schedule model holds work constant at 103,079,215,104 FLOPs and 1,220,542,464 bytes, AI=84.453608 FLOP/B.
- mcTracer Step2 medians are 1.044480 ms (v033) and 1.006592 ms (v034), giving 98.6895 and 102.4042 TFLOP/s.
- Logical schedule traffic is 1168.56 and 1212.55 GB/s. This is a model, not the mx-smi physical-counter value.
- Under the declared 479.232 TFLOP/s compute roof and either 1400 or 1843.2 GB/s bandwidth sensitivity, both points remain on the memory side. The 460.8 GB/s linear-25%-slice line is retained only as a sensitivity bound, not asserted hardware truth.
