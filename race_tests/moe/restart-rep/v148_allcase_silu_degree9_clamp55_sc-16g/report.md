# v148 local qualification report

v148 extends v147's externally AC Case1 SiLU approximation to Cases 2 and 3. It passes all three full-output checks and produces stable local gains: Case1 `-2.484%`, Case2 `-0.648%`, and Case3 `-0.596%` median under five-round 20x50 AB/BA testing.

The experiment is locally qualified because Case1 exceeds the 1.2% candidate threshold and no local case regresses. It is not yet the global SOTA. v110 remains in `restart-submission` until the exact v148 bytes pass the external OJ monotonic gate.

Evidence in this directory:

- `v148_case{1,2,3}_abba5x50.json`: full correctness plus strict paired timings.
- `allcase_deg9_case2_stress.json`: eight route/scale stress variants.
- `allcase_deg9_case3_stress_variant{6,7}.json`: saved high-scale Case3 variants.
- `codegen/`: generated device C++ and compiler resource summaries for all official shapes.
- `mcprofiler_v110_case3/`: fresh native v110 Step1/Step2 profiler JSON used to choose this direction.
- `v148_source_validation.log`: source and generated-code compliance verdict.

The candidate source hash is `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`.
