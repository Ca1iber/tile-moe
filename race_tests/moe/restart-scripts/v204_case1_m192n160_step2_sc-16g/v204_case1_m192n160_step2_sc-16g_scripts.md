# v204 reproduction scripts

- `validate_oj_submission.py`: static OJ import/AST contract validator.
- `capture_codegen.py`: standard TileLang codegen capture helper.
- `v204_profile_submission.py`: builds deterministic official-shape tensors and marks one profiled call.
- `v204_case1_profiler_driver.py`: repeatedly launches exact Case1 for mcProfiler.
- `run_v204_case1_mcprofiler.py`: collects Case1 rank/short-input/prepack/Step1/Step2 counters.
- `d212_v197_profile_driver.py`, `d212_v197_torch_profile.py`, `run_d212_v197_profiles.py`: teammate Case2/3 profiling workflow; the upstream `v197` source is byte-identical to canonical v204 after line-ending normalization.
- `inspect_mcbin_metadata.py`, `d211_resource_gate.py`: decode C500 resource metadata and reject private-memory spills.
- `summarize_v204_mctracer.py`: summarize raw trace kernel durations.

Collection machine paths in historical logs intentionally retain their original `v197`/`d212` names. The iteration manifest maps them to v204 explicitly; they must not be renamed inside raw evidence.
