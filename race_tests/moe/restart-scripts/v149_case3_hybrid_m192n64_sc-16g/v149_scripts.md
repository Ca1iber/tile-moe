# v149 scripts

- `run_v110_fullcheck.py`: project-native strict PyTorch-reference correctness plus alternating AB/BA event timing. Used for Case1 3x20, Case2 3x20, and Case3 5x20.
- `validate_oj_submission.py`: static OJ import/structure/async/foreign-code gate for the exact candidate SHA-256.
- `capture_codegen.py`: captures generated device C++, compiler log, resource counts, and structural instruction-site counts.
- `run_v149_hybrid_mcprofiler.sh`: targets `kernel_kernel_1` (short Step1) or `kernel_kernel_3` (long Step1) with the selected mcProfiler counter set.
- `profile_submission.py`: constructs the official case and launches the exact candidate; used as the profiler workload.

All timed preprocessing kernels execute inside every `run_kernel` call. Workspace allocation may be cached, but workspace contents are fully overwritten and never reused as results.
